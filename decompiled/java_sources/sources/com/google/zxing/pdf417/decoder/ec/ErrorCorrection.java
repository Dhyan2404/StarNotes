package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.ChecksumException;
import com.sunia.HTREnginev2.soj;

/* loaded from: classes4.dex */
public final class ErrorCorrection {

    /* renamed from: a */
    public final ModulusGF f38698a = ModulusGF.PDF417_GF;

    /* renamed from: a */
    public final int[] m30721a(soj sojVar) throws ChecksumException {
        int m57218e = sojVar.m57218e();
        int[] iArr = new int[m57218e];
        int i = 0;
        for (int i2 = 1; i2 < this.f38698a.m30728e() && i < m57218e; i2++) {
            if (sojVar.m57215b(i2) == 0) {
                iArr[i] = this.f38698a.m30730g(i2);
                i++;
            }
        }
        if (i == m57218e) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    /* renamed from: b */
    public final int[] m30722b(soj sojVar, soj sojVar2, int[] iArr) {
        int m57218e = sojVar2.m57218e();
        int[] iArr2 = new int[m57218e];
        for (int i = 1; i <= m57218e; i++) {
            iArr2[m57218e - i] = this.f38698a.m30732i(i, sojVar2.m57216c(i));
        }
        soj sojVar3 = new soj(this.f38698a, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int m30730g = this.f38698a.m30730g(iArr[i2]);
            iArr3[i2] = this.f38698a.m30732i(this.f38698a.m30733j(0, sojVar.m57215b(m30730g)), this.f38698a.m30730g(sojVar3.m57215b(m30730g)));
        }
        return iArr3;
    }

    /* renamed from: c */
    public final soj[] m30723c(soj sojVar, soj sojVar2, int i) throws ChecksumException {
        if (sojVar.m57218e() < sojVar2.m57218e()) {
            sojVar2 = sojVar;
            sojVar = sojVar2;
        }
        soj m30729f = this.f38698a.m30729f();
        soj m30727d = this.f38698a.m30727d();
        while (true) {
            soj sojVar3 = sojVar2;
            sojVar2 = sojVar;
            sojVar = sojVar3;
            soj sojVar4 = m30727d;
            soj sojVar5 = m30729f;
            m30729f = sojVar4;
            if (sojVar.m57218e() < i / 2) {
                int m57216c = m30729f.m57216c(0);
                if (m57216c == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int m30730g = this.f38698a.m30730g(m57216c);
                return new soj[]{m30729f.m57220g(m30730g), sojVar.m57220g(m30730g)};
            }
            if (sojVar.m57219f()) {
                throw ChecksumException.getChecksumInstance();
            }
            soj m30729f2 = this.f38698a.m30729f();
            int m30730g2 = this.f38698a.m30730g(sojVar.m57216c(sojVar.m57218e()));
            while (sojVar2.m57218e() >= sojVar.m57218e() && !sojVar2.m57219f()) {
                int m57218e = sojVar2.m57218e() - sojVar.m57218e();
                int m30732i = this.f38698a.m30732i(sojVar2.m57216c(sojVar2.m57218e()), m30730g2);
                m30729f2 = m30729f2.m57214a(this.f38698a.m30725b(m57218e, m30732i));
                sojVar2 = sojVar2.m57224k(sojVar.m57222i(m57218e, m30732i));
            }
            m30727d = m30729f2.m57221h(m30729f).m57224k(sojVar5).m57223j();
        }
    }

    public int decode(int[] iArr, int i, int[] iArr2) throws ChecksumException {
        soj sojVar = new soj(this.f38698a, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int m57215b = sojVar.m57215b(this.f38698a.m30726c(i2));
            iArr3[i - i2] = m57215b;
            if (m57215b != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        soj m30727d = this.f38698a.m30727d();
        if (iArr2 != null) {
            for (int i3 : iArr2) {
                int m30726c = this.f38698a.m30726c((iArr.length - 1) - i3);
                ModulusGF modulusGF = this.f38698a;
                m30727d = m30727d.m57221h(new soj(modulusGF, new int[]{modulusGF.m30733j(0, m30726c), 1}));
            }
        }
        soj[] m30723c = m30723c(this.f38698a.m30725b(i, 1), new soj(this.f38698a, iArr3), i);
        soj sojVar2 = m30723c[0];
        soj sojVar3 = m30723c[1];
        int[] m30721a = m30721a(sojVar2);
        int[] m30722b = m30722b(sojVar3, sojVar2, m30721a);
        for (int i4 = 0; i4 < m30721a.length; i4++) {
            int length = (iArr.length - 1) - this.f38698a.m30731h(m30721a[i4]);
            if (length < 0) {
                throw ChecksumException.getChecksumInstance();
            }
            iArr[length] = this.f38698a.m30733j(iArr[length], m30722b[i4]);
        }
        return m30721a.length;
    }
}
