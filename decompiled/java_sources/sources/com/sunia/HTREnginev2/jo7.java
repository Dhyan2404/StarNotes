package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTProtectedRangeImpl;

/* loaded from: classes15.dex */
public final /* synthetic */ class jo7 implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ CTProtectedRangeImpl f74528e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f74528e.removeSecurityDescriptor(((Integer) obj).intValue());
    }
}
