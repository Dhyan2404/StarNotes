package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.p120w3.x2000.x09.xmldsig.impl.X509DataTypeImpl;

/* loaded from: classes16.dex */
public final /* synthetic */ class vbo implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ X509DataTypeImpl f87346e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f87346e.removeX509SKI(((Integer) obj).intValue());
    }
}
