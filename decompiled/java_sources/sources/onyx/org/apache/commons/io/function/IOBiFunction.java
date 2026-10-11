package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.Objects;
import java.util.function.BiFunction;
import onyx.org.apache.commons.io.function.IOBiFunction;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOBiFunction<T, U, R> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    /* synthetic */ default Object m65278d(IOFunction iOFunction, Object obj, Object obj2) throws IOException {
        return iOFunction.apply(apply(obj, obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    /* synthetic */ default Object m65280f(Object obj, Object obj2) {
        return Uncheck.apply(this, obj, obj2);
    }

    default <V> IOBiFunction<T, U, V> andThen(final IOFunction<? super R, ? extends V> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new IOBiFunction() { // from class: com.sunia.HTREnginev2.nci
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65278d;
                m65278d = IOBiFunction.this.m65278d(iOFunction, obj, obj2);
                return m65278d;
            }
        };
    }

    R apply(T t, U u) throws IOException;

    default BiFunction<T, U, R> asBiFunction() {
        return new BiFunction() { // from class: com.sunia.HTREnginev2.mci
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65280f;
                m65280f = IOBiFunction.this.m65280f(obj, obj2);
                return m65280f;
            }
        };
    }
}
