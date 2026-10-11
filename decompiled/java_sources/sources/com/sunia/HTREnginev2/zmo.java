package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.apache.poi.xslf.usermodel.XSLFGroupShape;
import org.apache.poi.xslf.usermodel.XSLFShape;

/* loaded from: classes13.dex */
public final /* synthetic */ class zmo implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ XSLFGroupShape f91968e;

    public /* synthetic */ zmo(XSLFGroupShape xSLFGroupShape) {
        this.f91968e = xSLFGroupShape;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f91968e.removeShape((XSLFShape) obj);
    }
}
