package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class ya1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f90523e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f90523e.removeVisible(((Integer) obj).intValue());
    }
}
