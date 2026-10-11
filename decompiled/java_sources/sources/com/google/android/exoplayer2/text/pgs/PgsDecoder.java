package com.google.android.exoplayer2.text.pgs;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.r3l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* loaded from: classes5.dex */
public final class PgsDecoder extends SimpleSubtitleDecoder {

    /* renamed from: s */
    public static final int f27013s = 20;

    /* renamed from: t */
    public static final int f27014t = 21;

    /* renamed from: u */
    public static final int f27015u = 22;

    /* renamed from: v */
    public static final int f27016v = 128;

    /* renamed from: w */
    public static final byte f27017w = 120;

    /* renamed from: o */
    public final ParsableByteArray f27018o;

    /* renamed from: p */
    public final ParsableByteArray f27019p;

    /* renamed from: q */
    public final C4944a f27020q;

    /* renamed from: r */
    @Nullable
    public Inflater f27021r;

    /* renamed from: com.google.android.exoplayer2.text.pgs.PgsDecoder$a */
    /* loaded from: classes5.dex */
    public static final class C4944a {

        /* renamed from: a */
        public final ParsableByteArray f27022a = new ParsableByteArray();

        /* renamed from: b */
        public final int[] f27023b = new int[256];

        /* renamed from: c */
        public boolean f27024c;

        /* renamed from: d */
        public int f27025d;

        /* renamed from: e */
        public int f27026e;

        /* renamed from: f */
        public int f27027f;

        /* renamed from: g */
        public int f27028g;

        /* renamed from: h */
        public int f27029h;

        /* renamed from: i */
        public int f27030i;

        @Nullable
        /* renamed from: d */
        public Cue m20644d() {
            int i;
            if (this.f27025d == 0 || this.f27026e == 0 || this.f27029h == 0 || this.f27030i == 0 || this.f27022a.limit() == 0 || this.f27022a.getPosition() != this.f27022a.limit() || !this.f27024c) {
                return null;
            }
            this.f27022a.setPosition(0);
            int i2 = this.f27029h * this.f27030i;
            int[] iArr = new int[i2];
            int i3 = 0;
            while (i3 < i2) {
                int readUnsignedByte = this.f27022a.readUnsignedByte();
                if (readUnsignedByte != 0) {
                    i = i3 + 1;
                    iArr[i3] = this.f27023b[readUnsignedByte];
                } else {
                    int readUnsignedByte2 = this.f27022a.readUnsignedByte();
                    if (readUnsignedByte2 != 0) {
                        i = ((readUnsignedByte2 & 64) == 0 ? readUnsignedByte2 & 63 : ((readUnsignedByte2 & 63) << 8) | this.f27022a.readUnsignedByte()) + i3;
                        Arrays.fill(iArr, i3, i, (readUnsignedByte2 & 128) == 0 ? 0 : this.f27023b[this.f27022a.readUnsignedByte()]);
                    }
                }
                i3 = i;
            }
            return new Cue.Builder().setBitmap(Bitmap.createBitmap(iArr, this.f27029h, this.f27030i, Bitmap.Config.ARGB_8888)).setPosition(this.f27027f / this.f27025d).setPositionAnchor(0).setLine(this.f27028g / this.f27026e, 0).setLineAnchor(0).setSize(this.f27029h / this.f27025d).setBitmapHeight(this.f27030i / this.f27026e).build();
        }

        /* renamed from: e */
        public final void m20645e(ParsableByteArray parsableByteArray, int i) {
            int readUnsignedInt24;
            if (i < 4) {
                return;
            }
            parsableByteArray.skipBytes(3);
            int i2 = i - 4;
            if ((parsableByteArray.readUnsignedByte() & 128) != 0) {
                if (i2 < 7 || (readUnsignedInt24 = parsableByteArray.readUnsignedInt24()) < 4) {
                    return;
                }
                this.f27029h = parsableByteArray.readUnsignedShort();
                this.f27030i = parsableByteArray.readUnsignedShort();
                this.f27022a.reset(readUnsignedInt24 - 4);
                i2 -= 7;
            }
            int position = this.f27022a.getPosition();
            int limit = this.f27022a.limit();
            if (position >= limit || i2 <= 0) {
                return;
            }
            int min = Math.min(i2, limit - position);
            parsableByteArray.readBytes(this.f27022a.getData(), position, min);
            this.f27022a.setPosition(position + min);
        }

        /* renamed from: f */
        public final void m20646f(ParsableByteArray parsableByteArray, int i) {
            if (i < 19) {
                return;
            }
            this.f27025d = parsableByteArray.readUnsignedShort();
            this.f27026e = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(11);
            this.f27027f = parsableByteArray.readUnsignedShort();
            this.f27028g = parsableByteArray.readUnsignedShort();
        }

        /* renamed from: g */
        public final void m20647g(ParsableByteArray parsableByteArray, int i) {
            if (i % 5 != 2) {
                return;
            }
            parsableByteArray.skipBytes(2);
            Arrays.fill(this.f27023b, 0);
            int i2 = i / 5;
            for (int i3 = 0; i3 < i2; i3++) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                int readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                double d = readUnsignedByte2;
                double d2 = readUnsignedByte3 - 128;
                double d3 = readUnsignedByte4 - 128;
                this.f27023b[readUnsignedByte] = (Util.constrainValue((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255) << 8) | (parsableByteArray.readUnsignedByte() << 24) | (Util.constrainValue((int) ((1.402d * d2) + d), 0, 255) << 16) | Util.constrainValue((int) (d + (d3 * 1.772d)), 0, 255);
            }
            this.f27024c = true;
        }

        /* renamed from: h */
        public void m20648h() {
            this.f27025d = 0;
            this.f27026e = 0;
            this.f27027f = 0;
            this.f27028g = 0;
            this.f27029h = 0;
            this.f27030i = 0;
            this.f27022a.reset(0);
            this.f27024c = false;
        }
    }

    public PgsDecoder() {
        super("PgsDecoder");
        this.f27018o = new ParsableByteArray();
        this.f27019p = new ParsableByteArray();
        this.f27020q = new C4944a();
    }

    @Nullable
    /* renamed from: k */
    public static Cue m20639k(ParsableByteArray parsableByteArray, C4944a c4944a) {
        int limit = parsableByteArray.limit();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition() + readUnsignedShort;
        Cue cue = null;
        if (position > limit) {
            parsableByteArray.setPosition(limit);
            return null;
        }
        if (readUnsignedByte != 128) {
            switch (readUnsignedByte) {
                case 20:
                    c4944a.m20647g(parsableByteArray, readUnsignedShort);
                    break;
                case 21:
                    c4944a.m20645e(parsableByteArray, readUnsignedShort);
                    break;
                case 22:
                    c4944a.m20646f(parsableByteArray, readUnsignedShort);
                    break;
            }
        } else {
            cue = c4944a.m20644d();
            c4944a.m20648h();
        }
        parsableByteArray.setPosition(position);
        return cue;
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f27018o.reset(bArr, i);
        m20640j(this.f27018o);
        this.f27020q.m20648h();
        ArrayList arrayList = new ArrayList();
        while (this.f27018o.bytesLeft() >= 3) {
            Cue m20639k = m20639k(this.f27018o, this.f27020q);
            if (m20639k != null) {
                arrayList.add(m20639k);
            }
        }
        return new r3l(Collections.unmodifiableList(arrayList));
    }

    /* renamed from: j */
    public final void m20640j(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() <= 0 || parsableByteArray.peekUnsignedByte() != 120) {
            return;
        }
        if (this.f27021r == null) {
            this.f27021r = new Inflater();
        }
        if (Util.inflate(parsableByteArray, this.f27019p, this.f27021r)) {
            parsableByteArray.reset(this.f27019p.getData(), this.f27019p.limit());
        }
    }
}
