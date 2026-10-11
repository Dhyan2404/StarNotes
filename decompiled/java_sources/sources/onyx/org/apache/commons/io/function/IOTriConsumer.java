package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.bae;
import java.io.IOException;
import java.util.Objects;
import onyx.org.apache.commons.io.function.IOTriConsumer;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOTriConsumer<T, U, V> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /* synthetic */ default void m65385a(IOTriConsumer iOTriConsumer, Object obj, Object obj2, Object obj3) throws IOException {
        accept(obj, obj2, obj3);
        iOTriConsumer.accept(obj, obj2, obj3);
    }

    static <T, U, V> IOTriConsumer<T, U, V> noop() {
        return bae.f65581g;
    }

    void accept(T t, U u, V v) throws IOException;

    default IOTriConsumer<T, U, V> andThen(final IOTriConsumer<? super T, ? super U, ? super V> iOTriConsumer) {
        Objects.requireNonNull(iOTriConsumer);
        return new IOTriConsumer() { // from class: com.sunia.HTREnginev2.hfi
            @Override // onyx.org.apache.commons.io.function.IOTriConsumer
            public final void accept(Object obj, Object obj2, Object obj3) {
                IOTriConsumer.this.m65385a(iOTriConsumer, obj, obj2, obj3);
            }
        };
    }
}
