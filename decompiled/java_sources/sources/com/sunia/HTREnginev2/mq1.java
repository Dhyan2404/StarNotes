package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class mq1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f77876e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f77876e.removeAnchor(((Integer) obj).intValue());
    }
}
