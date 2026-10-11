package net.p110sf.saxon.p111z;

import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntSetPredicate;

/* loaded from: classes11.dex */
public class IntSetPredicate implements IntPredicateProxy {

    /* renamed from: a */
    public final IntSet f103036a;
    public static final IntPredicateProxy ALWAYS_TRUE = IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.umi
        @Override // java.util.function.IntPredicate
        public final boolean test(int i) {
            boolean m64727e;
            m64727e = IntSetPredicate.m64727e(i);
            return m64727e;
        }
    });
    public static final IntPredicateProxy ALWAYS_FALSE = IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.vmi
        @Override // java.util.function.IntPredicate
        public final boolean test(int i) {
            boolean m64728f;
            m64728f = IntSetPredicate.m64728f(i);
            return m64728f;
        }
    });

    public IntSetPredicate(IntSet intSet) {
        intSet.getClass();
        this.f103036a = intSet;
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m64727e(int i) {
        return true;
    }

    /* renamed from: f */
    public static /* synthetic */ boolean m64728f(int i) {
        return false;
    }

    public IntSet getIntSet() {
        return this.f103036a;
    }

    @Override // net.p110sf.saxon.p111z.IntPredicateProxy, java.util.function.IntPredicate
    public boolean test(int i) {
        return this.f103036a.contains(i);
    }

    public String toString() {
        return "in {" + this.f103036a + "}";
    }
}
