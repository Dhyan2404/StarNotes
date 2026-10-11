package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.impl.CTSourceTypeImpl;

/* loaded from: classes14.dex */
public final /* synthetic */ class jub implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTSourceTypeImpl f74716e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f74716e.removeChapterNumber(((Integer) obj).intValue());
    }
}
