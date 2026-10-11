package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.function.IOSupplier;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOSupplier<T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /* synthetic */ default Object m65383a() {
        return Uncheck.get(this);
    }

    default Supplier<T> asSupplier() {
        return new Supplier() { // from class: com.sunia.HTREnginev2.gfi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object m65383a;
                m65383a = IOSupplier.this.m65383a();
                return m65383a;
            }
        };
    }

    T get() throws IOException;
}
