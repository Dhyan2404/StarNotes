package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblBorders;

/* loaded from: classes12.dex */
public final /* synthetic */ class han implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Boolean.valueOf(((CTTblBorders) obj).isSetRight());
    }
}
