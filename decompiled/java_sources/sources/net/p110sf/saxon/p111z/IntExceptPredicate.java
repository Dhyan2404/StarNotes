package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntExceptPredicate implements IntPredicateProxy {

    /* renamed from: a */
    public final IntPredicateProxy f102987a;

    /* renamed from: b */
    public final IntPredicateProxy f102988b;

    public IntExceptPredicate(IntPredicateProxy intPredicateProxy, IntPredicateProxy intPredicateProxy2) {
        this.f102987a = intPredicateProxy;
        this.f102988b = intPredicateProxy2;
    }

    public static IntPredicateProxy makeDifference(IntPredicateProxy intPredicateProxy, IntPredicateProxy intPredicateProxy2) {
        return new IntExceptPredicate(intPredicateProxy, intPredicateProxy2);
    }

    public IntPredicateProxy[] getOperands() {
        return new IntPredicateProxy[]{this.f102987a, this.f102988b};
    }

    @Override // net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return this.f102987a.test(i) && !this.f102988b.test(i);
    }
}
