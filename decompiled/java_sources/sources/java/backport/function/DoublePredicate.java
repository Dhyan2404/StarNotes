package java.backport.function;

import java.backport.function.DoublePredicate;
import java.util.Objects;

@FunctionalInterface
/* loaded from: classes5.dex */
public interface DoublePredicate {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$and$0(DoublePredicate doublePredicate, double d) {
        return test(d) && doublePredicate.test(d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$negate$1(double d) {
        return !test(d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$or$2(DoublePredicate doublePredicate, double d) {
        return test(d) || doublePredicate.test(d);
    }

    default DoublePredicate and(final DoublePredicate doublePredicate) {
        Objects.requireNonNull(doublePredicate);
        return new DoublePredicate() { // from class: com.sunia.HTREnginev2.nff
            @Override // java.backport.function.DoublePredicate
            public final boolean test(double d) {
                boolean lambda$and$0;
                lambda$and$0 = DoublePredicate.this.lambda$and$0(doublePredicate, d);
                return lambda$and$0;
            }
        };
    }

    default DoublePredicate negate() {
        return new DoublePredicate() { // from class: com.sunia.HTREnginev2.mff
            @Override // java.backport.function.DoublePredicate
            public final boolean test(double d) {
                boolean lambda$negate$1;
                lambda$negate$1 = DoublePredicate.this.lambda$negate$1(d);
                return lambda$negate$1;
            }
        };
    }

    /* renamed from: or */
    default DoublePredicate m61412or(final DoublePredicate doublePredicate) {
        Objects.requireNonNull(doublePredicate);
        return new DoublePredicate() { // from class: com.sunia.HTREnginev2.off
            @Override // java.backport.function.DoublePredicate
            public final boolean test(double d) {
                boolean lambda$or$2;
                lambda$or$2 = DoublePredicate.this.lambda$or$2(doublePredicate, d);
                return lambda$or$2;
            }
        };
    }

    boolean test(double d);
}
