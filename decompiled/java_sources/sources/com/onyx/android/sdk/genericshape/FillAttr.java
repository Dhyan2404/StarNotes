package com.onyx.android.sdk.genericshape;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/FillAttr;", "", "()V", "color", "", "getColor", "()I", "setColor", "(I)V", "enableColor", "", "getEnableColor", Constants.BOOLEAN_VALUE_SIG, "setEnableColor", "(Z)V", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FillAttr {
    private int color;
    private boolean enableColor = true;

    public final int getColor() {
        return this.color;
    }

    public final boolean getEnableColor() {
        return this.enableColor;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setEnableColor(boolean z) {
        this.enableColor = z;
    }
}
