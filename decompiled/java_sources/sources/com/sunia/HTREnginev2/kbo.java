package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.p120w3.x2000.x09.xmldsig.impl.X509DataTypeImpl;

/* loaded from: classes16.dex */
public final /* synthetic */ class kbo implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ X509DataTypeImpl f75266e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f75266e.removeX509Certificate(((Integer) obj).intValue());
    }
}
