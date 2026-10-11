package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class xw1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f90123e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f90123e.removeVTEdit(((Integer) obj).intValue());
    }
}
