package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.ColorStyle;

/* loaded from: classes12.dex */
public final /* synthetic */ class whf implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return DrawPaint.applyColorTransform((ColorStyle) obj);
    }
}
