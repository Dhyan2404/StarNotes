package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.contextanalysis.EUCJPContextAnalysis;
import org.mozilla.universalchardet.prober.distributionanalysis.EUCJPDistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.EUCJPSMModel;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes13.dex */
public class EUCJPProber extends CharsetProber {

    /* renamed from: g */
    public static final SMModel f115516g = new EUCJPSMModel();

    /* renamed from: c */
    public CharsetProber.ProbingState f115518c;

    /* renamed from: b */
    public CodingStateMachine f115517b = new CodingStateMachine(f115516g);

    /* renamed from: d */
    public EUCJPContextAnalysis f115519d = new EUCJPContextAnalysis();

    /* renamed from: e */
    public EUCJPDistributionAnalysis f115520e = new EUCJPDistributionAnalysis();

    /* renamed from: f */
    public byte[] f115521f = new byte[2];

    public EUCJPProber() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_EUC_JP;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return Math.max(this.f115519d.getConfidence(), this.f115520e.getConfidence());
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115518c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int nextState = this.f115517b.nextState(bArr[i4]);
            if (nextState == 1) {
                this.f115518c = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (nextState == 2) {
                this.f115518c = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (nextState == 0) {
                int currentCharLen = this.f115517b.getCurrentCharLen();
                if (i4 == i) {
                    byte[] bArr2 = this.f115521f;
                    bArr2[1] = bArr[i];
                    this.f115519d.handleOneChar(bArr2, 0, currentCharLen);
                    this.f115520e.handleOneChar(this.f115521f, 0, currentCharLen);
                } else {
                    int i5 = i4 - 1;
                    this.f115519d.handleOneChar(bArr, i5, currentCharLen);
                    this.f115520e.handleOneChar(bArr, i5, currentCharLen);
                }
            }
            i4++;
        }
        this.f115521f[0] = bArr[i3 - 1];
        if (this.f115518c == CharsetProber.ProbingState.DETECTING && this.f115519d.gotEnoughData() && getConfidence() > 0.95f) {
            this.f115518c = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f115518c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115517b.reset();
        this.f115518c = CharsetProber.ProbingState.DETECTING;
        this.f115519d.reset();
        this.f115520e.reset();
        Arrays.fill(this.f115521f, (byte) 0);
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
