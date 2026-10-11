package com.google.android.exoplayer2.text.tx3g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Charsets;
import com.sunia.HTREnginev2.non;
import java.util.List;

/* loaded from: classes5.dex */
public final class Tx3gDecoder extends SimpleSubtitleDecoder {

    /* renamed from: A */
    public static final String f27167A = "Serif";

    /* renamed from: B */
    public static final int f27168B = 8;

    /* renamed from: C */
    public static final int f27169C = 2;

    /* renamed from: D */
    public static final int f27170D = 2;

    /* renamed from: E */
    public static final int f27171E = 12;

    /* renamed from: F */
    public static final int f27172F = 1;

    /* renamed from: G */
    public static final int f27173G = 2;

    /* renamed from: H */
    public static final int f27174H = 4;

    /* renamed from: I */
    public static final int f27175I = 16711680;

    /* renamed from: J */
    public static final int f27176J = 0;

    /* renamed from: K */
    public static final int f27177K = 0;

    /* renamed from: L */
    public static final int f27178L = -1;

    /* renamed from: M */
    public static final String f27179M = "sans-serif";

    /* renamed from: N */
    public static final float f27180N = 0.85f;

    /* renamed from: v */
    public static final String f27181v = "Tx3gDecoder";

    /* renamed from: w */
    public static final char f27182w = 65279;

    /* renamed from: x */
    public static final char f27183x = 65534;

    /* renamed from: y */
    public static final int f27184y = 1937013100;

    /* renamed from: z */
    public static final int f27185z = 1952608120;

    /* renamed from: o */
    public final ParsableByteArray f27186o;

    /* renamed from: p */
    public final boolean f27187p;

    /* renamed from: q */
    public final int f27188q;

    /* renamed from: r */
    public final int f27189r;

    /* renamed from: s */
    public final String f27190s;

    /* renamed from: t */
    public final float f27191t;

    /* renamed from: u */
    public final int f27192u;

    public Tx3gDecoder(List<byte[]> list) {
        super(f27181v);
        this.f27186o = new ParsableByteArray();
        if (list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f27188q = 0;
            this.f27189r = -1;
            this.f27190s = "sans-serif";
            this.f27187p = false;
            this.f27191t = 0.85f;
            this.f27192u = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.f27188q = bArr[24];
        this.f27189r = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f27190s = "Serif".equals(Util.fromUtf8Bytes(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i = bArr[25] * 20;
        this.f27192u = i;
        boolean z = (bArr[0] & 32) != 0;
        this.f27187p = z;
        if (z) {
            this.f27191t = Util.constrainValue(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.0f, 0.95f);
        } else {
            this.f27191t = 0.85f;
        }
    }

    /* renamed from: k */
    public static void m20732k(boolean z) throws SubtitleDecoderException {
        if (!z) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    /* renamed from: l */
    public static void m20733l(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    /* renamed from: m */
    public static void m20734m(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }

    /* renamed from: n */
    public static void m20735n(SpannableStringBuilder spannableStringBuilder, String str, int i, int i2) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i, i2, 16711713);
        }
    }

    /* renamed from: o */
    public static String m20736o(ParsableByteArray parsableByteArray) throws SubtitleDecoderException {
        char peekChar;
        m20732k(parsableByteArray.bytesLeft() >= 2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        return readUnsignedShort == 0 ? "" : (parsableByteArray.bytesLeft() < 2 || !((peekChar = parsableByteArray.peekChar()) == 65279 || peekChar == 65534)) ? parsableByteArray.readString(readUnsignedShort, Charsets.UTF_8) : parsableByteArray.readString(readUnsignedShort, Charsets.UTF_16);
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f27186o.reset(bArr, i);
        String m20736o = m20736o(this.f27186o);
        if (m20736o.isEmpty()) {
            return non.f78867f;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(m20736o);
        m20734m(spannableStringBuilder, this.f27188q, 0, 0, spannableStringBuilder.length(), 16711680);
        m20733l(spannableStringBuilder, this.f27189r, -1, 0, spannableStringBuilder.length(), 16711680);
        m20735n(spannableStringBuilder, this.f27190s, 0, spannableStringBuilder.length());
        float f = this.f27191t;
        while (this.f27186o.bytesLeft() >= 8) {
            int position = this.f27186o.getPosition();
            int readInt = this.f27186o.readInt();
            int readInt2 = this.f27186o.readInt();
            if (readInt2 == 1937013100) {
                m20732k(this.f27186o.bytesLeft() >= 2);
                int readUnsignedShort = this.f27186o.readUnsignedShort();
                for (int i2 = 0; i2 < readUnsignedShort; i2++) {
                    m20737j(this.f27186o, spannableStringBuilder);
                }
            } else if (readInt2 == 1952608120 && this.f27187p) {
                m20732k(this.f27186o.bytesLeft() >= 2);
                f = Util.constrainValue(this.f27186o.readUnsignedShort() / this.f27192u, 0.0f, 0.95f);
            }
            this.f27186o.setPosition(position + readInt);
        }
        return new non(new Cue.Builder().setText(spannableStringBuilder).setLine(f, 0).setLineAnchor(0).build());
    }

    /* renamed from: j */
    public final void m20737j(ParsableByteArray parsableByteArray, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        m20732k(parsableByteArray.bytesLeft() >= 12);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.skipBytes(1);
        int readInt = parsableByteArray.readInt();
        if (readUnsignedShort2 > spannableStringBuilder.length()) {
            int length = spannableStringBuilder.length();
            StringBuilder sb = new StringBuilder(68);
            sb.append("Truncating styl end (");
            sb.append(readUnsignedShort2);
            sb.append(") to cueText.length() (");
            sb.append(length);
            sb.append(").");
            Log.m21493w(f27181v, sb.toString());
            readUnsignedShort2 = spannableStringBuilder.length();
        }
        if (readUnsignedShort < readUnsignedShort2) {
            int i = readUnsignedShort2;
            m20734m(spannableStringBuilder, readUnsignedByte, this.f27188q, readUnsignedShort, i, 0);
            m20733l(spannableStringBuilder, readInt, this.f27189r, readUnsignedShort, i, 0);
            return;
        }
        StringBuilder sb2 = new StringBuilder(60);
        sb2.append("Ignoring styl with start (");
        sb2.append(readUnsignedShort);
        sb2.append(") >= end (");
        sb2.append(readUnsignedShort2);
        sb2.append(").");
        Log.m21493w(f27181v, sb2.toString());
    }
}
