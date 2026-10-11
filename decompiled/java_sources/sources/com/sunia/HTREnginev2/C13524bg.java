package com.sunia.HTREnginev2;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.decoder.CryptoInfo;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

@RequiresApi(23)
/* renamed from: com.sunia.HTREnginev2.bg */
/* loaded from: classes5.dex */
public class C13524bg {

    /* renamed from: g */
    public static final int f65716g = 0;

    /* renamed from: h */
    public static final int f65717h = 1;

    /* renamed from: i */
    public static final int f65718i = 2;

    /* renamed from: j */
    @GuardedBy("MESSAGE_PARAMS_INSTANCE_POOL")
    public static final ArrayDeque<b> f65719j = new ArrayDeque<>();

    /* renamed from: k */
    public static final Object f65720k = new Object();

    /* renamed from: a */
    public final MediaCodec f65721a;

    /* renamed from: b */
    public final HandlerThread f65722b;

    /* renamed from: c */
    public Handler f65723c;

    /* renamed from: d */
    public final AtomicReference<RuntimeException> f65724d;

    /* renamed from: e */
    public final ConditionVariable f65725e;

    /* renamed from: f */
    public boolean f65726f;

    /* renamed from: com.sunia.HTREnginev2.bg$a */
    /* loaded from: classes5.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C13524bg.this.m53253f(message);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.bg$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a */
        public int f65728a;

        /* renamed from: b */
        public int f65729b;

        /* renamed from: c */
        public int f65730c;

        /* renamed from: d */
        public final MediaCodec.CryptoInfo f65731d = new MediaCodec.CryptoInfo();

        /* renamed from: e */
        public long f65732e;

        /* renamed from: f */
        public int f65733f;

        /* renamed from: a */
        public void m53265a(int i, int i2, int i3, long j, int i4) {
            this.f65728a = i;
            this.f65729b = i2;
            this.f65730c = i3;
            this.f65732e = j;
            this.f65733f = i4;
        }
    }

    public C13524bg(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new ConditionVariable());
    }

    /* renamed from: c */
    public static void m53247c(CryptoInfo cryptoInfo, MediaCodec.CryptoInfo cryptoInfo2) {
        cryptoInfo2.numSubSamples = cryptoInfo.numSubSamples;
        cryptoInfo2.numBytesOfClearData = m53249e(cryptoInfo.numBytesOfClearData, cryptoInfo2.numBytesOfClearData);
        cryptoInfo2.numBytesOfEncryptedData = m53249e(cryptoInfo.numBytesOfEncryptedData, cryptoInfo2.numBytesOfEncryptedData);
        cryptoInfo2.key = (byte[]) Assertions.checkNotNull(m53248d(cryptoInfo.key, cryptoInfo2.key));
        cryptoInfo2.iv = (byte[]) Assertions.checkNotNull(m53248d(cryptoInfo.f23330iv, cryptoInfo2.iv));
        cryptoInfo2.mode = cryptoInfo.mode;
        if (Util.SDK_INT >= 24) {
            cryptoInfo2.setPattern(new MediaCodec.CryptoInfo.Pattern(cryptoInfo.encryptedBlocks, cryptoInfo.clearBlocks));
        }
    }

    @Nullable
    /* renamed from: d */
    public static byte[] m53248d(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    @Nullable
    /* renamed from: e */
    public static int[] m53249e(@Nullable int[] iArr, @Nullable int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* renamed from: k */
    public static b m53250k() {
        ArrayDeque<b> arrayDeque = f65719j;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new b();
            }
            return arrayDeque.removeFirst();
        }
    }

    /* renamed from: o */
    public static void m53251o(b bVar) {
        ArrayDeque<b> arrayDeque = f65719j;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    /* renamed from: b */
    public final void m53252b() throws InterruptedException {
        this.f65725e.close();
        ((Handler) Assertions.checkNotNull(this.f65723c)).obtainMessage(2).sendToTarget();
        this.f65725e.block();
    }

    /* renamed from: f */
    public final void m53253f(Message message) {
        b bVar;
        int i = message.what;
        if (i == 0) {
            bVar = (b) message.obj;
            m53254g(bVar.f65728a, bVar.f65729b, bVar.f65730c, bVar.f65732e, bVar.f65733f);
        } else if (i != 1) {
            bVar = null;
            if (i != 2) {
                cyi.m53538a(this.f65724d, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.f65725e.open();
            }
        } else {
            bVar = (b) message.obj;
            m53255h(bVar.f65728a, bVar.f65729b, bVar.f65731d, bVar.f65732e, bVar.f65733f);
        }
        if (bVar != null) {
            m53251o(bVar);
        }
    }

    /* renamed from: g */
    public final void m53254g(int i, int i2, int i3, long j, int i4) {
        try {
            this.f65721a.queueInputBuffer(i, i2, i3, j, i4);
        } catch (RuntimeException e) {
            cyi.m53538a(this.f65724d, null, e);
        }
    }

    /* renamed from: h */
    public final void m53255h(int i, int i2, MediaCodec.CryptoInfo cryptoInfo, long j, int i3) {
        try {
            synchronized (f65720k) {
                this.f65721a.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
            }
        } catch (RuntimeException e) {
            cyi.m53538a(this.f65724d, null, e);
        }
    }

    /* renamed from: i */
    public void m53256i() {
        if (this.f65726f) {
            try {
                m53257j();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    /* renamed from: j */
    public final void m53257j() throws InterruptedException {
        ((Handler) Assertions.checkNotNull(this.f65723c)).removeCallbacksAndMessages(null);
        m53252b();
    }

    /* renamed from: l */
    public final void m53258l() {
        RuntimeException andSet = this.f65724d.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    /* renamed from: m */
    public void m53259m(int i, int i2, int i3, long j, int i4) {
        m53258l();
        b m53250k = m53250k();
        m53250k.m53265a(i, i2, i3, j, i4);
        ((Handler) Util.castNonNull(this.f65723c)).obtainMessage(0, m53250k).sendToTarget();
    }

    /* renamed from: n */
    public void m53260n(int i, int i2, CryptoInfo cryptoInfo, long j, int i3) {
        m53258l();
        b m53250k = m53250k();
        m53250k.m53265a(i, i2, 0, j, i3);
        m53247c(cryptoInfo, m53250k.f65731d);
        ((Handler) Util.castNonNull(this.f65723c)).obtainMessage(1, m53250k).sendToTarget();
    }

    @VisibleForTesting(otherwise = 5)
    /* renamed from: p */
    public void m53261p(RuntimeException runtimeException) {
        this.f65724d.set(runtimeException);
    }

    /* renamed from: q */
    public void m53262q() {
        if (this.f65726f) {
            m53256i();
            this.f65722b.quit();
        }
        this.f65726f = false;
    }

    /* renamed from: r */
    public void m53263r() {
        if (this.f65726f) {
            return;
        }
        this.f65722b.start();
        this.f65723c = new a(this.f65722b.getLooper());
        this.f65726f = true;
    }

    /* renamed from: s */
    public void m53264s() throws InterruptedException {
        m53252b();
    }

    @VisibleForTesting
    public C13524bg(MediaCodec mediaCodec, HandlerThread handlerThread, ConditionVariable conditionVariable) {
        this.f65721a = mediaCodec;
        this.f65722b = handlerThread;
        this.f65725e = conditionVariable;
        this.f65724d = new AtomicReference<>();
    }
}
