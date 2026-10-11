package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.Objects;
import onyx.org.apache.commons.io.function.IOTriFunction;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOTriFunction<T, U, V, R> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    /* synthetic */ default Object m65388b(IOFunction iOFunction, Object obj, Object obj2, Object obj3) throws IOException {
        return iOFunction.apply(apply(obj, obj2, obj3));
    }

    default <W> IOTriFunction<T, U, V, W> andThen(final IOFunction<? super R, ? extends W> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new IOTriFunction() { // from class: com.sunia.HTREnginev2.ifi
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                Object m65388b;
                m65388b = IOTriFunction.this.m65388b(iOFunction, obj, obj2, obj3);
                return m65388b;
            }
        };
    }

    R apply(T t, U u, V v) throws IOException;
}
