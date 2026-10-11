package java.backport.function;

import java.backport.function.DoubleUnaryOperator;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface DoubleUnaryOperator {
    static DoubleUnaryOperator identity() {
        return new DoubleUnaryOperator() { // from class: com.sunia.HTREnginev2.rff
            @Override // java.backport.function.DoubleUnaryOperator
            public final double applyAsDouble(double d) {
                double lambda$identity$2;
                lambda$identity$2 = DoubleUnaryOperator.lambda$identity$2(d);
                return lambda$identity$2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default double lambda$andThen$1(DoubleUnaryOperator doubleUnaryOperator, double d) {
        return doubleUnaryOperator.applyAsDouble(applyAsDouble(d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default double lambda$compose$0(DoubleUnaryOperator doubleUnaryOperator, double d) {
        return applyAsDouble(doubleUnaryOperator.applyAsDouble(d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ double lambda$identity$2(double d) {
        return d;
    }

    default DoubleUnaryOperator andThen(final DoubleUnaryOperator doubleUnaryOperator) {
        Objects.requireNonNull(doubleUnaryOperator);
        return new DoubleUnaryOperator() { // from class: com.sunia.HTREnginev2.pff
            @Override // java.backport.function.DoubleUnaryOperator
            public final double applyAsDouble(double d) {
                double lambda$andThen$1;
                lambda$andThen$1 = DoubleUnaryOperator.this.lambda$andThen$1(doubleUnaryOperator, d);
                return lambda$andThen$1;
            }
        };
    }

    double applyAsDouble(double d);

    default DoubleUnaryOperator compose(final DoubleUnaryOperator doubleUnaryOperator) {
        Objects.requireNonNull(doubleUnaryOperator);
        return new DoubleUnaryOperator() { // from class: com.sunia.HTREnginev2.qff
            @Override // java.backport.function.DoubleUnaryOperator
            public final double applyAsDouble(double d) {
                double lambda$compose$0;
                lambda$compose$0 = DoubleUnaryOperator.this.lambda$compose$0(doubleUnaryOperator, d);
                return lambda$compose$0;
            }
        };
    }
}
