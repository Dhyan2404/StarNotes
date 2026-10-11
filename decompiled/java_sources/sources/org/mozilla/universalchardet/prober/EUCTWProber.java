package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.EUCTWDistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.EUCTWSMModel;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes13.dex */
public class EUCTWProber extends CharsetProber {

    /* renamed from: f */
    public static final SMModel f115527f = new EUCTWSMModel();

    /* renamed from: c */
    public CharsetProber.ProbingState f115529c;

    /* renamed from: b */
    public CodingStateMachine f115528b = new CodingStateMachine(f115527f);

    /* renamed from: d */
    public EUCTWDistributionAnalysis f115530d = new EUCTWDistributionAnalysis();

    /* renamed from: e */
    public byte[] f115531e = new byte[2];

    public EUCTWProber() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_EUC_TW;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return this.f115530d.getConfidence();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115529c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int nextState = this.f115528b.nextState(bArr[i4]);
            if (nextState == 1) {
                this.f115529c = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (nextState == 2) {
                this.f115529c = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (nextState == 0) {
                int currentCharLen = this.f115528b.getCurrentCharLen();
                if (i4 == i) {
                    byte[] bArr2 = this.f115531e;
                    bArr2[1] = bArr[i];
                    this.f115530d.handleOneChar(bArr2, 0, currentCharLen);
                } else {
                    this.f115530d.handleOneChar(bArr, i4 - 1, currentCharLen);
                }
            }
            i4++;
        }
        this.f115531e[0] = bArr[i3 - 1];
        if (this.f115529c == CharsetProber.ProbingState.DETECTING && this.f115530d.gotEnoughData() && getConfidence() > 0.95f) {
            this.f115529c = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f115529c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115528b.reset();
        this.f115529c = CharsetProber.ProbingState.DETECTING;
        this.f115530d.reset();
        Arrays.fill(this.f115531e, (byte) 0);
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
