package java.backport.function;

import java.backport.function.BiPredicate;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface BiPredicate<T, U> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$and$0(BiPredicate biPredicate, Object obj, Object obj2) {
        return test(obj, obj2) && biPredicate.test(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$negate$1(Object obj, Object obj2) {
        return !test(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$or$2(BiPredicate biPredicate, Object obj, Object obj2) {
        return test(obj, obj2) || biPredicate.test(obj, obj2);
    }

    default BiPredicate<T, U> and(final BiPredicate<? super T, ? super U> biPredicate) {
        Objects.requireNonNull(biPredicate);
        return new BiPredicate() { // from class: com.sunia.HTREnginev2.mq
            @Override // java.backport.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                boolean lambda$and$0;
                lambda$and$0 = BiPredicate.this.lambda$and$0(biPredicate, obj, obj2);
                return lambda$and$0;
            }
        };
    }

    default BiPredicate<T, U> negate() {
        return new BiPredicate() { // from class: com.sunia.HTREnginev2.nq
            @Override // java.backport.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                boolean lambda$negate$1;
                lambda$negate$1 = BiPredicate.this.lambda$negate$1(obj, obj2);
                return lambda$negate$1;
            }
        };
    }

    /* renamed from: or */
    default BiPredicate<T, U> m61404or(final BiPredicate<? super T, ? super U> biPredicate) {
        Objects.requireNonNull(biPredicate);
        return new BiPredicate() { // from class: com.sunia.HTREnginev2.lq
            @Override // java.backport.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                boolean lambda$or$2;
                lambda$or$2 = BiPredicate.this.lambda$or$2(biPredicate, obj, obj2);
                return lambda$or$2;
            }
        };
    }

    boolean test(T t, U u);
}
