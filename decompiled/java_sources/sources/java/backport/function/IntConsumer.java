package java.backport.function;

import java.backport.function.IntConsumer;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface IntConsumer {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$andThen$0(IntConsumer intConsumer, int i) {
        accept(i);
        intConsumer.accept(i);
    }

    void accept(int i);

    default IntConsumer andThen(final IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new IntConsumer() { // from class: com.sunia.HTREnginev2.nmi
            @Override // java.backport.function.IntConsumer
            public final void accept(int i) {
                IntConsumer.this.lambda$andThen$0(intConsumer, i);
            }
        };
    }
}
