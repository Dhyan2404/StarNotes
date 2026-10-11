package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class vc1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f87351e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f87351e.removeCamera(((Integer) obj).intValue());
    }
}
