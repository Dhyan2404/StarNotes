package org.apache.commons.io.function;

import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.io.function.IOFunction;

@FunctionalInterface
/* loaded from: classes12.dex */
public interface IOFunction<T, R> {
    static <T> IOFunction<T, T> identity() {
        return new IOFunction() { // from class: com.sunia.HTREnginev2.gdi
            @Override // org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object lambda$identity$8;
                lambda$identity$8 = IOFunction.lambda$identity$8(obj);
                return lambda$identity$8;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$4(IOFunction iOFunction, Object obj) throws IOException {
        return iOFunction.apply(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$5(Function function, Object obj) throws IOException {
        return function.apply(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$6(IOConsumer iOConsumer, Object obj) throws IOException {
        iOConsumer.accept(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$7(Consumer consumer, Object obj) throws IOException {
        consumer.accept(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$0(IOFunction iOFunction, Object obj) throws IOException {
        return apply(iOFunction.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$1(Function function, Object obj) throws IOException {
        return apply(function.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$2(IOSupplier iOSupplier) throws IOException {
        return apply(iOSupplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$3(Supplier supplier) throws IOException {
        return apply(supplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$identity$8(Object obj) throws IOException {
        return obj;
    }

    default <V> IOFunction<T, V> andThen(final IOFunction<? super R, ? extends V> iOFunction) {
        Objects.requireNonNull(iOFunction, gon.f71277d0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.edi
            @Override // org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object lambda$andThen$4;
                lambda$andThen$4 = IOFunction.this.lambda$andThen$4(iOFunction, obj);
                return lambda$andThen$4;
            }
        };
    }

    R apply(T t) throws IOException;

    default <V> IOFunction<V, R> compose(final IOFunction<? super V, ? extends T> iOFunction) {
        Objects.requireNonNull(iOFunction, gon.f71276c0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.kdi
            @Override // org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object lambda$compose$0;
                lambda$compose$0 = IOFunction.this.lambda$compose$0(iOFunction, obj);
                return lambda$compose$0;
            }
        };
    }

    default <V> IOFunction<T, V> andThen(final Function<? super R, ? extends V> function) {
        Objects.requireNonNull(function, gon.f71277d0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.cdi
            @Override // org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object lambda$andThen$5;
                lambda$andThen$5 = IOFunction.this.lambda$andThen$5(function, obj);
                return lambda$andThen$5;
            }
        };
    }

    default <V> IOFunction<V, R> compose(final Function<? super V, ? extends T> function) {
        Objects.requireNonNull(function, gon.f71276c0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.mdi
            @Override // org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object lambda$compose$1;
                lambda$compose$1 = IOFunction.this.lambda$compose$1(function, obj);
                return lambda$compose$1;
            }
        };
    }

    default IOConsumer<T> andThen(final IOConsumer<? super R> iOConsumer) {
        Objects.requireNonNull(iOConsumer, gon.f71277d0);
        return new IOConsumer() { // from class: com.sunia.HTREnginev2.qdi
            @Override // org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOFunction.this.lambda$andThen$6(iOConsumer, obj);
            }
        };
    }

    default IOSupplier<R> compose(final IOSupplier<? extends T> iOSupplier) {
        Objects.requireNonNull(iOSupplier, gon.f71276c0);
        return new IOSupplier() { // from class: com.sunia.HTREnginev2.odi
            @Override // org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Object lambda$compose$2;
                lambda$compose$2 = IOFunction.this.lambda$compose$2(iOSupplier);
                return lambda$compose$2;
            }
        };
    }

    default IOConsumer<T> andThen(final Consumer<? super R> consumer) {
        Objects.requireNonNull(consumer, gon.f71277d0);
        return new IOConsumer() { // from class: com.sunia.HTREnginev2.idi
            @Override // org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOFunction.this.lambda$andThen$7(consumer, obj);
            }
        };
    }

    default IOSupplier<R> compose(final Supplier<? extends T> supplier) {
        Objects.requireNonNull(supplier, gon.f71276c0);
        return new IOSupplier() { // from class: com.sunia.HTREnginev2.adi
            @Override // org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Object lambda$compose$3;
                lambda$compose$3 = IOFunction.this.lambda$compose$3(supplier);
                return lambda$compose$3;
            }
        };
    }
}
