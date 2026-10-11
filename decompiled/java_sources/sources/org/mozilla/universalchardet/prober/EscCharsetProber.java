package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.HZSMModel;
import org.mozilla.universalchardet.prober.statemachine.ISO2022CNSMModel;
import org.mozilla.universalchardet.prober.statemachine.ISO2022JPSMModel;
import org.mozilla.universalchardet.prober.statemachine.ISO2022KRSMModel;

/* loaded from: classes13.dex */
public class EscCharsetProber extends CharsetProber {

    /* renamed from: f */
    public static final HZSMModel f115532f = new HZSMModel();

    /* renamed from: g */
    public static final ISO2022CNSMModel f115533g = new ISO2022CNSMModel();

    /* renamed from: h */
    public static final ISO2022JPSMModel f115534h = new ISO2022JPSMModel();

    /* renamed from: i */
    public static final ISO2022KRSMModel f115535i = new ISO2022KRSMModel();

    /* renamed from: b */
    public CodingStateMachine[] f115536b;

    /* renamed from: c */
    public int f115537c;

    /* renamed from: d */
    public CharsetProber.ProbingState f115538d;

    /* renamed from: e */
    public String f115539e;

    public EscCharsetProber() {
        CodingStateMachine[] codingStateMachineArr = new CodingStateMachine[4];
        this.f115536b = codingStateMachineArr;
        codingStateMachineArr[0] = new CodingStateMachine(f115532f);
        this.f115536b[1] = new CodingStateMachine(f115533g);
        this.f115536b[2] = new CodingStateMachine(f115534h);
        this.f115536b[3] = new CodingStateMachine(f115535i);
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return this.f115539e;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return 0.99f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115538d;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        while (i < i3 && this.f115538d == CharsetProber.ProbingState.DETECTING) {
            for (int i4 = this.f115537c - 1; i4 >= 0; i4--) {
                int nextState = this.f115536b[i4].nextState(bArr[i]);
                if (nextState == 1) {
                    int i5 = this.f115537c - 1;
                    this.f115537c = i5;
                    if (i5 <= 0) {
                        CharsetProber.ProbingState probingState = CharsetProber.ProbingState.NOT_ME;
                        this.f115538d = probingState;
                        return probingState;
                    }
                    if (i4 != i5) {
                        CodingStateMachine[] codingStateMachineArr = this.f115536b;
                        CodingStateMachine codingStateMachine = codingStateMachineArr[i5];
                        codingStateMachineArr[i5] = codingStateMachineArr[i4];
                        codingStateMachineArr[i4] = codingStateMachine;
                    }
                } else if (nextState == 2) {
                    this.f115538d = CharsetProber.ProbingState.FOUND_IT;
                    this.f115539e = this.f115536b[i4].getCodingStateMachine();
                    return this.f115538d;
                }
            }
            i++;
        }
        return this.f115538d;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115538d = CharsetProber.ProbingState.DETECTING;
        int i = 0;
        while (true) {
            CodingStateMachine[] codingStateMachineArr = this.f115536b;
            if (i >= codingStateMachineArr.length) {
                this.f115537c = codingStateMachineArr.length;
                this.f115539e = null;
                return;
            } else {
                codingStateMachineArr[i].reset();
                i++;
            }
        }
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
