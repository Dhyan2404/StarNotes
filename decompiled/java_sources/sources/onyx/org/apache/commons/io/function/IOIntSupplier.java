package onyx.org.apache.commons.io.function;

import java.io.IOException;
import java.util.function.IntSupplier;
import onyx.org.apache.commons.io.function.IOIntSupplier;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IOIntSupplier {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    /* synthetic */ default int m65313a() {
        return Uncheck.getAsInt(this);
    }

    default IntSupplier asIntSupplier() {
        return new IntSupplier() { // from class: com.sunia.HTREnginev2.sdi
            @Override // java.util.function.IntSupplier
            public final int getAsInt() {
                int m65313a;
                m65313a = IOIntSupplier.this.m65313a();
                return m65313a;
            }
        };
    }

    int getAsInt() throws IOException;
}
