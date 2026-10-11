package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.xddf.usermodel.text.XDDFHyperlink;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHyperlink;

/* loaded from: classes13.dex */
public final /* synthetic */ class iio implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new XDDFHyperlink((CTHyperlink) obj);
    }
}
