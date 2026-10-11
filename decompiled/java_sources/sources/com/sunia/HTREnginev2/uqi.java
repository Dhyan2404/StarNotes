package com.sunia.HTREnginev2;

import java.awt.image.BufferedImage;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class uqi extends phn {

    /* renamed from: d */
    public final tqi f86759d;

    public uqi(ohn ohnVar, int i, int i2, tqi tqiVar) {
        super(ohnVar, i, i2);
        this.f86759d = tqiVar;
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: a */
    public int mo54287a() throws IOException {
        return this.f86759d.f85656j;
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: b */
    public int mo54288b() throws IOException {
        return this.f86759d.f85655i;
    }

    @Override // com.sunia.HTREnginev2.phn
    /* renamed from: f */
    public BufferedImage mo54289f() {
        m56276e();
        tqi tqiVar = this.f86759d;
        byte[] bArr = tqiVar.f85657k;
        BufferedImage m56273h = phn.m56273h(bArr, bArr.length, 0, tqiVar.f85655i, tqiVar.f85656j);
        m56275d(100.0f);
        m56274c();
        return m56273h;
    }
}
