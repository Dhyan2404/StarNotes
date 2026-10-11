package net.p110sf.saxon.p111z;

import java.util.function.IntPredicate;

/* loaded from: classes11.dex */
public class IntPredicateLambda implements IntPredicateProxy {

    /* renamed from: a */
    public IntPredicate f103019a;

    public IntPredicateLambda(IntPredicate intPredicate) {
        this.f103019a = intPredicate;
    }

    /* renamed from: of */
    public static IntPredicateProxy m64716of(IntPredicate intPredicate) {
        return new IntPredicateLambda(intPredicate);
    }

    @Override // net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return this.f103019a.test(i);
    }
}
