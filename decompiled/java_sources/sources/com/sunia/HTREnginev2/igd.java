package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl.CTVectorImpl;

/* loaded from: classes14.dex */
public final /* synthetic */ class igd implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTVectorImpl f73223e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f73223e.removeBstr(((Integer) obj).intValue());
    }
}
