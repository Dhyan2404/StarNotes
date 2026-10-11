package com.onyx.android.sdk.reader.data;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\f\u001a\u00020\u0006HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "component1", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "component2", "", "component3", "touchPoint", "virtualPageBoxInfo", "path", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "b", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class HitTestDocLinkArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final BoxInfo virtualPageBoxInfo;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String path;

    public HitTestDocLinkArgs(@NotNull TouchPoint touchPoint, @NotNull BoxInfo virtualPageBoxInfo, @NotNull String path) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(path, "path");
        this.touchPoint = touchPoint;
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.path = path;
    }

    public static /* synthetic */ HitTestDocLinkArgs copy$default(HitTestDocLinkArgs hitTestDocLinkArgs, TouchPoint touchPoint, BoxInfo boxInfo, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            touchPoint = hitTestDocLinkArgs.touchPoint;
        }
        if ((i & 2) != 0) {
            boxInfo = hitTestDocLinkArgs.virtualPageBoxInfo;
        }
        if ((i & 4) != 0) {
            str = hitTestDocLinkArgs.path;
        }
        return hitTestDocLinkArgs.copy(touchPoint, boxInfo, str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final HitTestDocLinkArgs copy(@NotNull TouchPoint touchPoint, @NotNull BoxInfo virtualPageBoxInfo, @NotNull String path) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(path, "path");
        return new HitTestDocLinkArgs(touchPoint, virtualPageBoxInfo, path);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HitTestDocLinkArgs)) {
            return false;
        }
        HitTestDocLinkArgs hitTestDocLinkArgs = (HitTestDocLinkArgs) other;
        return Intrinsics.areEqual(this.touchPoint, hitTestDocLinkArgs.touchPoint) && Intrinsics.areEqual(this.virtualPageBoxInfo, hitTestDocLinkArgs.virtualPageBoxInfo) && Intrinsics.areEqual(this.path, hitTestDocLinkArgs.path);
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public int hashCode() {
        return (((this.touchPoint.hashCode() * 31) + this.virtualPageBoxInfo.hashCode()) * 31) + this.path.hashCode();
    }

    @NotNull
    public String toString() {
        return "HitTestDocLinkArgs(touchPoint=" + this.touchPoint + ", virtualPageBoxInfo=" + this.virtualPageBoxInfo + ", path=" + this.path + ')';
    }
}
