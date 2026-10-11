package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTHeadersImpl;

/* loaded from: classes14.dex */
public final /* synthetic */ class ft4 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTHeadersImpl f70349e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f70349e.removeHeader(((Integer) obj).intValue());
    }
}
