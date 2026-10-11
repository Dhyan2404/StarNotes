package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.Objects;
import java.util.function.BinaryOperator;
import onyx.org.apache.commons.io.function.IOBinaryOperator;
import onyx.org.apache.commons.io.function.IOComparator;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOBinaryOperator<T> extends IOBiFunction<T, T, T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /* synthetic */ default Object m65282a(Object obj, Object obj2) {
        return Uncheck.apply(this, obj, obj2);
    }

    /* renamed from: b */
    static /* synthetic */ Object m65283b(IOComparator iOComparator, Object obj, Object obj2) throws IOException {
        return iOComparator.compare(obj, obj2) >= 0 ? obj : obj2;
    }

    /* renamed from: j */
    static /* synthetic */ Object m65287j(IOComparator iOComparator, Object obj, Object obj2) throws IOException {
        return iOComparator.compare(obj, obj2) <= 0 ? obj : obj2;
    }

    static <T> IOBinaryOperator<T> maxBy(final IOComparator<? super T> iOComparator) {
        Objects.requireNonNull(iOComparator);
        return new IOBinaryOperator() { // from class: com.sunia.HTREnginev2.pci
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65283b;
                m65283b = IOBinaryOperator.m65283b(IOComparator.this, obj, obj2);
                return m65283b;
            }
        };
    }

    static <T> IOBinaryOperator<T> minBy(final IOComparator<? super T> iOComparator) {
        Objects.requireNonNull(iOComparator);
        return new IOBinaryOperator() { // from class: com.sunia.HTREnginev2.oci
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65287j;
                m65287j = IOBinaryOperator.m65287j(IOComparator.this, obj, obj2);
                return m65287j;
            }
        };
    }

    default BinaryOperator<T> asBinaryOperator() {
        return new BinaryOperator() { // from class: com.sunia.HTREnginev2.qci
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65282a;
                m65282a = IOBinaryOperator.this.m65282a(obj, obj2);
                return m65282a;
            }
        };
    }
}
