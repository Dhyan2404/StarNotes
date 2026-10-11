package com.onyx.android.sdk.universal.editor.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J-\u0010\u0018\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;", "", "pageIndexList", "", "", "rotation", "doAnimation", "", "(Ljava/util/List;IZ)V", "getDoAnimation", Constants.BOOLEAN_VALUE_SIG, "setDoAnimation", "(Z)V", "getPageIndexList", "()Ljava/util/List;", "setPageIndexList", "(Ljava/util/List;)V", "getRotation", "()I", "setRotation", "(I)V", "component1", "component2", "component3", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class RotatePageArgs {
    private boolean doAnimation;

    @NotNull
    private List<Integer> pageIndexList;
    private int rotation;

    public RotatePageArgs() {
        this(null, 0, false, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RotatePageArgs copy$default(RotatePageArgs rotatePageArgs, List list, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = rotatePageArgs.pageIndexList;
        }
        if ((i2 & 2) != 0) {
            i = rotatePageArgs.rotation;
        }
        if ((i2 & 4) != 0) {
            z = rotatePageArgs.doAnimation;
        }
        return rotatePageArgs.copy(list, i, z);
    }

    @NotNull
    public final List<Integer> component1() {
        return this.pageIndexList;
    }

    /* renamed from: component2, reason: from getter */
    public final int getRotation() {
        return this.rotation;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getDoAnimation() {
        return this.doAnimation;
    }

    @NotNull
    public final RotatePageArgs copy(@NotNull List<Integer> pageIndexList, int rotation, boolean doAnimation) {
        Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
        return new RotatePageArgs(pageIndexList, rotation, doAnimation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RotatePageArgs)) {
            return false;
        }
        RotatePageArgs rotatePageArgs = (RotatePageArgs) other;
        return Intrinsics.areEqual(this.pageIndexList, rotatePageArgs.pageIndexList) && this.rotation == rotatePageArgs.rotation && this.doAnimation == rotatePageArgs.doAnimation;
    }

    public final boolean getDoAnimation() {
        return this.doAnimation;
    }

    @NotNull
    public final List<Integer> getPageIndexList() {
        return this.pageIndexList;
    }

    public final int getRotation() {
        return this.rotation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.pageIndexList.hashCode() * 31) + Integer.hashCode(this.rotation)) * 31;
        boolean z = this.doAnimation;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final void setDoAnimation(boolean z) {
        this.doAnimation = z;
    }

    public final void setPageIndexList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.pageIndexList = list;
    }

    public final void setRotation(int i) {
        this.rotation = i;
    }

    @NotNull
    public String toString() {
        return "RotatePageArgs(pageIndexList=" + this.pageIndexList + ", rotation=" + this.rotation + ", doAnimation=" + this.doAnimation + ')';
    }

    public RotatePageArgs(@NotNull List<Integer> pageIndexList, int i, boolean z) {
        Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
        this.pageIndexList = pageIndexList;
        this.rotation = i;
        this.doAnimation = z;
    }

    public /* synthetic */ RotatePageArgs(List list, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new ArrayList() : list, (i2 & 2) != 0 ? RotationType.CLOCKWISE_90.getDegrees() : i, (i2 & 4) != 0 ? false : z);
    }
}
