package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sunia.HTREnginev2.o6o;
import com.sunia.HTREnginev2.r6o;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class WebvttDecoder extends SimpleSubtitleDecoder {

    /* renamed from: q */
    public static final int f27267q = -1;

    /* renamed from: r */
    public static final int f27268r = 0;

    /* renamed from: s */
    public static final int f27269s = 1;

    /* renamed from: t */
    public static final int f27270t = 2;

    /* renamed from: u */
    public static final int f27271u = 3;

    /* renamed from: v */
    public static final String f27272v = "NOTE";

    /* renamed from: w */
    public static final String f27273w = "STYLE";

    /* renamed from: o */
    public final ParsableByteArray f27274o;

    /* renamed from: p */
    public final o6o f27275p;

    public WebvttDecoder() {
        super("WebvttDecoder");
        this.f27274o = new ParsableByteArray();
        this.f27275p = new o6o();
    }

    /* renamed from: j */
    public static int m20777j(ParsableByteArray parsableByteArray) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = parsableByteArray.getPosition();
            String readLine = parsableByteArray.readLine();
            i = readLine == null ? 0 : f27273w.equals(readLine) ? 2 : readLine.startsWith("NOTE") ? 1 : 3;
        }
        parsableByteArray.setPosition(i2);
        return i;
    }

    /* renamed from: k */
    public static void m20778k(ParsableByteArray parsableByteArray) {
        do {
        } while (!TextUtils.isEmpty(parsableByteArray.readLine()));
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        WebvttCueInfo parseCue;
        this.f27274o.reset(bArr, i);
        ArrayList arrayList = new ArrayList();
        try {
            WebvttParserUtil.validateWebvttHeaderLine(this.f27274o);
            do {
            } while (!TextUtils.isEmpty(this.f27274o.readLine()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int m20777j = m20777j(this.f27274o);
                if (m20777j == 0) {
                    return new r6o(arrayList2);
                }
                if (m20777j == 1) {
                    m20778k(this.f27274o);
                } else if (m20777j == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.f27274o.readLine();
                    arrayList.addAll(this.f27275p.m55919d(this.f27274o));
                } else if (m20777j == 3 && (parseCue = WebvttCueParser.parseCue(this.f27274o, arrayList)) != null) {
                    arrayList2.add(parseCue);
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
