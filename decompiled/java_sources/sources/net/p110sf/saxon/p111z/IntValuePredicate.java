package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntValuePredicate implements IntPredicateProxy {

    /* renamed from: a */
    public final int f103067a;

    public IntValuePredicate(int i) {
        this.f103067a = i;
    }

    public int getTarget() {
        return this.f103067a;
    }

    @Override // net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return i == this.f103067a;
    }
}
