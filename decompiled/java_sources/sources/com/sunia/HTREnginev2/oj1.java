package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class oj1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f79789e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f79789e.removeSelType(((Integer) obj).intValue());
    }
}
