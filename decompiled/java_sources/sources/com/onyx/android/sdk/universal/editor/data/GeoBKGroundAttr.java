package com.onyx.android.sdk.universal.editor.data;

import com.onegravity.colorpicker.OpacityBar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;", "", "()V", "color", "", "getColor", "()I", "setColor", "(I)V", OpacityBar.f39917J, "", "getOpacity", "()F", "setOpacity", "(F)V", "spacing", "getSpacing", "setSpacing", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class GeoBKGroundAttr {

    @NotNull
    private String type = "";
    private int color = -7829368;
    private float spacing = 10.0f;
    private float opacity = 100.0f;

    public final int getColor() {
        return this.color;
    }

    public final float getOpacity() {
        return this.opacity;
    }

    public final float getSpacing() {
        return this.spacing;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setOpacity(float f) {
        this.opacity = f;
    }

    public final void setSpacing(float f) {
        this.spacing = f;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}
