package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class je1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f74218e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f74218e.removeSizeWithCells(((Integer) obj).intValue());
    }
}
