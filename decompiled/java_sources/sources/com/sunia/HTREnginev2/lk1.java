package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class lk1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f76543e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f76543e.removeMultiSel(((Integer) obj).intValue());
    }
}
