package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.sequence.SequenceModel;

/* loaded from: classes13.dex */
public class SingleByteCharsetProber extends CharsetProber {
    public static final int NEGATIVE_CAT = 0;
    public static final float NEGATIVE_SHORTCUT_THRESHOLD = 0.05f;
    public static final int NUMBER_OF_SEQ_CAT = 4;
    public static final int POSITIVE_CAT = 3;
    public static final float POSITIVE_SHORTCUT_THRESHOLD = 0.95f;
    public static final int SAMPLE_SIZE = 64;
    public static final int SB_ENOUGH_REL_THRESHOLD = 1024;
    public static final int SYMBOL_CAT_ORDER = 250;

    /* renamed from: b */
    public CharsetProber.ProbingState f115570b;

    /* renamed from: c */
    public SequenceModel f115571c;

    /* renamed from: d */
    public boolean f115572d;

    /* renamed from: e */
    public short f115573e;

    /* renamed from: f */
    public int f115574f;

    /* renamed from: g */
    public int[] f115575g;

    /* renamed from: h */
    public int f115576h;

    /* renamed from: i */
    public int f115577i;

    /* renamed from: j */
    public CharsetProber f115578j;

    public SingleByteCharsetProber(SequenceModel sequenceModel) {
        this.f115571c = sequenceModel;
        this.f115572d = false;
        this.f115578j = null;
        this.f115575g = new int[4];
        reset();
    }

    /* renamed from: c */
    public boolean m71698c() {
        return this.f115571c.getKeepEnglishLetter();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        CharsetProber charsetProber = this.f115578j;
        return charsetProber == null ? this.f115571c.getCharsetName() : charsetProber.getCharSetName();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        int i = this.f115574f;
        if (i <= 0) {
            return 0.01f;
        }
        float typicalPositiveRatio = ((((this.f115575g[3] * 1.0f) / i) / this.f115571c.getTypicalPositiveRatio()) * this.f115577i) / this.f115576h;
        if (typicalPositiveRatio >= 1.0f) {
            return 0.99f;
        }
        return typicalPositiveRatio;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115570b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            short order = this.f115571c.getOrder(bArr[i]);
            if (order < 250) {
                this.f115576h++;
            }
            if (order < 64) {
                this.f115577i++;
                short s = this.f115573e;
                if (s < 64) {
                    this.f115574f++;
                    if (this.f115572d) {
                        int[] iArr = this.f115575g;
                        byte precedence = this.f115571c.getPrecedence((order * 64) + s);
                        iArr[precedence] = iArr[precedence] + 1;
                    } else {
                        int[] iArr2 = this.f115575g;
                        byte precedence2 = this.f115571c.getPrecedence((s * 64) + order);
                        iArr2[precedence2] = iArr2[precedence2] + 1;
                    }
                }
            }
            this.f115573e = order;
            i++;
        }
        if (this.f115570b == CharsetProber.ProbingState.DETECTING && this.f115574f > 1024) {
            float confidence = getConfidence();
            if (confidence > 0.95f) {
                this.f115570b = CharsetProber.ProbingState.FOUND_IT;
            } else if (confidence < 0.05f) {
                this.f115570b = CharsetProber.ProbingState.NOT_ME;
            }
        }
        return this.f115570b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115570b = CharsetProber.ProbingState.DETECTING;
        this.f115573e = (short) 255;
        for (int i = 0; i < 4; i++) {
            this.f115575g[i] = 0;
        }
        this.f115574f = 0;
        this.f115576h = 0;
        this.f115577i = 0;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }

    public SingleByteCharsetProber(SequenceModel sequenceModel, boolean z, CharsetProber charsetProber) {
        this.f115571c = sequenceModel;
        this.f115572d = z;
        this.f115578j = charsetProber;
        this.f115575g = new int[4];
        reset();
    }
}
