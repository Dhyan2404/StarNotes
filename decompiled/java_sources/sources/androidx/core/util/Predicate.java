package androidx.core.util;

import android.annotation.SuppressLint;
import androidx.core.util.Predicate;
import java.util.Objects;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes3.dex */
public interface Predicate<T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    /* synthetic */ default boolean m3262d(Predicate predicate, Object obj) {
        return test(obj) || predicate.test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    /* synthetic */ default boolean m3264f(Predicate predicate, Object obj) {
        return test(obj) && predicate.test(obj);
    }

    @SuppressLint({"MissingNullability"})
    static <T> Predicate<T> isEqual(@SuppressLint({"MissingNullability"}) final Object obj) {
        return obj == null ? new Predicate() { // from class: com.sunia.HTREnginev2.v5l
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj2) {
                boolean isNull;
                isNull = Objects.isNull(obj2);
                return isNull;
            }
        } : new Predicate() { // from class: com.sunia.HTREnginev2.x5l
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj2) {
                boolean equals;
                equals = obj.equals(obj2);
                return equals;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$negate$1(Object obj) {
        return !test(obj);
    }

    @SuppressLint({"MissingNullability"})
    static <T> Predicate<T> not(@SuppressLint({"MissingNullability"}) Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return predicate.negate();
    }

    @SuppressLint({"MissingNullability"})
    default Predicate<T> and(@SuppressLint({"MissingNullability"}) final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() { // from class: com.sunia.HTREnginev2.z5l
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m3264f;
                m3264f = Predicate.this.m3264f(predicate, obj);
                return m3264f;
            }
        };
    }

    @SuppressLint({"MissingNullability"})
    default Predicate<T> negate() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.b6l
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean lambda$negate$1;
                lambda$negate$1 = Predicate.this.lambda$negate$1(obj);
                return lambda$negate$1;
            }
        };
    }

    @SuppressLint({"MissingNullability"})
    /* renamed from: or */
    default Predicate<T> m3268or(@SuppressLint({"MissingNullability"}) final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() { // from class: com.sunia.HTREnginev2.t5l
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                boolean m3262d;
                m3262d = Predicate.this.m3262d(predicate, obj);
                return m3262d;
            }
        };
    }

    boolean test(T t);
}
