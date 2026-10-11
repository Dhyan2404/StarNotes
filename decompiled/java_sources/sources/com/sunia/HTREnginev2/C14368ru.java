package com.sunia.HTREnginev2;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* renamed from: com.sunia.HTREnginev2.ru */
/* loaded from: classes4.dex */
public final class C14368ru {

    /* renamed from: a */
    public BitMatrix f83472a;

    /* renamed from: b */
    public ResultPoint f83473b;

    /* renamed from: c */
    public ResultPoint f83474c;

    /* renamed from: d */
    public ResultPoint f83475d;

    /* renamed from: e */
    public ResultPoint f83476e;

    /* renamed from: f */
    public int f83477f;

    /* renamed from: g */
    public int f83478g;

    /* renamed from: h */
    public int f83479h;

    /* renamed from: i */
    public int f83480i;

    public C14368ru(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        if ((resultPoint == null && resultPoint3 == null) || ((resultPoint2 == null && resultPoint4 == null) || ((resultPoint != null && resultPoint2 == null) || (resultPoint3 != null && resultPoint4 == null)))) {
            throw NotFoundException.getNotFoundInstance();
        }
        m57018k(bitMatrix, resultPoint, resultPoint2, resultPoint3, resultPoint4);
    }

    /* renamed from: l */
    public static C14368ru m57007l(C14368ru c14368ru, C14368ru c14368ru2) throws NotFoundException {
        return c14368ru == null ? c14368ru2 : c14368ru2 == null ? c14368ru : new C14368ru(c14368ru.f83472a, c14368ru.f83473b, c14368ru.f83474c, c14368ru2.f83475d, c14368ru2.f83476e);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sunia.HTREnginev2.C14368ru m57008a(int r13, int r14, boolean r15) throws com.google.zxing.NotFoundException {
        /*
            r12 = this;
            com.google.zxing.ResultPoint r0 = r12.f83473b
            com.google.zxing.ResultPoint r1 = r12.f83474c
            com.google.zxing.ResultPoint r2 = r12.f83475d
            com.google.zxing.ResultPoint r3 = r12.f83476e
            if (r13 <= 0) goto L29
            if (r15 == 0) goto Le
            r4 = r0
            goto Lf
        Le:
            r4 = r2
        Lf:
            float r5 = r4.getY()
            int r5 = (int) r5
            int r5 = r5 - r13
            if (r5 >= 0) goto L18
            r5 = 0
        L18:
            com.google.zxing.ResultPoint r13 = new com.google.zxing.ResultPoint
            float r4 = r4.getX()
            float r5 = (float) r5
            r13.<init>(r4, r5)
            if (r15 == 0) goto L26
            r8 = r13
            goto L2a
        L26:
            r10 = r13
            r8 = r0
            goto L2b
        L29:
            r8 = r0
        L2a:
            r10 = r2
        L2b:
            if (r14 <= 0) goto L5b
            if (r15 == 0) goto L32
            com.google.zxing.ResultPoint r13 = r12.f83474c
            goto L34
        L32:
            com.google.zxing.ResultPoint r13 = r12.f83476e
        L34:
            float r0 = r13.getY()
            int r0 = (int) r0
            int r0 = r0 + r14
            com.google.zxing.common.BitMatrix r14 = r12.f83472a
            int r14 = r14.getHeight()
            if (r0 < r14) goto L4a
            com.google.zxing.common.BitMatrix r14 = r12.f83472a
            int r14 = r14.getHeight()
            int r0 = r14 + (-1)
        L4a:
            com.google.zxing.ResultPoint r14 = new com.google.zxing.ResultPoint
            float r13 = r13.getX()
            float r0 = (float) r0
            r14.<init>(r13, r0)
            if (r15 == 0) goto L58
            r9 = r14
            goto L5c
        L58:
            r11 = r14
            r9 = r1
            goto L5d
        L5b:
            r9 = r1
        L5c:
            r11 = r3
        L5d:
            r12.m57009b()
            com.sunia.HTREnginev2.ru r13 = new com.sunia.HTREnginev2.ru
            com.google.zxing.common.BitMatrix r7 = r12.f83472a
            r6 = r13
            r6.<init>(r7, r8, r9, r10, r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C14368ru.m57008a(int, int, boolean):com.sunia.HTREnginev2.ru");
    }

    /* renamed from: b */
    public final void m57009b() {
        if (this.f83473b == null) {
            this.f83473b = new ResultPoint(0.0f, this.f83475d.getY());
            this.f83474c = new ResultPoint(0.0f, this.f83476e.getY());
        } else if (this.f83475d == null) {
            this.f83475d = new ResultPoint(this.f83472a.getWidth() - 1, this.f83473b.getY());
            this.f83476e = new ResultPoint(this.f83472a.getWidth() - 1, this.f83474c.getY());
        }
        this.f83477f = (int) Math.min(this.f83473b.getX(), this.f83474c.getX());
        this.f83478g = (int) Math.max(this.f83475d.getX(), this.f83476e.getX());
        this.f83479h = (int) Math.min(this.f83473b.getY(), this.f83475d.getY());
        this.f83480i = (int) Math.max(this.f83474c.getY(), this.f83476e.getY());
    }

    /* renamed from: c */
    public ResultPoint m57010c() {
        return this.f83474c;
    }

    /* renamed from: d */
    public ResultPoint m57011d() {
        return this.f83476e;
    }

    /* renamed from: e */
    public int m57012e() {
        return this.f83478g;
    }

    /* renamed from: f */
    public int m57013f() {
        return this.f83480i;
    }

    /* renamed from: g */
    public int m57014g() {
        return this.f83477f;
    }

    /* renamed from: h */
    public int m57015h() {
        return this.f83479h;
    }

    /* renamed from: i */
    public ResultPoint m57016i() {
        return this.f83473b;
    }

    /* renamed from: j */
    public ResultPoint m57017j() {
        return this.f83475d;
    }

    /* renamed from: k */
    public final void m57018k(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        this.f83472a = bitMatrix;
        this.f83473b = resultPoint;
        this.f83474c = resultPoint2;
        this.f83475d = resultPoint3;
        this.f83476e = resultPoint4;
        m57009b();
    }

    public C14368ru(C14368ru c14368ru) {
        m57018k(c14368ru.f83472a, c14368ru.f83473b, c14368ru.f83474c, c14368ru.f83475d, c14368ru.f83476e);
    }
}
