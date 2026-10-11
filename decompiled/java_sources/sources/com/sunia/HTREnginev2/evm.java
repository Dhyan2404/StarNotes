package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.Intrinsics;
import okio.AsyncTimeout;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class evm extends AsyncTimeout {

    /* renamed from: m */
    @NotNull
    public final Socket f69390m;

    public evm(@NotNull Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.f69390m = socket;
    }

    @Override // okio.AsyncTimeout
    @NotNull
    public IOException newTimeoutException(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // okio.AsyncTimeout
    public void timedOut() {
        Logger logger;
        Logger logger2;
        try {
            this.f69390m.close();
        } catch (AssertionError e) {
            if (!Okio.isAndroidGetsocknameError(e)) {
                throw e;
            }
            logger2 = mfk.f77549a;
            logger2.log(Level.WARNING, "Failed to close timed out socket " + this.f69390m, (Throwable) e);
        } catch (Exception e2) {
            logger = mfk.f77549a;
            logger.log(Level.WARNING, "Failed to close timed out socket " + this.f69390m, (Throwable) e2);
        }
    }
}
