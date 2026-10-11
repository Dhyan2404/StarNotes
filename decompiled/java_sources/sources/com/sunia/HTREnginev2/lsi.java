package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.p120w3.x2000.x09.xmldsig.impl.KeyInfoTypeImpl;

/* loaded from: classes16.dex */
public final /* synthetic */ class lsi implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ KeyInfoTypeImpl f76845e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f76845e.removeKeyName(((Integer) obj).intValue());
    }
}
