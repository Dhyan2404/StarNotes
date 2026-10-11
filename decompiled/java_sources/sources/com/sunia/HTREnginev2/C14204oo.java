package com.sunia.HTREnginev2;

import androidx.annotation.IntRange;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import java.nio.ByteBuffer;

/* renamed from: com.sunia.HTREnginev2.oo */
/* loaded from: classes5.dex */
public final class C14204oo extends DecoderInputBuffer {

    /* renamed from: k */
    public static final int f79970k = 32;

    /* renamed from: l */
    @VisibleForTesting
    public static final int f79971l = 3072000;

    /* renamed from: h */
    public long f79972h;

    /* renamed from: i */
    public int f79973i;

    /* renamed from: j */
    public int f79974j;

    public C14204oo() {
        super(2);
        this.f79974j = 32;
    }

    /* renamed from: b */
    public boolean m56127b(DecoderInputBuffer decoderInputBuffer) {
        Assertions.checkArgument(!decoderInputBuffer.isEncrypted());
        Assertions.checkArgument(!decoderInputBuffer.hasSupplementalData());
        Assertions.checkArgument(!decoderInputBuffer.isEndOfStream());
        if (!m56128c(decoderInputBuffer)) {
            return false;
        }
        int i = this.f79973i;
        this.f79973i = i + 1;
        if (i == 0) {
            this.timeUs = decoderInputBuffer.timeUs;
            if (decoderInputBuffer.isKeyFrame()) {
                setFlags(1);
            }
        }
        if (decoderInputBuffer.isDecodeOnly()) {
            setFlags(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = decoderInputBuffer.data;
        if (byteBuffer != null) {
            ensureSpaceForWrite(byteBuffer.remaining());
            this.data.put(byteBuffer);
        }
        this.f79972h = decoderInputBuffer.timeUs;
        return true;
    }

    /* renamed from: c */
    public final boolean m56128c(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!m56132g()) {
            return true;
        }
        if (this.f79973i >= this.f79974j || decoderInputBuffer.isDecodeOnly() != isDecodeOnly()) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.data;
        return byteBuffer2 == null || (byteBuffer = this.data) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, com.google.android.exoplayer2.decoder.Buffer
    public void clear() {
        super.clear();
        this.f79973i = 0;
    }

    /* renamed from: d */
    public long m56129d() {
        return this.timeUs;
    }

    /* renamed from: e */
    public long m56130e() {
        return this.f79972h;
    }

    /* renamed from: f */
    public int m56131f() {
        return this.f79973i;
    }

    /* renamed from: g */
    public boolean m56132g() {
        return this.f79973i > 0;
    }

    /* renamed from: h */
    public void m56133h(@IntRange(from = 1) int i) {
        Assertions.checkArgument(i > 0);
        this.f79974j = i;
    }
}
