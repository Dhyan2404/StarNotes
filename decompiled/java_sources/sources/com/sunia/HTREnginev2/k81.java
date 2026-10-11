package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class k81 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f75177e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f75177e.removeJustLastX(((Integer) obj).intValue());
    }
}
