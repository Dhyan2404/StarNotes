package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class yx1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f91144e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f91144e.removeListItem(((Integer) obj).intValue());
    }
}
