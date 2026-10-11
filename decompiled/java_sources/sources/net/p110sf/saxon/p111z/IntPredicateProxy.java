package net.p110sf.saxon.p111z;

import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntPredicateProxy;

/* loaded from: classes11.dex */
public interface IntPredicateProxy extends IntPredicate {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /* synthetic */ default boolean m64717a(IntPredicateProxy intPredicateProxy, int i) {
        return test(i) || intPredicateProxy.test(i);
    }

    @Override // java.util.function.IntPredicate
    boolean test(int i);

    default IntPredicateProxy union(final IntPredicateProxy intPredicateProxy) {
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.smi
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m64717a;
                m64717a = IntPredicateProxy.this.m64717a(intPredicateProxy, i);
                return m64717a;
            }
        });
    }
}
