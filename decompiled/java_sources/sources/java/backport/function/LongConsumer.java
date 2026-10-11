package java.backport.function;

import java.backport.function.LongConsumer;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface LongConsumer {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$andThen$0(LongConsumer longConsumer, long j) {
        accept(j);
        longConsumer.accept(j);
    }

    void accept(long j);

    default LongConsumer andThen(final LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new LongConsumer() { // from class: com.sunia.HTREnginev2.f5j
            @Override // java.backport.function.LongConsumer
            public final void accept(long j) {
                LongConsumer.this.lambda$andThen$0(longConsumer, j);
            }
        };
    }
}
