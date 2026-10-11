package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.bae;
import java.io.IOException;
import onyx.org.apache.commons.io.function.IORunnable;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface IORunnable {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    /* synthetic */ default void m65331b() {
        Uncheck.run(this);
    }

    static IORunnable noop() {
        return bae.f65576b;
    }

    default Runnable asRunnable() {
        return new Runnable() { // from class: com.sunia.HTREnginev2.cei
            @Override // java.lang.Runnable
            public final void run() {
                IORunnable.this.m65331b();
            }
        };
    }

    void run() throws IOException;
}
