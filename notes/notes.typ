#import "card.typ": conf

#let content = [

1. 二项分布 $B(n, p)$

$p(x) = C_n^x p^x q^(n-x)$

$g_n(z) = (p z + q)^n$

$E(X) = n p$

$V(X) = n p q$

2. 负二项分布 $Q(r, p)$，指为了得到第 r 次成功所需的试验次数 X。

$p(x) = C_(x-1)^(r-1) p^r q^(x-r)$

$E(X) = r / p$

$V(X) = (r q) / p^2$

3. 负二项分布 $Q'(r, p)$，指为了得到第 r 次成功之前所需的失败次数 X。

$p(x) = C_(x+r-1)^(r-1) p^r q^x$

$E(X) = (r q) / p$

$V(X) = (r q) / p^2$

3. 几何分布 $G(p)$, 指为了得到第一次成功所需的试验次数 X。

$p(x) = p q^(x-1)$

$g_p(z) = p z + q$

$E(X) = 1 / p$

$V(X) = (1 - p) / p^2$

4. 超几何分布 $H(M, N, k)$，指从 N 个物品中取出 k 个物品，其中有 M 个是合格品，X 表示取出的合格品的数量。

$p(x) = (C_M^x C_(N-M)^(k-x)) / C_N^k$

$E(X) = (k M) / N$

$V(X) = (k M (N - M) (N - k)) / (N^2 (N - 1))$

5. 泊松分布 $P(λ)$，指在单位时间内随机事件发生的次数 X。

$p(x) = (e^(-λ) λ^x) / x!$

$g_lambda(z) = e^(lambda (z - 1))$

$E(X) = λ$

$V(X) = λ$

6. 多项分布 $M(n; x_i; p_i)$，指在 n 次试验中，事件 A_i 发生的次数 X_i。

$p(x) = C_n^(x_1) C_(n-x_1)^(x_2) ... C_(n-x_1-x_2-...-x_i)^(x_i) p_1^x_1 p_2^x_2 ... p_i^x_i$

$E(X_i) = n p_i$

$V(X_i) = n p_i (1 - p_i)$

$"Cov"(X_i, X_j) = -n p_i p_j$

7. 二项式定理

$(a + b)^n = Σ_(k=0)^n C_n^k a^(n-k) b^k$

8. 可重复的组合数：$C_(n - 1 + r)^r$、可重复的排列数：$A_n^r = n^r$

9. 切比雪夫不等式

$P(|X - E(X)| >= k) <= sigma^2 / k^2$

$P(|X - E(X)| >= t sigma) <= 1 / t^2$

10. 期望和方差的性质

$"Var"(X + Y) = "Var"(X) + "Var"(Y) + 2"Cov"(X, Y)$

$"Cov"(X, Y) = E[X Y] - E[X] E[Y]$

]

#show: doc => conf(content)
