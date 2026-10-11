package java.backport.function;

import java.backport.function.Predicate;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface Predicate<T> {
    static <T> Predicate<T> isEqual(final Object obj) {
        return obj == null ? new Predicate() { // from class: com.sunia.HTREnginev2.y5l
            @Override // java.backport.function.Predicate
            public final boolean test(Object obj2) {
                return Objects.isNull(obj2);
            }
        } : new Predicate() { // from class: com.sunia.HTREnginev2.a6l
            @Override // java.backport.function.Predicate
            public final boolean test(Object obj2) {
                boolean equals;
                equals = obj.equals(obj2);
                return equals;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$and$0(Predicate predicate, Object obj) {
        return test(obj) && predicate.test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$negate$1(Object obj) {
        return !test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$or$2(Predicate predicate, Object obj) {
        return test(obj) || predicate.test(obj);
    }

    default Predicate<T> and(final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() { // from class: com.sunia.HTREnginev2.w5l
            @Override // java.backport.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$and$0;
                lambda$and$0 = Predicate.this.lambda$and$0(predicate, obj);
                return lambda$and$0;
            }
        };
    }

    default Predicate<T> negate() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.u5l
            @Override // java.backport.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$negate$1;
                lambda$negate$1 = Predicate.this.lambda$negate$1(obj);
                return lambda$negate$1;
            }
        };
    }

    /* renamed from: or */
    default Predicate<T> m61439or(final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() { // from class: com.sunia.HTREnginev2.s5l
            @Override // java.backport.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$or$2;
                lambda$or$2 = Predicate.this.lambda$or$2(predicate, obj);
                return lambda$or$2;
            }
        };
    }

    boolean test(T t);
}
