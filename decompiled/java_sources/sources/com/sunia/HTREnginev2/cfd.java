package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.impl.CTVectorImpl;

/* loaded from: classes14.dex */
public final /* synthetic */ class cfd implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTVectorImpl f66772e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f66772e.removeFiletime(((Integer) obj).intValue());
    }
}
