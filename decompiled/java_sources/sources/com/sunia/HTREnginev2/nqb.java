package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl.CTSourceTypeImpl;

/* loaded from: classes14.dex */
public final /* synthetic */ class nqb implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTSourceTypeImpl f78917e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f78917e.removeStandardNumber(((Integer) obj).intValue());
    }
}
