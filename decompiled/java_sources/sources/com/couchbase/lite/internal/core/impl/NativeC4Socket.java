package com.couchbase.lite.internal.core.impl;

import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Socket;

/* loaded from: classes4.dex */
public final class NativeC4Socket implements C4Socket.NativeImpl {
    private static native void closeRequested(long j, int i, @Nullable String str);

    private static native void closed(long j, int i, int i2, String str);

    private static native void completedWrite(long j, long j2);

    private static native long fromNative(long j, String str, String str2, int i, String str3, int i2);

    private static native void gotHTTPResponse(long j, int i, @Nullable byte[] bArr);

    private static native void opened(long j);

    private static native void received(long j, byte[] bArr);

    private static native void retain(long j);

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public void nCloseRequested(long j, int i, @Nullable String str) {
        closeRequested(j, i, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public void nClosed(long j, int i, int i2, String str) {
        closed(j, i, i2, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public void nCompletedWrite(long j, long j2) {
        completedWrite(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public long nFromNative(long j, String str, String str2, int i, String str3, int i2) {
        return fromNative(j, str, str2, i, str3, i2);
    }

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public void nGotHTTPResponse(long j, int i, @Nullable byte[] bArr) {
        gotHTTPResponse(j, i, bArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public void nOpened(long j) {
        opened(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public void nReceived(long j, byte[] bArr) {
        received(j, bArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Socket.NativeImpl
    public void nRetain(long j) {
        retain(j);
    }
}
