package com.sunia.HTREnginev2;

import java.util.function.Predicate;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;

/* loaded from: classes13.dex */
public final /* synthetic */ class ajo implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return ((CTTextCharacterProperties) obj).isSetU();
    }
}
