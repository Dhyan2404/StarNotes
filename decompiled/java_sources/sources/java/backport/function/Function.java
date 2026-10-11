package java.backport.function;

import java.backport.function.Function;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface Function<T, R> {
    static <T> Function<T, T> identity() {
        return new Function() { // from class: com.sunia.HTREnginev2.swg
            @Override // java.backport.function.Function
            public final Object apply(Object obj) {
                Object lambda$identity$2;
                lambda$identity$2 = Function.lambda$identity$2(obj);
                return lambda$identity$2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$1(Function function, Object obj) {
        return function.apply(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$0(Function function, Object obj) {
        return apply(function.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$identity$2(Object obj) {
        return obj;
    }

    default <V> Function<T, V> andThen(final Function<? super R, ? extends V> function) {
        Objects.requireNonNull(function);
        return new Function() { // from class: com.sunia.HTREnginev2.uwg
            @Override // java.backport.function.Function
            public final Object apply(Object obj) {
                Object lambda$andThen$1;
                lambda$andThen$1 = Function.this.lambda$andThen$1(function, obj);
                return lambda$andThen$1;
            }
        };
    }

    R apply(T t);

    default <V> Function<V, R> compose(final Function<? super V, ? extends T> function) {
        Objects.requireNonNull(function);
        return new Function() { // from class: com.sunia.HTREnginev2.twg
            @Override // java.backport.function.Function
            public final Object apply(Object obj) {
                Object lambda$compose$0;
                lambda$compose$0 = Function.this.lambda$compose$0(function, obj);
                return lambda$compose$0;
            }
        };
    }
}
