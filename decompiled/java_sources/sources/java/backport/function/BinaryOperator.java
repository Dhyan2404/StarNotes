package java.backport.function;

import java.backport.function.BinaryOperator;
import java.util.Comparator;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface BinaryOperator<T> extends BiFunction<T, T, T> {
    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$maxBy$1(Comparator comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2) >= 0 ? obj : obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$minBy$0(Comparator comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2) <= 0 ? obj : obj2;
    }

    static <T> BinaryOperator<T> maxBy(final Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator);
        return new BinaryOperator() { // from class: com.sunia.HTREnginev2.rq
            @Override // java.backport.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object lambda$maxBy$1;
                lambda$maxBy$1 = BinaryOperator.lambda$maxBy$1(comparator, obj, obj2);
                return lambda$maxBy$1;
            }
        };
    }

    static <T> BinaryOperator<T> minBy(final Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator);
        return new BinaryOperator() { // from class: com.sunia.HTREnginev2.sq
            @Override // java.backport.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object lambda$minBy$0;
                lambda$minBy$0 = BinaryOperator.lambda$minBy$0(comparator, obj, obj2);
                return lambda$minBy$0;
            }
        };
    }
}
