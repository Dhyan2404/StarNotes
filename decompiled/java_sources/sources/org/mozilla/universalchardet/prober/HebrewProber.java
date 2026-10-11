package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes13.dex */
public class HebrewProber extends CharsetProber {
    public static final int FINAL_KAF = 234;
    public static final int FINAL_MEM = 237;
    public static final int FINAL_NUN = 239;
    public static final int FINAL_PE = 243;
    public static final int FINAL_TSADI = 245;
    public static final int MIN_FINAL_CHAR_DISTANCE = 5;
    public static final float MIN_MODEL_DISTANCE = 0.01f;
    public static final int NORMAL_KAF = 235;
    public static final int NORMAL_MEM = 238;
    public static final int NORMAL_NUN = 240;
    public static final int NORMAL_PE = 244;
    public static final int NORMAL_TSADI = 246;
    public static final byte SPACE = 32;

    /* renamed from: b */
    public int f115545b;

    /* renamed from: c */
    public int f115546c;

    /* renamed from: d */
    public byte f115547d;

    /* renamed from: e */
    public byte f115548e;

    /* renamed from: f */
    public CharsetProber f115549f = null;

    /* renamed from: g */
    public CharsetProber f115550g = null;

    public HebrewProber() {
        reset();
    }

    public static boolean isFinal(byte b) {
        int i = b & 255;
        return i == 234 || i == 237 || i == 239 || i == 243 || i == 245;
    }

    public static boolean isNonFinal(byte b) {
        int i = b & 255;
        return i == 235 || i == 238 || i == 240 || i == 244;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        int i = this.f115545b - this.f115546c;
        if (i >= 5) {
            return Constants.CHARSET_WINDOWS_1255;
        }
        if (i <= -5) {
            return Constants.CHARSET_ISO_8859_8;
        }
        float confidence = this.f115549f.getConfidence() - this.f115550g.getConfidence();
        if (confidence > 0.01f) {
            return Constants.CHARSET_WINDOWS_1255;
        }
        if (confidence >= -0.01f && i >= 0) {
            return Constants.CHARSET_WINDOWS_1255;
        }
        return Constants.CHARSET_ISO_8859_8;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return 0.0f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        CharsetProber.ProbingState state = this.f115549f.getState();
        CharsetProber.ProbingState probingState = CharsetProber.ProbingState.NOT_ME;
        return (state == probingState && this.f115550g.getState() == probingState) ? probingState : CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        CharsetProber.ProbingState state = getState();
        CharsetProber.ProbingState probingState = CharsetProber.ProbingState.NOT_ME;
        if (state == probingState) {
            return probingState;
        }
        int i3 = i2 + i;
        while (i < i3) {
            byte b = bArr[i];
            if (b == 32) {
                if (this.f115548e != 32) {
                    if (isFinal(this.f115547d)) {
                        this.f115545b++;
                    } else if (isNonFinal(this.f115547d)) {
                        this.f115546c++;
                    }
                }
            } else if (this.f115548e == 32 && isFinal(this.f115547d) && b != 32) {
                this.f115546c++;
            }
            this.f115548e = this.f115547d;
            this.f115547d = b;
            i++;
        }
        return CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115545b = 0;
        this.f115546c = 0;
        this.f115547d = (byte) 32;
        this.f115548e = (byte) 32;
    }

    public void setModalProbers(CharsetProber charsetProber, CharsetProber charsetProber2) {
        this.f115549f = charsetProber;
        this.f115550g = charsetProber2;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
