package org.mozilla.universalchardet.prober;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes13.dex */
public class MBCSGroupProber extends CharsetProber {

    /* renamed from: b */
    public CharsetProber.ProbingState f115556b;

    /* renamed from: c */
    public List<CharsetProber> f115557c;

    /* renamed from: d */
    public CharsetProber f115558d;

    /* renamed from: e */
    public int f115559e;

    public MBCSGroupProber() {
        ArrayList arrayList = new ArrayList();
        this.f115557c = arrayList;
        arrayList.add(new UTF8Prober());
        this.f115557c.add(new SJISProber());
        this.f115557c.add(new EUCJPProber());
        this.f115557c.add(new GB18030Prober());
        this.f115557c.add(new EUCKRProber());
        this.f115557c.add(new Big5Prober());
        this.f115557c.add(new EUCTWProber());
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        if (this.f115558d == null) {
            getConfidence();
            if (this.f115558d == null) {
                this.f115558d = this.f115557c.get(0);
            }
        }
        return this.f115558d.getCharSetName();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        CharsetProber.ProbingState probingState = this.f115556b;
        if (probingState == CharsetProber.ProbingState.FOUND_IT) {
            return 0.99f;
        }
        if (probingState == CharsetProber.ProbingState.NOT_ME) {
            return 0.01f;
        }
        float f = 0.0f;
        for (CharsetProber charsetProber : this.f115557c) {
            if (charsetProber.isActive()) {
                float confidence = charsetProber.getConfidence();
                if (f < confidence) {
                    this.f115558d = charsetProber;
                    f = confidence;
                }
            }
        }
        return f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.f115556b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        int i3 = i2 + i;
        boolean z = true;
        int i4 = 0;
        while (i < i3) {
            byte b = bArr[i];
            if ((b & 128) != 0) {
                bArr2[i4] = b;
                i4++;
                z = true;
            } else if (z) {
                bArr2[i4] = b;
                i4++;
                z = false;
            }
            i++;
        }
        Iterator<CharsetProber> it2 = this.f115557c.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            CharsetProber next = it2.next();
            if (next.isActive()) {
                CharsetProber.ProbingState handleData = next.handleData(bArr2, 0, i4);
                CharsetProber.ProbingState probingState = CharsetProber.ProbingState.FOUND_IT;
                if (handleData == probingState) {
                    this.f115558d = next;
                    this.f115556b = probingState;
                    break;
                }
                CharsetProber.ProbingState probingState2 = CharsetProber.ProbingState.NOT_ME;
                if (handleData == probingState2) {
                    next.setActive(false);
                    int i5 = this.f115559e - 1;
                    this.f115559e = i5;
                    if (i5 <= 0) {
                        this.f115556b = probingState2;
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return this.f115556b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.f115559e = 0;
        for (CharsetProber charsetProber : this.f115557c) {
            charsetProber.reset();
            charsetProber.setActive(true);
            this.f115559e++;
        }
        this.f115558d = null;
        this.f115556b = CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
