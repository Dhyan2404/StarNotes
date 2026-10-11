package com.onyx.android.sdk.genericshape;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000e¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;", "Ljava/io/Serializable;", "()V", "geoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "getGeoLayout", "()Lcom/onyx/android/sdk/genericshape/GeoLayout;", "setGeoLayout", "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V", "heightPercent", "", "getHeightPercent", "()F", "setHeightPercent", "(F)V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "widthPercent", "getWidthPercent", "setWidthPercent", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoLayoutChildParams implements Serializable {

    @Nullable
    private GeoLayout geoLayout;

    @NotNull
    private String id = "";
    private float widthPercent = 1.0f;
    private float heightPercent = 1.0f;

    @Nullable
    public final GeoLayout getGeoLayout() {
        return this.geoLayout;
    }

    public final float getHeightPercent() {
        return this.heightPercent;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    public final float getWidthPercent() {
        return this.widthPercent;
    }

    public final void setGeoLayout(@Nullable GeoLayout geoLayout) {
        this.geoLayout = geoLayout;
    }

    public final void setHeightPercent(float f) {
        this.heightPercent = f;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setWidthPercent(float f) {
        this.widthPercent = f;
    }
}
