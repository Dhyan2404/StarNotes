package com.onyx.android.sdk.device.bean;

import android.graphics.Rect;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0011\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0003J%\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R*\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/device/bean/NotchInfo;", "", "", "component1", "", "Landroid/graphics/Rect;", "component2", "hasNotch", "rectList", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getHasNotch", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setHasNotch", "(Z)V", "b", "Ljava/util/List;", "getRectList", "()Ljava/util/List;", "setRectList", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLjava/util/List;)V", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class NotchInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public boolean hasNotch;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public List<Rect> rectList;

    /* JADX WARN: Multi-variable type inference failed */
    public NotchInfo() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NotchInfo copy$default(NotchInfo notchInfo, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = notchInfo.hasNotch;
        }
        if ((i & 2) != 0) {
            list = notchInfo.rectList;
        }
        return notchInfo.copy(z, list);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getHasNotch() {
        return this.hasNotch;
    }

    @Nullable
    public final List<Rect> component2() {
        return this.rectList;
    }

    @NotNull
    public final NotchInfo copy(boolean hasNotch, @Nullable List<Rect> rectList) {
        return new NotchInfo(hasNotch, rectList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NotchInfo)) {
            return false;
        }
        NotchInfo notchInfo = (NotchInfo) other;
        return this.hasNotch == notchInfo.hasNotch && Intrinsics.areEqual(this.rectList, notchInfo.rectList);
    }

    public final boolean getHasNotch() {
        return this.hasNotch;
    }

    @Nullable
    public final List<Rect> getRectList() {
        return this.rectList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.hasNotch;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        List<Rect> list = this.rectList;
        return i + (list == null ? 0 : list.hashCode());
    }

    public final void setHasNotch(boolean z) {
        this.hasNotch = z;
    }

    public final void setRectList(@Nullable List<Rect> list) {
        this.rectList = list;
    }

    @NotNull
    public String toString() {
        return "NotchInfo(hasNotch=" + this.hasNotch + ", rectList=" + this.rectList + ')';
    }

    public NotchInfo(boolean z, @Nullable List<Rect> list) {
        this.hasNotch = z;
        this.rectList = list;
    }

    public /* synthetic */ NotchInfo(boolean z, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : list);
    }
}
