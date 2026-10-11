package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.function.LongSupplier;
import onyx.org.apache.commons.io.function.IOLongSupplier;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOLongSupplier {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /* synthetic */ default long m65315a() {
        return Uncheck.getAsLong(this);
    }

    default LongSupplier asSupplier() {
        return new LongSupplier() { // from class: com.sunia.HTREnginev2.udi
            @Override // java.util.function.LongSupplier
            public final long getAsLong() {
                long m65315a;
                m65315a = IOLongSupplier.this.m65315a();
                return m65315a;
            }
        };
    }

    long getAsLong() throws IOException;
}
