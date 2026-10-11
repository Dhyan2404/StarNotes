package org.mortbay.jetty;

import org.mortbay.jetty.AbstractBuffers;

/* renamed from: org.mortbay.jetty.a */
/* loaded from: classes13.dex */
public class C20380a extends ThreadLocal {

    /* renamed from: a */
    public final /* synthetic */ AbstractBuffers f114820a;

    public C20380a(AbstractBuffers abstractBuffers) {
        this.f114820a = abstractBuffers;
    }

    @Override // java.lang.ThreadLocal
    public Object initialValue() {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        iArr = this.f114820a.f114535h;
        int i = iArr[0];
        iArr2 = this.f114820a.f114535h;
        int i2 = iArr2[1];
        iArr3 = this.f114820a.f114535h;
        int i3 = iArr3[2];
        iArr4 = this.f114820a.f114535h;
        return new AbstractBuffers.ThreadBuffers(i, i2, i3, iArr4[3]);
    }
}
