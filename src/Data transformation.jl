using Distributions, HypothesisTests, Random, Statistics, DataFrames, VegaLite

var_unif = rand(Uniform(10, 20), 100);

df = DataFrame(Uniform = var_unif);

df[1:3, :]

df |> @vlplot(:bar, x={:Uniform, bin=true}, y="count()")

pvalue(ExactOneSampleKSTest(var_unif, Normal(mean(var_unif), std(var_unif))))

var_normal = rand(Normal(10, 2), 100);

df[!, "Normal"] = var_normal;

df |> @vlplot(:bar, x={:Normal, bin=true}, y="count()")

ExactOneSampleKSTest(var_normal, Normal(mean(var_normal), std(var_normal)))

multi_unif = rand(Uniform(10, 20), (100,1000));

ks_unif = [pvalue(ExactOneSampleKSTest(multi_unif[:, i], Normal(mean(multi_unif[:, i]), std(multi_unif[:, i])))) for i in 1:1000];

ks_df = DataFrame(pUniform = ks_unif)

ks_df |> @vlplot(:bar, x={:pUniform, bin=true}, y="count()")

ExactOneSampleKSTest(ks_unif, Normal(mean(ks_unif), std(ks_unif)))