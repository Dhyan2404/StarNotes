package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.ffi;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.yci;
import java.io.IOException;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.IOExceptionList;
import onyx.org.apache.commons.io.function.IOConsumer;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOConsumer<T> {
    public static final IOConsumer<?> NOOP_IO_CONSUMER = new IOConsumer() { // from class: com.sunia.HTREnginev2.xci
        @Override // onyx.org.apache.commons.io.function.IOConsumer
        public final void accept(Object obj) {
            IOConsumer.lambda$static$0(obj);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    /* synthetic */ default void m65291b(Object obj) {
        Uncheck.accept(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    /* synthetic */ default void m65293d(IOConsumer iOConsumer, Object obj) throws IOException {
        accept(obj);
        iOConsumer.accept(obj);
    }

    static <T> void forAll(IOConsumer<T> iOConsumer, Iterable<T> iterable) throws IOExceptionList {
        ffi.m54099c(ffi.m54104h(iterable), iOConsumer);
    }

    static <T> void forEach(Iterable<T> iterable, IOConsumer<T> iOConsumer) throws IOException {
        ffi.m54101e(ffi.m54104h(iterable), iOConsumer);
    }

    static /* synthetic */ void lambda$static$0(Object obj) throws IOException {
    }

    static <T> IOConsumer<T> noop() {
        return (IOConsumer<T>) NOOP_IO_CONSUMER;
    }

    void accept(T t) throws IOException;

    default IOConsumer<T> andThen(final IOConsumer<? super T> iOConsumer) {
        Objects.requireNonNull(iOConsumer, gon.f71277d0);
        return new IOConsumer() { // from class: com.sunia.HTREnginev2.zci
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOConsumer.this.m65293d(iOConsumer, obj);
            }
        };
    }

    default Consumer<T> asConsumer() {
        return new Consumer() { // from class: com.sunia.HTREnginev2.vci
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                IOConsumer.this.m65291b(obj);
            }
        };
    }

    static <T> void forAll(IOConsumer<T> iOConsumer, Stream<T> stream) throws IOExceptionList {
        ffi.m54100d(stream, iOConsumer, new yci());
    }

    static <T> void forEach(Stream<T> stream, IOConsumer<T> iOConsumer) throws IOException {
        ffi.m54101e(stream, iOConsumer);
    }

    @SafeVarargs
    static <T> void forAll(IOConsumer<T> iOConsumer, T... tArr) throws IOExceptionList {
        ffi.m54099c(ffi.m54106j(tArr), iOConsumer);
    }

    static <T> void forEach(T[] tArr, IOConsumer<T> iOConsumer) throws IOException {
        ffi.m54101e(ffi.m54106j(tArr), iOConsumer);
    }
}
