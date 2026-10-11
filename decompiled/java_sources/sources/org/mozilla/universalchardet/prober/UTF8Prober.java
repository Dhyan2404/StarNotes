package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.SMModel;
import org.mozilla.universalchardet.prober.statemachine.UTF8SMModel;

/* loaded from: classes13.dex */
public class UTF8Prober extends CharsetProber {
    public static final float ONE_CHAR_PROB = 0.5f;

    /* renamed from: e */
    public static final SMModel f115579e = new UTF8SMModel();

    /* renamed from: c */
    public CharsetProber.ProbingState f115581c;

    /* renamed from: d */
    public int f115582d = 0;

    /* renamed from: b */
    public CodingStateMachine f115580b = new CodingStateMachine(f115579e);

    public UTF8Prober() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_UTF_8;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        float f = 0.99f;
        if (this.f115582d >= 6) {
            return 0.99f;
        }
        for (int i = 0; i < this.f115582d; i++) {
            f *= 0.5f;
        }
        return 1.0f - f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115581c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (true) {
            if (i >= i3) {
                break;
            }
            int nextState = this.f115580b.nextState(bArr[i]);
            if (nextState == 1) {
                this.f115581c = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (nextState == 2) {
                this.f115581c = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (nextState == 0 && this.f115580b.getCurrentCharLen() >= 2) {
                this.f115582d++;
            }
            i++;
        }
        if (this.f115581c == CharsetProber.ProbingState.DETECTING && getConfidence() > 0.95f) {
            this.f115581c = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f115581c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115580b.reset();
        this.f115582d = 0;
        this.f115581c = CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
