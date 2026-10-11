package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.p120w3.x2000.x09.xmldsig.impl.TransformTypeImpl;

/* loaded from: classes16.dex */
public final /* synthetic */ class fmn implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ TransformTypeImpl f70158e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f70158e.removeXPath(((Integer) obj).intValue());
    }
}
