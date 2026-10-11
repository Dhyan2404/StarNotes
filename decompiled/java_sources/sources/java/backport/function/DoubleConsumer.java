package java.backport.function;

import java.backport.function.DoubleConsumer;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface DoubleConsumer {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$andThen$0(DoubleConsumer doubleConsumer, double d) {
        accept(d);
        doubleConsumer.accept(d);
    }

    void accept(double d);

    default DoubleConsumer andThen(final DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new DoubleConsumer() { // from class: com.sunia.HTREnginev2.iff
            @Override // java.backport.function.DoubleConsumer
            public final void accept(double d) {
                DoubleConsumer.this.lambda$andThen$0(doubleConsumer, d);
            }
        };
    }
}
