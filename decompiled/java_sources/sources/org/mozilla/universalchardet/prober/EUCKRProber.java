package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.EUCKRDistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.EUCKRSMModel;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes13.dex */
public class EUCKRProber extends CharsetProber {

    /* renamed from: f */
    public static final SMModel f115522f = new EUCKRSMModel();

    /* renamed from: c */
    public CharsetProber.ProbingState f115524c;

    /* renamed from: b */
    public CodingStateMachine f115523b = new CodingStateMachine(f115522f);

    /* renamed from: d */
    public EUCKRDistributionAnalysis f115525d = new EUCKRDistributionAnalysis();

    /* renamed from: e */
    public byte[] f115526e = new byte[2];

    public EUCKRProber() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_EUC_KR;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return this.f115525d.getConfidence();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115524c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int nextState = this.f115523b.nextState(bArr[i4]);
            if (nextState == 1) {
                this.f115524c = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (nextState == 2) {
                this.f115524c = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (nextState == 0) {
                int currentCharLen = this.f115523b.getCurrentCharLen();
                if (i4 == i) {
                    byte[] bArr2 = this.f115526e;
                    bArr2[1] = bArr[i];
                    this.f115525d.handleOneChar(bArr2, 0, currentCharLen);
                } else {
                    this.f115525d.handleOneChar(bArr, i4 - 1, currentCharLen);
                }
            }
            i4++;
        }
        this.f115526e[0] = bArr[i3 - 1];
        if (this.f115524c == CharsetProber.ProbingState.DETECTING && this.f115525d.gotEnoughData() && getConfidence() > 0.95f) {
            this.f115524c = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f115524c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115523b.reset();
        this.f115524c = CharsetProber.ProbingState.DETECTING;
        this.f115525d.reset();
        Arrays.fill(this.f115526e, (byte) 0);
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
