package com.onyx.android.sdk.genericshape;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;", "Ljava/io/Serializable;", "()V", "alignLocation", "", "getAlignLocation", "()Ljava/lang/String;", "setAlignLocation", "(Ljava/lang/String;)V", "alignLocationOrigin", "Lcom/onyx/android/sdk/genericshape/DrawOrigin;", "getAlignLocationOrigin", "()Lcom/onyx/android/sdk/genericshape/DrawOrigin;", "setAlignLocationOrigin", "(Lcom/onyx/android/sdk/genericshape/DrawOrigin;)V", "orientation", "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;", "getOrientation", "()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;", "setOrientation", "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;)V", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoLayoutGroupParams implements Serializable {

    @Nullable
    private String alignLocation;

    @NotNull
    private GeoLayoutGroupOrientation orientation = GeoLayoutGroupOrientation.HORIZONTAL;

    @NotNull
    private DrawOrigin alignLocationOrigin = DrawOrigin.LEFT_TOP;

    @Nullable
    public final String getAlignLocation() {
        return this.alignLocation;
    }

    @NotNull
    public final DrawOrigin getAlignLocationOrigin() {
        return this.alignLocationOrigin;
    }

    @NotNull
    public final GeoLayoutGroupOrientation getOrientation() {
        return this.orientation;
    }

    public final void setAlignLocation(@Nullable String str) {
        this.alignLocation = str;
    }

    public final void setAlignLocationOrigin(@NotNull DrawOrigin drawOrigin) {
        Intrinsics.checkNotNullParameter(drawOrigin, "<set-?>");
        this.alignLocationOrigin = drawOrigin;
    }

    public final void setOrientation(@NotNull GeoLayoutGroupOrientation geoLayoutGroupOrientation) {
        Intrinsics.checkNotNullParameter(geoLayoutGroupOrientation, "<set-?>");
        this.orientation = geoLayoutGroupOrientation;
    }
}
