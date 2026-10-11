package java.backport.function;

import java.backport.function.LongPredicate;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface LongPredicate {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$and$0(LongPredicate longPredicate, long j) {
        return test(j) && longPredicate.test(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$negate$1(long j) {
        return !test(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$or$2(LongPredicate longPredicate, long j) {
        return test(j) || longPredicate.test(j);
    }

    default LongPredicate and(final LongPredicate longPredicate) {
        Objects.requireNonNull(longPredicate);
        return new LongPredicate() { // from class: com.sunia.HTREnginev2.h5j
            @Override // java.backport.function.LongPredicate
            public final boolean test(long j) {
                boolean lambda$and$0;
                lambda$and$0 = LongPredicate.this.lambda$and$0(longPredicate, j);
                return lambda$and$0;
            }
        };
    }

    default LongPredicate negate() {
        return new LongPredicate() { // from class: com.sunia.HTREnginev2.i5j
            @Override // java.backport.function.LongPredicate
            public final boolean test(long j) {
                boolean lambda$negate$1;
                lambda$negate$1 = LongPredicate.this.lambda$negate$1(j);
                return lambda$negate$1;
            }
        };
    }

    /* renamed from: or */
    default LongPredicate m61431or(final LongPredicate longPredicate) {
        Objects.requireNonNull(longPredicate);
        return new LongPredicate() { // from class: com.sunia.HTREnginev2.g5j
            @Override // java.backport.function.LongPredicate
            public final boolean test(long j) {
                boolean lambda$or$2;
                lambda$or$2 = LongPredicate.this.lambda$or$2(longPredicate, j);
                return lambda$or$2;
            }
        };
    }

    boolean test(long j);
}
