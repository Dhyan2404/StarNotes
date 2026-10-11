package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntIntersectionPredicate implements IntPredicateProxy {

    /* renamed from: a */
    public final IntPredicateProxy f103017a;

    /* renamed from: b */
    public final IntPredicateProxy f103018b;

    public IntIntersectionPredicate(IntPredicateProxy intPredicateProxy, IntPredicateProxy intPredicateProxy2) {
        this.f103017a = intPredicateProxy;
        this.f103018b = intPredicateProxy2;
    }

    public static IntPredicateProxy makeIntersection(IntPredicateProxy intPredicateProxy, IntPredicateProxy intPredicateProxy2) {
        return new IntIntersectionPredicate(intPredicateProxy, intPredicateProxy2);
    }

    public IntPredicateProxy[] getOperands() {
        return new IntPredicateProxy[]{this.f103017a, this.f103018b};
    }

    @Override // net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return this.f103017a.test(i) && this.f103018b.test(i);
    }

    public String toString() {
        return this.f103017a.toString() + "||" + this.f103018b.toString();
    }
}
