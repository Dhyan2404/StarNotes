package java.backport.function;

import java.backport.function.BiFunction;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface BiFunction<T, U, R> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$0(Function function, Object obj, Object obj2) {
        return function.apply(apply(obj, obj2));
    }

    default <V> BiFunction<T, U, V> andThen(final Function<? super R, ? extends V> function) {
        Objects.requireNonNull(function);
        return new BiFunction() { // from class: com.sunia.HTREnginev2.kq
            @Override // java.backport.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object lambda$andThen$0;
                lambda$andThen$0 = BiFunction.this.lambda$andThen$0(function, obj, obj2);
                return lambda$andThen$0;
            }
        };
    }

    R apply(T t, U u);
}
