package java.backport.function;

import java.backport.function.IntPredicate;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface IntPredicate {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$and$0(IntPredicate intPredicate, int i) {
        return test(i) && intPredicate.test(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$negate$1(int i) {
        return !test(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$or$2(IntPredicate intPredicate, int i) {
        return test(i) || intPredicate.test(i);
    }

    default IntPredicate and(final IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        return new IntPredicate() { // from class: com.sunia.HTREnginev2.pmi
            @Override // java.backport.function.IntPredicate
            public final boolean test(int i) {
                boolean lambda$and$0;
                lambda$and$0 = IntPredicate.this.lambda$and$0(intPredicate, i);
                return lambda$and$0;
            }
        };
    }

    default IntPredicate negate() {
        return new IntPredicate() { // from class: com.sunia.HTREnginev2.qmi
            @Override // java.backport.function.IntPredicate
            public final boolean test(int i) {
                boolean lambda$negate$1;
                lambda$negate$1 = IntPredicate.this.lambda$negate$1(i);
                return lambda$negate$1;
            }
        };
    }

    /* renamed from: or */
    default IntPredicate m61423or(final IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        return new IntPredicate() { // from class: com.sunia.HTREnginev2.rmi
            @Override // java.backport.function.IntPredicate
            public final boolean test(int i) {
                boolean lambda$or$2;
                lambda$or$2 = IntPredicate.this.lambda$or$2(intPredicate, i);
                return lambda$or$2;
            }
        };
    }

    boolean test(int i);
}
