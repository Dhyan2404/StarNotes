package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntUnionPredicate implements IntPredicateProxy {

    /* renamed from: a */
    public final IntPredicateProxy f103064a;

    /* renamed from: b */
    public final IntPredicateProxy f103065b;

    public IntUnionPredicate(IntPredicateProxy intPredicateProxy, IntPredicateProxy intPredicateProxy2) {
        this.f103064a = intPredicateProxy;
        this.f103065b = intPredicateProxy2;
    }

    public static IntPredicateProxy makeUnion(IntPredicateProxy intPredicateProxy, IntPredicateProxy intPredicateProxy2) {
        return new IntUnionPredicate(intPredicateProxy, intPredicateProxy2);
    }

    public IntPredicateProxy[] getOperands() {
        return new IntPredicateProxy[]{this.f103064a, this.f103065b};
    }

    @Override // net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return this.f103064a.test(i) || this.f103065b.test(i);
    }

    public String toString() {
        return this.f103064a.toString() + "||" + this.f103065b.toString();
    }
}
