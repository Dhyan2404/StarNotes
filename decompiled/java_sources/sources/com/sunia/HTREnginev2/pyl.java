package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.p120w3.x2000.x09.xmldsig.impl.SPKIDataTypeImpl;

/* loaded from: classes16.dex */
public final /* synthetic */ class pyl implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ SPKIDataTypeImpl f81393e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f81393e.removeSPKISexp(((Integer) obj).intValue());
    }
}
