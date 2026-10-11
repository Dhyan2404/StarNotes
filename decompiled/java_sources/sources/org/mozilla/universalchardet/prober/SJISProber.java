package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.contextanalysis.SJISContextAnalysis;
import org.mozilla.universalchardet.prober.distributionanalysis.SJISDistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.SJISSMModel;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes13.dex */
public class SJISProber extends CharsetProber {

    /* renamed from: g */
    public static final SMModel f115564g = new SJISSMModel();

    /* renamed from: c */
    public CharsetProber.ProbingState f115566c;

    /* renamed from: b */
    public CodingStateMachine f115565b = new CodingStateMachine(f115564g);

    /* renamed from: d */
    public SJISContextAnalysis f115567d = new SJISContextAnalysis();

    /* renamed from: e */
    public SJISDistributionAnalysis f115568e = new SJISDistributionAnalysis();

    /* renamed from: f */
    public byte[] f115569f = new byte[2];

    public SJISProber() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_SHIFT_JIS;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return Math.max(this.f115567d.getConfidence(), this.f115568e.getConfidence());
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115566c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int nextState = this.f115565b.nextState(bArr[i4]);
            if (nextState == 1) {
                this.f115566c = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (nextState == 2) {
                this.f115566c = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (nextState == 0) {
                int currentCharLen = this.f115565b.getCurrentCharLen();
                if (i4 == i) {
                    byte[] bArr2 = this.f115569f;
                    bArr2[1] = bArr[i];
                    this.f115567d.handleOneChar(bArr2, 2 - currentCharLen, currentCharLen);
                    this.f115568e.handleOneChar(this.f115569f, 0, currentCharLen);
                } else {
                    this.f115567d.handleOneChar(bArr, (i4 + 1) - currentCharLen, currentCharLen);
                    this.f115568e.handleOneChar(bArr, i4 - 1, currentCharLen);
                }
            }
            i4++;
        }
        this.f115569f[0] = bArr[i3 - 1];
        if (this.f115566c == CharsetProber.ProbingState.DETECTING && this.f115567d.gotEnoughData() && getConfidence() > 0.95f) {
            this.f115566c = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f115566c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115565b.reset();
        this.f115566c = CharsetProber.ProbingState.DETECTING;
        this.f115567d.reset();
        this.f115568e.reset();
        Arrays.fill(this.f115569f, (byte) 0);
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
