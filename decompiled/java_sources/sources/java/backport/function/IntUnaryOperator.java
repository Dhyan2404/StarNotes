package java.backport.function;

import java.backport.function.IntUnaryOperator;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface IntUnaryOperator {
    static IntUnaryOperator identity() {
        return new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.xmi
            @Override // java.backport.function.IntUnaryOperator
            public final int applyAsInt(int i) {
                int lambda$identity$2;
                lambda$identity$2 = IntUnaryOperator.lambda$identity$2(i);
                return lambda$identity$2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default int lambda$andThen$1(IntUnaryOperator intUnaryOperator, int i) {
        return intUnaryOperator.applyAsInt(applyAsInt(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default int lambda$compose$0(IntUnaryOperator intUnaryOperator, int i) {
        return applyAsInt(intUnaryOperator.applyAsInt(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ int lambda$identity$2(int i) {
        return i;
    }

    default IntUnaryOperator andThen(final IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.ymi
            @Override // java.backport.function.IntUnaryOperator
            public final int applyAsInt(int i) {
                int lambda$andThen$1;
                lambda$andThen$1 = IntUnaryOperator.this.lambda$andThen$1(intUnaryOperator, i);
                return lambda$andThen$1;
            }
        };
    }

    int applyAsInt(int i);

    default IntUnaryOperator compose(final IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.wmi
            @Override // java.backport.function.IntUnaryOperator
            public final int applyAsInt(int i) {
                int lambda$compose$0;
                lambda$compose$0 = IntUnaryOperator.this.lambda$compose$0(intUnaryOperator, i);
                return lambda$compose$0;
            }
        };
    }
}
