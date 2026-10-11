package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.npj;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes5.dex */
public final class Mp4WebvttDecoder extends SimpleSubtitleDecoder {

    /* renamed from: p */
    public static final int f27193p = 8;

    /* renamed from: q */
    public static final int f27194q = 1885436268;

    /* renamed from: r */
    public static final int f27195r = 1937011815;

    /* renamed from: s */
    public static final int f27196s = 1987343459;

    /* renamed from: o */
    public final ParsableByteArray f27197o;

    public Mp4WebvttDecoder() {
        super("Mp4WebvttDecoder");
        this.f27197o = new ParsableByteArray();
    }

    /* renamed from: j */
    public static Cue m20738j(ParsableByteArray parsableByteArray, int i) throws SubtitleDecoderException {
        CharSequence charSequence = null;
        Cue.Builder builder = null;
        while (i > 0) {
            if (i < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            int i2 = readInt - 8;
            String fromUtf8Bytes = Util.fromUtf8Bytes(parsableByteArray.getData(), parsableByteArray.getPosition(), i2);
            parsableByteArray.skipBytes(i2);
            i = (i - 8) - i2;
            if (readInt2 == 1937011815) {
                builder = WebvttCueParser.m20753n(fromUtf8Bytes);
            } else if (readInt2 == 1885436268) {
                charSequence = WebvttCueParser.m20755p(null, fromUtf8Bytes.trim(), Collections.emptyList());
            }
        }
        if (charSequence == null) {
            charSequence = "";
        }
        return builder != null ? builder.setText(charSequence).build() : WebvttCueParser.m20751l(charSequence);
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f27197o.reset(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.f27197o.bytesLeft() > 0) {
            if (this.f27197o.bytesLeft() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int readInt = this.f27197o.readInt();
            if (this.f27197o.readInt() == 1987343459) {
                arrayList.add(m20738j(this.f27197o, readInt - 8));
            } else {
                this.f27197o.skipBytes(readInt - 8);
            }
        }
        return new npj(arrayList);
    }
}
