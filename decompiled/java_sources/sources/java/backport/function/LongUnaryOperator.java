package java.backport.function;

import java.backport.function.LongUnaryOperator;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface LongUnaryOperator {
    static LongUnaryOperator identity() {
        return new LongUnaryOperator() { // from class: com.sunia.HTREnginev2.o5j
            @Override // java.backport.function.LongUnaryOperator
            public final long applyAsLong(long j) {
                long lambda$identity$2;
                lambda$identity$2 = LongUnaryOperator.lambda$identity$2(j);
                return lambda$identity$2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default long lambda$andThen$1(LongUnaryOperator longUnaryOperator, long j) {
        return longUnaryOperator.applyAsLong(applyAsLong(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default long lambda$compose$0(LongUnaryOperator longUnaryOperator, long j) {
        return applyAsLong(longUnaryOperator.applyAsLong(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ long lambda$identity$2(long j) {
        return j;
    }

    default LongUnaryOperator andThen(final LongUnaryOperator longUnaryOperator) {
        Objects.requireNonNull(longUnaryOperator);
        return new LongUnaryOperator() { // from class: com.sunia.HTREnginev2.n5j
            @Override // java.backport.function.LongUnaryOperator
            public final long applyAsLong(long j) {
                long lambda$andThen$1;
                lambda$andThen$1 = LongUnaryOperator.this.lambda$andThen$1(longUnaryOperator, j);
                return lambda$andThen$1;
            }
        };
    }

    long applyAsLong(long j);

    default LongUnaryOperator compose(final LongUnaryOperator longUnaryOperator) {
        Objects.requireNonNull(longUnaryOperator);
        return new LongUnaryOperator() { // from class: com.sunia.HTREnginev2.m5j
            @Override // java.backport.function.LongUnaryOperator
            public final long applyAsLong(long j) {
                long lambda$compose$0;
                lambda$compose$0 = LongUnaryOperator.this.lambda$compose$0(longUnaryOperator, j);
                return lambda$compose$0;
            }
        };
    }
}
