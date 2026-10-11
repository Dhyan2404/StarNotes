package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.Comparator;
import onyx.org.apache.commons.io.function.IOComparator;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOComparator<T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    /* synthetic */ default int m65289b(Object obj, Object obj2) {
        return Uncheck.compare(this, obj, obj2);
    }

    default Comparator<T> asComparator() {
        return new Comparator() { // from class: com.sunia.HTREnginev2.tci
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m65289b;
                m65289b = IOComparator.this.m65289b(obj, obj2);
                return m65289b;
            }
        };
    }

    int compare(T t, T t2) throws IOException;
}
