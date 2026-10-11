package com.onyx.android.sdk.geometry.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;", "", "scale", "", "viewportLeft", "viewportTop", "(FFF)V", "getScale", "()F", "getViewportLeft", "getViewportTop", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class BoxManagerViewArgs {
    private final float scale;
    private final float viewportLeft;
    private final float viewportTop;

    public BoxManagerViewArgs(float f, float f2, float f3) {
        this.scale = f;
        this.viewportLeft = f2;
        this.viewportTop = f3;
    }

    public static /* synthetic */ BoxManagerViewArgs copy$default(BoxManagerViewArgs boxManagerViewArgs, float f, float f2, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = boxManagerViewArgs.scale;
        }
        if ((i & 2) != 0) {
            f2 = boxManagerViewArgs.viewportLeft;
        }
        if ((i & 4) != 0) {
            f3 = boxManagerViewArgs.viewportTop;
        }
        return boxManagerViewArgs.copy(f, f2, f3);
    }

    /* renamed from: component1, reason: from getter */
    public final float getScale() {
        return this.scale;
    }

    /* renamed from: component2, reason: from getter */
    public final float getViewportLeft() {
        return this.viewportLeft;
    }

    /* renamed from: component3, reason: from getter */
    public final float getViewportTop() {
        return this.viewportTop;
    }

    @NotNull
    public final BoxManagerViewArgs copy(float scale, float viewportLeft, float viewportTop) {
        return new BoxManagerViewArgs(scale, viewportLeft, viewportTop);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BoxManagerViewArgs)) {
            return false;
        }
        BoxManagerViewArgs boxManagerViewArgs = (BoxManagerViewArgs) other;
        return Float.compare(this.scale, boxManagerViewArgs.scale) == 0 && Float.compare(this.viewportLeft, boxManagerViewArgs.viewportLeft) == 0 && Float.compare(this.viewportTop, boxManagerViewArgs.viewportTop) == 0;
    }

    public final float getScale() {
        return this.scale;
    }

    public final float getViewportLeft() {
        return this.viewportLeft;
    }

    public final float getViewportTop() {
        return this.viewportTop;
    }

    public int hashCode() {
        return (((Float.hashCode(this.scale) * 31) + Float.hashCode(this.viewportLeft)) * 31) + Float.hashCode(this.viewportTop);
    }

    @NotNull
    public String toString() {
        return "BoxManagerViewArgs(scale=" + this.scale + ", viewportLeft=" + this.viewportLeft + ", viewportTop=" + this.viewportTop + ')';
    }

    public /* synthetic */ BoxManagerViewArgs(float f, float f2, float f3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f, f2, f3);
    }
}
