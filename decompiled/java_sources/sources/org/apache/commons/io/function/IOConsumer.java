package org.apache.commons.io.function;

import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.Objects;
import org.apache.commons.io.function.IOConsumer;

@FunctionalInterface
/* loaded from: classes12.dex */
public interface IOConsumer<T> {
    public static final IOConsumer<?> NOOP_IO_CONSUMER = new IOConsumer() { // from class: com.sunia.HTREnginev2.wci
        @Override // org.apache.commons.io.function.IOConsumer
        public final void accept(Object obj) {
            IOConsumer.lambda$static$0(obj);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$1(IOConsumer iOConsumer, Object obj) throws IOException {
        accept(obj);
        iOConsumer.accept(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ void lambda$static$0(Object obj) throws IOException {
    }

    static <T> IOConsumer<T> noop() {
        return (IOConsumer<T>) NOOP_IO_CONSUMER;
    }

    void accept(T t) throws IOException;

    default IOConsumer<T> andThen(final IOConsumer<? super T> iOConsumer) {
        Objects.requireNonNull(iOConsumer, gon.f71277d0);
        return new IOConsumer() { // from class: com.sunia.HTREnginev2.uci
            @Override // org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOConsumer.this.lambda$andThen$1(iOConsumer, obj);
            }
        };
    }
}
