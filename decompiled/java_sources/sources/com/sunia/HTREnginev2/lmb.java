package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl.CTSourceTypeImpl;

/* loaded from: classes14.dex */
public final /* synthetic */ class lmb implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTSourceTypeImpl f76601e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f76601e.removeSourceType(((Integer) obj).intValue());
    }
}
