package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.bae;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.function.IOFunction;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOFunction<T, R> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /* synthetic */ default Object m65295a(Supplier supplier) throws IOException {
        return apply(supplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    /* synthetic */ default Object m65296b(IOSupplier iOSupplier) throws IOException {
        return apply(iOSupplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    /* synthetic */ default Object m65297d(IOFunction iOFunction, Object obj) throws IOException {
        return iOFunction.apply(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    /* synthetic */ default Object m65300g(Function function, Object obj) throws IOException {
        return function.apply(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    /* synthetic */ default Object m65301h(Function function, Object obj) throws IOException {
        return apply(function.apply(obj));
    }

    static <T> IOFunction<T, T> identity() {
        return bae.f65578d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    /* synthetic */ default void m65304k(Consumer consumer, Object obj) throws IOException {
        consumer.accept(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    /* synthetic */ default Object m65305m(Object obj) {
        return Uncheck.apply(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    /* synthetic */ default void m65306n(IOConsumer iOConsumer, Object obj) throws IOException {
        iOConsumer.accept(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    /* synthetic */ default Object m65311t(IOFunction iOFunction, Object obj) throws IOException {
        return apply(iOFunction.apply(obj));
    }

    default IOConsumer<T> andThen(final Consumer<? super R> consumer) {
        Objects.requireNonNull(consumer, gon.f71277d0);
        return new IOConsumer() { // from class: com.sunia.HTREnginev2.pdi
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOFunction.this.m65304k(consumer, obj);
            }
        };
    }

    R apply(T t) throws IOException;

    default Function<T, R> asFunction() {
        return new Function() { // from class: com.sunia.HTREnginev2.rdi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m65305m;
                m65305m = IOFunction.this.m65305m(obj);
                return m65305m;
            }
        };
    }

    default <V> IOFunction<V, R> compose(final Function<? super V, ? extends T> function) {
        Objects.requireNonNull(function, gon.f71276c0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.hdi
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object m65301h;
                m65301h = IOFunction.this.m65301h(function, obj);
                return m65301h;
            }
        };
    }

    default <V> IOFunction<T, V> andThen(final Function<? super R, ? extends V> function) {
        Objects.requireNonNull(function, gon.f71277d0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.fdi
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object m65300g;
                m65300g = IOFunction.this.m65300g(function, obj);
                return m65300g;
            }
        };
    }

    default <V> IOFunction<V, R> compose(final IOFunction<? super V, ? extends T> iOFunction) {
        Objects.requireNonNull(iOFunction, gon.f71276c0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.jdi
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object m65311t;
                m65311t = IOFunction.this.m65311t(iOFunction, obj);
                return m65311t;
            }
        };
    }

    default IOConsumer<T> andThen(final IOConsumer<? super R> iOConsumer) {
        Objects.requireNonNull(iOConsumer, gon.f71277d0);
        return new IOConsumer() { // from class: com.sunia.HTREnginev2.ldi
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOFunction.this.m65306n(iOConsumer, obj);
            }
        };
    }

    default IOSupplier<R> compose(final IOSupplier<? extends T> iOSupplier) {
        Objects.requireNonNull(iOSupplier, gon.f71276c0);
        return new IOSupplier() { // from class: com.sunia.HTREnginev2.ddi
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Object m65296b;
                m65296b = IOFunction.this.m65296b(iOSupplier);
                return m65296b;
            }
        };
    }

    default <V> IOFunction<T, V> andThen(final IOFunction<? super R, ? extends V> iOFunction) {
        Objects.requireNonNull(iOFunction, gon.f71277d0);
        return new IOFunction() { // from class: com.sunia.HTREnginev2.ndi
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Object m65297d;
                m65297d = IOFunction.this.m65297d(iOFunction, obj);
                return m65297d;
            }
        };
    }

    default IOSupplier<R> compose(final Supplier<? extends T> supplier) {
        Objects.requireNonNull(supplier, gon.f71276c0);
        return new IOSupplier() { // from class: com.sunia.HTREnginev2.bdi
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Object m65295a;
                m65295a = IOFunction.this.m65295a(supplier);
                return m65295a;
            }
        };
    }
}
