package com.couchbase.lite.internal.replicator;

import android.annotation.SuppressLint;
import android.system.ErrnoException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.couchbase.lite.internal.sockets.CloseStatus;
import com.couchbase.lite.internal.sockets.SocketToCore;
import com.couchbase.lite.internal.sockets.SocketToRemote;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.net.URI;
import java.security.cert.Certificate;
import java.security.cert.CertificateRevokedException;
import java.util.List;

/* loaded from: classes4.dex */
public final class CBLWebSocket extends AbstractCBLWebSocket {
    public CBLWebSocket(@NonNull SocketToRemote socketToRemote, @NonNull SocketToCore socketToCore, @NonNull URI uri, @Nullable byte[] bArr, @NonNull CBLCookieStore cBLCookieStore, @NonNull InterfaceC2217Fn.Consumer<List<Certificate>> consumer) {
        super(socketToRemote, socketToCore, uri, bArr, cBLCookieStore, consumer);
    }

    @RequiresApi(api = 24)
    private int handleCloseCausePostAPI23(Throwable th) {
        return !(th instanceof CertificateRevokedException) ? 0 : 7;
    }

    @Override // com.couchbase.lite.internal.replicator.AbstractCBLWebSocket
    @Nullable
    public CloseStatus handleClose(@NonNull Throwable th) {
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof ErrnoException) {
                return new CloseStatus(2, ((ErrnoException) th2).errno, th.toString());
            }
        }
        return null;
    }

    @Override // com.couchbase.lite.internal.replicator.AbstractCBLWebSocket
    @SuppressLint({"NewApi"})
    public int handleCloseCause(@NonNull Throwable th) {
        return handleCloseCausePostAPI23(th);
    }
}
