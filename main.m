iter_time = 10000;

% Box_Muller
tic
bm_result = zeros(1, iter_time);
for i = 1:iter_time
    bm_result(i) = Box_Muller();
end
toc


% Marsaglia_Bray
mb_result = zeros(1, iter_time);
tic
for i = 1:iter_time
    mb_result(i) = Marsaglia_Bray();
end
toc

% Beasley-Springer-Moro
bsm_result = zeros(1, iter_time);
for i = 1:iter_time
    bsm_result(i) = Beasley_Springer_Moro();
end
toc

% Hasting
tic
h_result = zeros(1, iter_time);
for i = 1:iter_time
    h_result(i) = hasting();
end
toc

% Marsaglia
tic
m_result = zeros(1, iter_time);
for i = 1:iter_time
    m_result(i) = marsaglia();
end
toc

% My Method
tic
my_result = zeros(1, iter_time);
for i = 1:iter_time
    my_result(i) = my_method();
end
toc

% Benchmark
tic
benchmark_result = zeros(1, iter_time);
for i = 1:iter_time
    benchmark_result(i) = normrnd(0, 1);
end
toc

bm_kurtosis = kurtosis(bm_result)
mb_kurtosis = kurtosis(mb_result)
bsm_kurtosis = kurtosis(bsm_result)
h_kurtosis = kurtosis(h_result)
m_kurtosis = kurtosis(m_result)
my_kurtosis = kurtosis(my_result)
benchmark_kurtosis = kurtosis(benchmark_result)

bm_skewness = skewness(bm_result)
mb_skewness = skewness(mb_result)
bsm_skewness = skewness(bsm_result)
h_skewness = skewness(h_result)
m_skewness = skewness(m_result)
my_skewness = skewness(my_result)
benchmark_skewness = skewness(benchmark_result)

[bm_h, bm_p, bm_KSSTAT, bm_cv] = kstest(bm_result)
[mb_h, mb_p, mb_KSSTAT, mb_cv] = kstest(mb_result)
[bsm_h, bsm_p, bsm_KSSTAT, bsm_cv] = kstest(bsm_result)
[h_h, h_p, h_KSSTAT, h_cv] = kstest(h_result)
[m_h, m_p, m_KSSTAT, m_cv] = kstest(m_result)
[my_h, my_p, my_KSSTAT, my_cv] = kstest(my_result)
[benchmark_h, benchmark_p, benchmark_KSSTAT, benchmark_cv] = kstest(benchmark_result)
