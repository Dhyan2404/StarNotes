package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.ss.usermodel.Sheet;

/* loaded from: classes13.dex */
public final /* synthetic */ class chi implements Function {

    /* renamed from: e */
    public final /* synthetic */ Sheet f66837e;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Float.valueOf(this.f66837e.getColumnWidthInPixels(((Integer) obj).intValue()));
    }
}
