package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class uh1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f86480e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f86480e.removeDefaultSize(((Integer) obj).intValue());
    }
}
