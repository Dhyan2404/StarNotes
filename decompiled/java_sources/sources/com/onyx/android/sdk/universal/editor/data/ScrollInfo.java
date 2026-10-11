package com.onyx.android.sdk.universal.editor.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;", "", "beforeScrollVirtualDocViewInfo", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "height", "", "offsetY", "afterScrollVirtualDocViewInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V", "getAfterScrollVirtualDocViewInfo", "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "setAfterScrollVirtualDocViewInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V", "getBeforeScrollVirtualDocViewInfo", "getHeight", "()F", "getOffsetY", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class ScrollInfo {

    @Nullable
    private VirtualDocViewInfo afterScrollVirtualDocViewInfo;

    @NotNull
    private final VirtualDocViewInfo beforeScrollVirtualDocViewInfo;
    private final float height;
    private final float offsetY;

    public ScrollInfo(@NotNull VirtualDocViewInfo beforeScrollVirtualDocViewInfo, float f, float f2, @Nullable VirtualDocViewInfo virtualDocViewInfo) {
        Intrinsics.checkNotNullParameter(beforeScrollVirtualDocViewInfo, "beforeScrollVirtualDocViewInfo");
        this.beforeScrollVirtualDocViewInfo = beforeScrollVirtualDocViewInfo;
        this.height = f;
        this.offsetY = f2;
        this.afterScrollVirtualDocViewInfo = virtualDocViewInfo;
    }

    public static /* synthetic */ ScrollInfo copy$default(ScrollInfo scrollInfo, VirtualDocViewInfo virtualDocViewInfo, float f, float f2, VirtualDocViewInfo virtualDocViewInfo2, int i, Object obj) {
        if ((i & 1) != 0) {
            virtualDocViewInfo = scrollInfo.beforeScrollVirtualDocViewInfo;
        }
        if ((i & 2) != 0) {
            f = scrollInfo.height;
        }
        if ((i & 4) != 0) {
            f2 = scrollInfo.offsetY;
        }
        if ((i & 8) != 0) {
            virtualDocViewInfo2 = scrollInfo.afterScrollVirtualDocViewInfo;
        }
        return scrollInfo.copy(virtualDocViewInfo, f, f2, virtualDocViewInfo2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final VirtualDocViewInfo getBeforeScrollVirtualDocViewInfo() {
        return this.beforeScrollVirtualDocViewInfo;
    }

    /* renamed from: component2, reason: from getter */
    public final float getHeight() {
        return this.height;
    }

    /* renamed from: component3, reason: from getter */
    public final float getOffsetY() {
        return this.offsetY;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final VirtualDocViewInfo getAfterScrollVirtualDocViewInfo() {
        return this.afterScrollVirtualDocViewInfo;
    }

    @NotNull
    public final ScrollInfo copy(@NotNull VirtualDocViewInfo beforeScrollVirtualDocViewInfo, float height, float offsetY, @Nullable VirtualDocViewInfo afterScrollVirtualDocViewInfo) {
        Intrinsics.checkNotNullParameter(beforeScrollVirtualDocViewInfo, "beforeScrollVirtualDocViewInfo");
        return new ScrollInfo(beforeScrollVirtualDocViewInfo, height, offsetY, afterScrollVirtualDocViewInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScrollInfo)) {
            return false;
        }
        ScrollInfo scrollInfo = (ScrollInfo) other;
        return Intrinsics.areEqual(this.beforeScrollVirtualDocViewInfo, scrollInfo.beforeScrollVirtualDocViewInfo) && Float.compare(this.height, scrollInfo.height) == 0 && Float.compare(this.offsetY, scrollInfo.offsetY) == 0 && Intrinsics.areEqual(this.afterScrollVirtualDocViewInfo, scrollInfo.afterScrollVirtualDocViewInfo);
    }

    @Nullable
    public final VirtualDocViewInfo getAfterScrollVirtualDocViewInfo() {
        return this.afterScrollVirtualDocViewInfo;
    }

    @NotNull
    public final VirtualDocViewInfo getBeforeScrollVirtualDocViewInfo() {
        return this.beforeScrollVirtualDocViewInfo;
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    public int hashCode() {
        int hashCode = ((((this.beforeScrollVirtualDocViewInfo.hashCode() * 31) + Float.hashCode(this.height)) * 31) + Float.hashCode(this.offsetY)) * 31;
        VirtualDocViewInfo virtualDocViewInfo = this.afterScrollVirtualDocViewInfo;
        return hashCode + (virtualDocViewInfo == null ? 0 : virtualDocViewInfo.hashCode());
    }

    public final void setAfterScrollVirtualDocViewInfo(@Nullable VirtualDocViewInfo virtualDocViewInfo) {
        this.afterScrollVirtualDocViewInfo = virtualDocViewInfo;
    }

    @NotNull
    public String toString() {
        return "ScrollInfo(beforeScrollVirtualDocViewInfo=" + this.beforeScrollVirtualDocViewInfo + ", height=" + this.height + ", offsetY=" + this.offsetY + ", afterScrollVirtualDocViewInfo=" + this.afterScrollVirtualDocViewInfo + ')';
    }

    public /* synthetic */ ScrollInfo(VirtualDocViewInfo virtualDocViewInfo, float f, float f2, VirtualDocViewInfo virtualDocViewInfo2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(virtualDocViewInfo, f, (i & 4) != 0 ? 0.0f : f2, (i & 8) != 0 ? null : virtualDocViewInfo2);
    }
}
