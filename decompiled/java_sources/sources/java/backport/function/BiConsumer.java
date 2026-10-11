package java.backport.function;

import java.backport.function.BiConsumer;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface BiConsumer<T, U> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$0(BiConsumer biConsumer, Object obj, Object obj2) {
        accept(obj, obj2);
        biConsumer.accept(obj, obj2);
    }

    void accept(T t, U u);

    default BiConsumer<T, U> andThen(final BiConsumer<? super T, ? super U> biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new BiConsumer() { // from class: com.sunia.HTREnginev2.iq
            @Override // java.backport.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.lambda$andThen$0(biConsumer, obj, obj2);
            }
        };
    }
}
