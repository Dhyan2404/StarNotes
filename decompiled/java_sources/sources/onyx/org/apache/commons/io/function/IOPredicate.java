package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.bae;
import java.io.IOException;
import java.util.Objects;
import java.util.function.Predicate;
import onyx.org.apache.commons.io.function.IOPredicate;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOPredicate<T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /* synthetic */ default boolean m65317a(IOPredicate iOPredicate, Object obj) throws IOException {
        return test(obj) && iOPredicate.test(obj);
    }

    static <T> IOPredicate<T> alwaysFalse() {
        return (IOPredicate<T>) bae.f65579e;
    }

    static <T> IOPredicate<T> alwaysTrue() {
        return (IOPredicate<T>) bae.f65580f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    /* synthetic */ default boolean m65319c(IOPredicate iOPredicate, Object obj) throws IOException {
        return test(obj) || iOPredicate.test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    /* synthetic */ default boolean m65320d(Object obj) {
        return Uncheck.test(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    /* synthetic */ default boolean m65321e(Object obj) throws IOException {
        return !test(obj);
    }

    static <T> IOPredicate<T> isEqual(final Object obj) {
        return obj == null ? new IOPredicate() { // from class: com.sunia.HTREnginev2.zdi
            @Override // onyx.org.apache.commons.io.function.IOPredicate
            public final boolean test(Object obj2) {
                return Objects.isNull(obj2);
            }
        } : new IOPredicate() { // from class: com.sunia.HTREnginev2.aei
            @Override // onyx.org.apache.commons.io.function.IOPredicate
            public final boolean test(Object obj2) {
                boolean equals;
                equals = obj.equals(obj2);
                return equals;
            }
        };
    }

    default IOPredicate<T> and(final IOPredicate<? super T> iOPredicate) {
        Objects.requireNonNull(iOPredicate);
        return new IOPredicate() { // from class: com.sunia.HTREnginev2.wdi
            @Override // onyx.org.apache.commons.io.function.IOPredicate
            public final boolean test(Object obj) {
                boolean m65317a;
                m65317a = IOPredicate.this.m65317a(iOPredicate, obj);
                return m65317a;
            }
        };
    }

    default Predicate<T> asPredicate() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.xdi
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65320d;
                m65320d = IOPredicate.this.m65320d(obj);
                return m65320d;
            }
        };
    }

    default IOPredicate<T> negate() {
        return new IOPredicate() { // from class: com.sunia.HTREnginev2.ydi
            @Override // onyx.org.apache.commons.io.function.IOPredicate
            public final boolean test(Object obj) {
                boolean m65321e;
                m65321e = IOPredicate.this.m65321e(obj);
                return m65321e;
            }
        };
    }

    /* renamed from: or */
    default IOPredicate<T> m65327or(final IOPredicate<? super T> iOPredicate) {
        Objects.requireNonNull(iOPredicate);
        return new IOPredicate() { // from class: com.sunia.HTREnginev2.vdi
            @Override // onyx.org.apache.commons.io.function.IOPredicate
            public final boolean test(Object obj) {
                boolean m65319c;
                m65319c = IOPredicate.this.m65319c(iOPredicate, obj);
                return m65319c;
            }
        };
    }

    boolean test(T t) throws IOException;
}
