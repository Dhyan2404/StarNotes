package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {

    /* renamed from: d */
    public static final int f24743d = 0;

    /* renamed from: e */
    public static final int f24744e = 1;

    /* renamed from: f */
    public static final int f24745f = 2;

    /* renamed from: g */
    public static final String f24746g = "DMCodecAdapterFactory";

    /* renamed from: b */
    public boolean f24748b;

    /* renamed from: a */
    public int f24747a = 0;

    /* renamed from: c */
    public boolean f24749c = true;

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory
    public MediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) throws IOException {
        int i = this.f24747a;
        if ((i != 1 || Util.SDK_INT < 23) && (i != 0 || Util.SDK_INT < 31)) {
            return new SynchronousMediaCodecAdapter.Factory().createAdapter(configuration);
        }
        int trackType = MimeTypes.getTrackType(configuration.format.sampleMimeType);
        String valueOf = String.valueOf(Util.getTrackTypeString(trackType));
        Log.m21491i(f24746g, valueOf.length() != 0 ? "Creating an asynchronous MediaCodec adapter for track type ".concat(valueOf) : new String("Creating an asynchronous MediaCodec adapter for track type "));
        return new AsynchronousMediaCodecAdapter.Factory(trackType, this.f24748b, this.f24749c).createAdapter(configuration);
    }

    public void experimentalSetImmediateCodecStartAfterFlushEnabled(boolean z) {
        this.f24749c = z;
    }

    public void experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(boolean z) {
        this.f24748b = z;
    }

    public DefaultMediaCodecAdapterFactory forceDisableAsynchronous() {
        this.f24747a = 2;
        return this;
    }

    public DefaultMediaCodecAdapterFactory forceEnableAsynchronous() {
        this.f24747a = 1;
        return this;
    }
}
