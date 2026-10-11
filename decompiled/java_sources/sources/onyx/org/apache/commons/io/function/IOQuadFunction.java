package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.Objects;
import onyx.org.apache.commons.io.function.IOQuadFunction;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOQuadFunction<T, U, V, W, R> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /* synthetic */ default Object m65328a(IOFunction iOFunction, Object obj, Object obj2, Object obj3, Object obj4) throws IOException {
        return iOFunction.apply(apply(obj, obj2, obj3, obj4));
    }

    default <X> IOQuadFunction<T, U, V, W, X> andThen(final IOFunction<? super R, ? extends X> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new IOQuadFunction() { // from class: com.sunia.HTREnginev2.bei
            @Override // onyx.org.apache.commons.io.function.IOQuadFunction
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                Object m65328a;
                m65328a = IOQuadFunction.this.m65328a(iOFunction, obj, obj2, obj3, obj4);
                return m65328a;
            }
        };
    }

    R apply(T t, U u, V v, W w) throws IOException;
}
