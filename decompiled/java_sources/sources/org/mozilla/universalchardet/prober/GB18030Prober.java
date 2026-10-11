package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.GB2312DistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.GB18030SMModel;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes13.dex */
public class GB18030Prober extends CharsetProber {

    /* renamed from: f */
    public static final SMModel f115540f = new GB18030SMModel();

    /* renamed from: c */
    public CharsetProber.ProbingState f115542c;

    /* renamed from: b */
    public CodingStateMachine f115541b = new CodingStateMachine(f115540f);

    /* renamed from: d */
    public GB2312DistributionAnalysis f115543d = new GB2312DistributionAnalysis();

    /* renamed from: e */
    public byte[] f115544e = new byte[2];

    public GB18030Prober() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_GB18030;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return this.f115543d.getConfidence();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115542c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int nextState = this.f115541b.nextState(bArr[i4]);
            if (nextState == 1) {
                this.f115542c = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (nextState == 2) {
                this.f115542c = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (nextState == 0) {
                int currentCharLen = this.f115541b.getCurrentCharLen();
                if (i4 == i) {
                    byte[] bArr2 = this.f115544e;
                    bArr2[1] = bArr[i];
                    this.f115543d.handleOneChar(bArr2, 0, currentCharLen);
                } else {
                    this.f115543d.handleOneChar(bArr, i4 - 1, currentCharLen);
                }
            }
            i4++;
        }
        this.f115544e[0] = bArr[i3 - 1];
        if (this.f115542c == CharsetProber.ProbingState.DETECTING && this.f115543d.gotEnoughData() && getConfidence() > 0.95f) {
            this.f115542c = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f115542c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115541b.reset();
        this.f115542c = CharsetProber.ProbingState.DETECTING;
        this.f115543d.reset();
        Arrays.fill(this.f115544e, (byte) 0);
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
