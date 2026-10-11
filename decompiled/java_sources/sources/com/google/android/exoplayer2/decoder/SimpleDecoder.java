package com.google.android.exoplayer2.decoder;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayDeque;

/* loaded from: classes5.dex */
public abstract class SimpleDecoder<I extends DecoderInputBuffer, O extends DecoderOutputBuffer, E extends DecoderException> implements Decoder<I, O, E> {

    /* renamed from: a */
    public final Thread f23335a;

    /* renamed from: b */
    public final Object f23336b = new Object();

    /* renamed from: c */
    public final ArrayDeque<I> f23337c = new ArrayDeque<>();

    /* renamed from: d */
    public final ArrayDeque<O> f23338d = new ArrayDeque<>();

    /* renamed from: e */
    public final I[] f23339e;

    /* renamed from: f */
    public final O[] f23340f;

    /* renamed from: g */
    public int f23341g;

    /* renamed from: h */
    public int f23342h;

    /* renamed from: i */
    @Nullable
    public I f23343i;

    /* renamed from: j */
    @Nullable
    public E f23344j;

    /* renamed from: k */
    public boolean f23345k;

    /* renamed from: l */
    public boolean f23346l;

    /* renamed from: m */
    public int f23347m;

    /* renamed from: com.google.android.exoplayer2.decoder.SimpleDecoder$a */
    /* loaded from: classes5.dex */
    public class C4711a extends Thread {
        public C4711a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SimpleDecoder.this.m18645h();
        }
    }

    public SimpleDecoder(I[] iArr, O[] oArr) {
        this.f23339e = iArr;
        this.f23341g = iArr.length;
        for (int i = 0; i < this.f23341g; i++) {
            this.f23339e[i] = createInputBuffer();
        }
        this.f23340f = oArr;
        this.f23342h = oArr.length;
        for (int i2 = 0; i2 < this.f23342h; i2++) {
            this.f23340f[i2] = createOutputBuffer();
        }
        C4711a c4711a = new C4711a("ExoPlayer:SimpleDecoder");
        this.f23335a = c4711a;
        c4711a.start();
    }

    /* renamed from: b */
    public final boolean m18639b() {
        return !this.f23337c.isEmpty() && this.f23342h > 0;
    }

    /* renamed from: c */
    public final boolean m18640c() throws InterruptedException {
        E createUnexpectedDecodeException;
        synchronized (this.f23336b) {
            while (!this.f23346l && !m18639b()) {
                this.f23336b.wait();
            }
            if (this.f23346l) {
                return false;
            }
            I removeFirst = this.f23337c.removeFirst();
            O[] oArr = this.f23340f;
            int i = this.f23342h - 1;
            this.f23342h = i;
            O o = oArr[i];
            boolean z = this.f23345k;
            this.f23345k = false;
            if (removeFirst.isEndOfStream()) {
                o.addFlag(4);
            } else {
                if (removeFirst.isDecodeOnly()) {
                    o.addFlag(Integer.MIN_VALUE);
                }
                try {
                    createUnexpectedDecodeException = decode(removeFirst, o, z);
                } catch (OutOfMemoryError e) {
                    createUnexpectedDecodeException = createUnexpectedDecodeException(e);
                } catch (RuntimeException e2) {
                    createUnexpectedDecodeException = createUnexpectedDecodeException(e2);
                }
                if (createUnexpectedDecodeException != null) {
                    synchronized (this.f23336b) {
                        this.f23344j = createUnexpectedDecodeException;
                    }
                    return false;
                }
            }
            synchronized (this.f23336b) {
                if (this.f23345k) {
                    o.release();
                } else if (o.isDecodeOnly()) {
                    this.f23347m++;
                    o.release();
                } else {
                    o.skippedOutputBufferCount = this.f23347m;
                    this.f23347m = 0;
                    this.f23338d.addLast(o);
                }
                m18643f(removeFirst);
            }
            return true;
        }
    }

    public abstract I createInputBuffer();

    public abstract O createOutputBuffer();

    public abstract E createUnexpectedDecodeException(Throwable th);

    /* renamed from: d */
    public final void m18641d() {
        if (m18639b()) {
            this.f23336b.notify();
        }
    }

    @Nullable
    public abstract E decode(I i, O o, boolean z);

    /* renamed from: e */
    public final void m18642e() throws DecoderException {
        E e = this.f23344j;
        if (e != null) {
            throw e;
        }
    }

    /* renamed from: f */
    public final void m18643f(I i) {
        i.clear();
        I[] iArr = this.f23339e;
        int i2 = this.f23341g;
        this.f23341g = i2 + 1;
        iArr[i2] = i;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final void flush() {
        synchronized (this.f23336b) {
            this.f23345k = true;
            this.f23347m = 0;
            I i = this.f23343i;
            if (i != null) {
                m18643f(i);
                this.f23343i = null;
            }
            while (!this.f23337c.isEmpty()) {
                m18643f(this.f23337c.removeFirst());
            }
            while (!this.f23338d.isEmpty()) {
                this.f23338d.removeFirst().release();
            }
        }
    }

    /* renamed from: g */
    public final void m18644g(O o) {
        o.clear();
        O[] oArr = this.f23340f;
        int i = this.f23342h;
        this.f23342h = i + 1;
        oArr[i] = o;
    }

    /* renamed from: h */
    public final void m18645h() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (m18640c());
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    @CallSuper
    public void release() {
        synchronized (this.f23336b) {
            this.f23346l = true;
            this.f23336b.notify();
        }
        try {
            this.f23335a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @CallSuper
    public void releaseOutputBuffer(O o) {
        synchronized (this.f23336b) {
            m18644g(o);
            m18641d();
        }
    }

    public final void setInitialInputBufferSize(int i) {
        Assertions.checkState(this.f23341g == this.f23339e.length);
        for (I i2 : this.f23339e) {
            i2.ensureSpaceForWrite(i);
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public final I dequeueInputBuffer() throws DecoderException {
        I i;
        synchronized (this.f23336b) {
            m18642e();
            Assertions.checkState(this.f23343i == null);
            int i2 = this.f23341g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.f23339e;
                int i3 = i2 - 1;
                this.f23341g = i3;
                i = iArr[i3];
            }
            this.f23343i = i;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public final O dequeueOutputBuffer() throws DecoderException {
        synchronized (this.f23336b) {
            m18642e();
            if (this.f23338d.isEmpty()) {
                return null;
            }
            return this.f23338d.removeFirst();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final void queueInputBuffer(I i) throws DecoderException {
        synchronized (this.f23336b) {
            m18642e();
            Assertions.checkArgument(i == this.f23343i);
            this.f23337c.addLast(i);
            m18641d();
            this.f23343i = null;
        }
    }
}
