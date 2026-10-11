package com.sunia.HTREnginev2;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayDeque;

@RequiresApi(23)
/* renamed from: com.sunia.HTREnginev2.dg */
/* loaded from: classes5.dex */
public final class C13614dg extends MediaCodec.Callback {

    /* renamed from: b */
    public final HandlerThread f67811b;

    /* renamed from: c */
    public Handler f67812c;

    /* renamed from: h */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public MediaFormat f67817h;

    /* renamed from: i */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public MediaFormat f67818i;

    /* renamed from: j */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public MediaCodec.CodecException f67819j;

    /* renamed from: k */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public long f67820k;

    /* renamed from: l */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public boolean f67821l;

    /* renamed from: m */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public IllegalStateException f67822m;

    /* renamed from: a */
    public final Object f67810a = new Object();

    /* renamed from: d */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final mmi f67813d = new mmi();

    /* renamed from: e */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final mmi f67814e = new mmi();

    /* renamed from: f */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ArrayDeque<MediaCodec.BufferInfo> f67815f = new ArrayDeque<>();

    /* renamed from: g */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final ArrayDeque<MediaFormat> f67816g = new ArrayDeque<>();

    public C13614dg(HandlerThread handlerThread) {
        this.f67811b = handlerThread;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: b */
    public final void m53643b(MediaFormat mediaFormat) {
        this.f67814e.m55658a(-2);
        this.f67816g.add(mediaFormat);
    }

    /* renamed from: c */
    public int m53644c() {
        synchronized (this.f67810a) {
            int i = -1;
            if (m53650i()) {
                return -1;
            }
            m53651k();
            if (!this.f67813d.m55662e()) {
                i = this.f67813d.m55663f();
            }
            return i;
        }
    }

    /* renamed from: d */
    public int m53645d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f67810a) {
            if (m53650i()) {
                return -1;
            }
            m53651k();
            if (this.f67814e.m55662e()) {
                return -1;
            }
            int m55663f = this.f67814e.m55663f();
            if (m55663f >= 0) {
                Assertions.checkStateNotNull(this.f67817h);
                MediaCodec.BufferInfo remove = this.f67815f.remove();
                bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
            } else if (m55663f == -2) {
                this.f67817h = this.f67816g.remove();
            }
            return m55663f;
        }
    }

    /* renamed from: e */
    public void m53646e(@Nullable final MediaCodec mediaCodec) {
        synchronized (this.f67810a) {
            this.f67820k++;
            ((Handler) Util.castNonNull(this.f67812c)).post(new Runnable() { // from class: com.sunia.HTREnginev2.cg
                @Override // java.lang.Runnable
                public final void run() {
                    C13614dg.this.m53642j(mediaCodec);
                }
            });
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: f */
    public final void m53647f() {
        if (!this.f67816g.isEmpty()) {
            this.f67818i = this.f67816g.getLast();
        }
        this.f67813d.m55660c();
        this.f67814e.m55660c();
        this.f67815f.clear();
        this.f67816g.clear();
        this.f67819j = null;
    }

    /* renamed from: g */
    public MediaFormat m53648g() {
        MediaFormat mediaFormat;
        synchronized (this.f67810a) {
            mediaFormat = this.f67817h;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    /* renamed from: h */
    public void m53649h(MediaCodec mediaCodec) {
        Assertions.checkState(this.f67812c == null);
        this.f67811b.start();
        Handler handler = new Handler(this.f67811b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f67812c = handler;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: i */
    public final boolean m53650i() {
        return this.f67820k > 0 || this.f67821l;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: k */
    public final void m53651k() {
        m53652l();
        m53653m();
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: l */
    public final void m53652l() {
        IllegalStateException illegalStateException = this.f67822m;
        if (illegalStateException == null) {
            return;
        }
        this.f67822m = null;
        throw illegalStateException;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: m */
    public final void m53653m() {
        MediaCodec.CodecException codecException = this.f67819j;
        if (codecException == null) {
            return;
        }
        this.f67819j = null;
        throw codecException;
    }

    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final void m53642j(@Nullable MediaCodec mediaCodec) {
        synchronized (this.f67810a) {
            if (this.f67821l) {
                return;
            }
            long j = this.f67820k - 1;
            this.f67820k = j;
            if (j > 0) {
                return;
            }
            if (j < 0) {
                m53655o(new IllegalStateException());
                return;
            }
            m53647f();
            if (mediaCodec != null) {
                try {
                    mediaCodec.start();
                } catch (IllegalStateException e) {
                    m53655o(e);
                } catch (Exception e2) {
                    m53655o(new IllegalStateException(e2));
                }
            }
        }
    }

    /* renamed from: o */
    public final void m53655o(IllegalStateException illegalStateException) {
        synchronized (this.f67810a) {
            this.f67822m = illegalStateException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f67810a) {
            this.f67819j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.f67810a) {
            this.f67813d.m55658a(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f67810a) {
            MediaFormat mediaFormat = this.f67818i;
            if (mediaFormat != null) {
                m53643b(mediaFormat);
                this.f67818i = null;
            }
            this.f67814e.m55658a(i);
            this.f67815f.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f67810a) {
            m53643b(mediaFormat);
            this.f67818i = null;
        }
    }

    /* renamed from: p */
    public void m53656p() {
        synchronized (this.f67810a) {
            this.f67821l = true;
            this.f67811b.quit();
            m53647f();
        }
    }
}
