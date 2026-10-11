package bolts;

import java.util.Locale;
import java.util.concurrent.CancellationException;

/* loaded from: classes3.dex */
public class CancellationToken {

    /* renamed from: a */
    public final CancellationTokenSource f12067a;

    public CancellationToken(CancellationTokenSource cancellationTokenSource) {
        this.f12067a = cancellationTokenSource;
    }

    public boolean isCancellationRequested() {
        return this.f12067a.isCancellationRequested();
    }

    public CancellationTokenRegistration register(Runnable runnable) {
        return this.f12067a.m7207M(runnable);
    }

    public void throwIfCancellationRequested() throws CancellationException {
        this.f12067a.m7208e0();
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.f12067a.isCancellationRequested()));
    }
}
