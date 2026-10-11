package java.backport.function;

import java.backport.function.Consumer;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface Consumer<T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$0(Consumer consumer, Object obj) {
        accept(obj);
        consumer.accept(obj);
    }

    void accept(T t);

    default Consumer<T> andThen(final Consumer<? super T> consumer) {
        Objects.requireNonNull(consumer);
        return new Consumer() { // from class: com.sunia.HTREnginev2.kae
            @Override // java.backport.function.Consumer
            public final void accept(Object obj) {
                Consumer.this.lambda$andThen$0(consumer, obj);
            }
        };
    }
}
