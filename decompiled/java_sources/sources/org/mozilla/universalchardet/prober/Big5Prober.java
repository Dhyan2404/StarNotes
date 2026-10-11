package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.Big5DistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.Big5SMModel;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes13.dex */
public class Big5Prober extends CharsetProber {

    /* renamed from: f */
    public static final SMModel f115510f = new Big5SMModel();

    /* renamed from: c */
    public CharsetProber.ProbingState f115512c;

    /* renamed from: b */
    public CodingStateMachine f115511b = new CodingStateMachine(f115510f);

    /* renamed from: d */
    public Big5DistributionAnalysis f115513d = new Big5DistributionAnalysis();

    /* renamed from: e */
    public byte[] f115514e = new byte[2];

    public Big5Prober() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_BIG5;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return this.f115513d.getConfidence();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115512c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = i;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            int nextState = this.f115511b.nextState(bArr[i4]);
            if (nextState == 1) {
                this.f115512c = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (nextState == 2) {
                this.f115512c = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (nextState == 0) {
                int currentCharLen = this.f115511b.getCurrentCharLen();
                if (i4 == i) {
                    byte[] bArr2 = this.f115514e;
                    bArr2[1] = bArr[i];
                    this.f115513d.handleOneChar(bArr2, 0, currentCharLen);
                } else {
                    this.f115513d.handleOneChar(bArr, i4 - 1, currentCharLen);
                }
            }
            i4++;
        }
        this.f115514e[0] = bArr[i3 - 1];
        if (this.f115512c == CharsetProber.ProbingState.DETECTING && this.f115513d.gotEnoughData() && getConfidence() > 0.95f) {
            this.f115512c = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.f115512c;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115511b.reset();
        this.f115512c = CharsetProber.ProbingState.DETECTING;
        this.f115513d.reset();
        Arrays.fill(this.f115514e, (byte) 0);
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
