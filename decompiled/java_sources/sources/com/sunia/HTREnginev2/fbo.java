package com.sunia.HTREnginev2;

import java.util.function.Supplier;
import org.p120w3.x2000.x09.xmldsig.impl.X509DataTypeImpl;

/* loaded from: classes16.dex */
public final /* synthetic */ class fbo implements Supplier {

    /* renamed from: e */
    public final /* synthetic */ X509DataTypeImpl f69856e;

    @Override // java.util.function.Supplier
    public final Object get() {
        return Integer.valueOf(this.f69856e.sizeOfX509SubjectNameArray());
    }
}
