package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.onyx.android.sdk.neohwr.layout.TextLineBox;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;", "component1", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "component2", "lineBox", "sourcePointGroup", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;", "getLineBox", "()Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;", "b", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "getSourcePointGroup", "()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class HWRTextLineBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextLineBox lineBox;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final SourcePointGroup sourcePointGroup;

    public HWRTextLineBean(@NotNull TextLineBox lineBox, @NotNull SourcePointGroup sourcePointGroup) {
        Intrinsics.checkNotNullParameter(lineBox, "lineBox");
        Intrinsics.checkNotNullParameter(sourcePointGroup, "sourcePointGroup");
        this.lineBox = lineBox;
        this.sourcePointGroup = sourcePointGroup;
    }

    public static /* synthetic */ HWRTextLineBean copy$default(HWRTextLineBean hWRTextLineBean, TextLineBox textLineBox, SourcePointGroup sourcePointGroup, int i, Object obj) {
        if ((i & 1) != 0) {
            textLineBox = hWRTextLineBean.lineBox;
        }
        if ((i & 2) != 0) {
            sourcePointGroup = hWRTextLineBean.sourcePointGroup;
        }
        return hWRTextLineBean.copy(textLineBox, sourcePointGroup);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TextLineBox getLineBox() {
        return this.lineBox;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final SourcePointGroup getSourcePointGroup() {
        return this.sourcePointGroup;
    }

    @NotNull
    public final HWRTextLineBean copy(@NotNull TextLineBox lineBox, @NotNull SourcePointGroup sourcePointGroup) {
        Intrinsics.checkNotNullParameter(lineBox, "lineBox");
        Intrinsics.checkNotNullParameter(sourcePointGroup, "sourcePointGroup");
        return new HWRTextLineBean(lineBox, sourcePointGroup);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HWRTextLineBean)) {
            return false;
        }
        HWRTextLineBean hWRTextLineBean = (HWRTextLineBean) other;
        return Intrinsics.areEqual(this.lineBox, hWRTextLineBean.lineBox) && Intrinsics.areEqual(this.sourcePointGroup, hWRTextLineBean.sourcePointGroup);
    }

    @NotNull
    public final TextLineBox getLineBox() {
        return this.lineBox;
    }

    @NotNull
    public final SourcePointGroup getSourcePointGroup() {
        return this.sourcePointGroup;
    }

    public int hashCode() {
        return (this.lineBox.hashCode() * 31) + this.sourcePointGroup.hashCode();
    }

    @NotNull
    public String toString() {
        return "HWRTextLineBean(lineBox=" + this.lineBox + ", sourcePointGroup=" + this.sourcePointGroup + ')';
    }
}
