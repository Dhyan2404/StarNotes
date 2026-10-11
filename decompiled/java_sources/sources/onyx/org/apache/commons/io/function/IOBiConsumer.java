package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.bae;
import java.io.IOException;
import java.util.Objects;
import java.util.function.BiConsumer;
import onyx.org.apache.commons.io.function.IOBiConsumer;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOBiConsumer<T, U> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    /* synthetic */ default void m65276c(IOBiConsumer iOBiConsumer, Object obj, Object obj2) throws IOException {
        accept(obj, obj2);
        iOBiConsumer.accept(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    /* synthetic */ default void m65277d(Object obj, Object obj2) {
        Uncheck.accept(this, obj, obj2);
    }

    static <T, U> IOBiConsumer<T, U> noop() {
        return bae.f65575a;
    }

    void accept(T t, U u) throws IOException;

    default IOBiConsumer<T, U> andThen(final IOBiConsumer<? super T, ? super U> iOBiConsumer) {
        Objects.requireNonNull(iOBiConsumer);
        return new IOBiConsumer() { // from class: com.sunia.HTREnginev2.lci
            @Override // onyx.org.apache.commons.io.function.IOBiConsumer
            public final void accept(Object obj, Object obj2) {
                IOBiConsumer.this.m65276c(iOBiConsumer, obj, obj2);
            }
        };
    }

    default BiConsumer<T, U> asBiConsumer() {
        return new BiConsumer() { // from class: com.sunia.HTREnginev2.kci
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                IOBiConsumer.this.m65277d(obj, obj2);
            }
        };
    }
}
