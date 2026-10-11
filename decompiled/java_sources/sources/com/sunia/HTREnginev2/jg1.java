package com.sunia.HTREnginev2;

import com.microsoft.schemas.office.excel.impl.CTClientDataImpl;
import java.util.function.Consumer;

/* loaded from: classes7.dex */
public final /* synthetic */ class jg1 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTClientDataImpl f74269e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f74269e.removeFirstButton(((Integer) obj).intValue());
    }
}
