package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.neohwr.layout.TextBlockBox;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J#\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;", "", "", "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;", "component1", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "component2", "lines", "blockBox", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getLines", "()Ljava/util/List;", "b", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "getBlockBox", "()Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class HWRTextBlockBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<HWRTextLineBean> lines;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final TextBlockBox blockBox;

    public HWRTextBlockBean(@NotNull List<HWRTextLineBean> lines, @NotNull TextBlockBox blockBox) {
        Intrinsics.checkNotNullParameter(lines, "lines");
        Intrinsics.checkNotNullParameter(blockBox, "blockBox");
        this.lines = lines;
        this.blockBox = blockBox;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HWRTextBlockBean copy$default(HWRTextBlockBean hWRTextBlockBean, List list, TextBlockBox textBlockBox, int i, Object obj) {
        if ((i & 1) != 0) {
            list = hWRTextBlockBean.lines;
        }
        if ((i & 2) != 0) {
            textBlockBox = hWRTextBlockBean.blockBox;
        }
        return hWRTextBlockBean.copy(list, textBlockBox);
    }

    @NotNull
    public final List<HWRTextLineBean> component1() {
        return this.lines;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TextBlockBox getBlockBox() {
        return this.blockBox;
    }

    @NotNull
    public final HWRTextBlockBean copy(@NotNull List<HWRTextLineBean> lines, @NotNull TextBlockBox blockBox) {
        Intrinsics.checkNotNullParameter(lines, "lines");
        Intrinsics.checkNotNullParameter(blockBox, "blockBox");
        return new HWRTextBlockBean(lines, blockBox);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HWRTextBlockBean)) {
            return false;
        }
        HWRTextBlockBean hWRTextBlockBean = (HWRTextBlockBean) other;
        return Intrinsics.areEqual(this.lines, hWRTextBlockBean.lines) && Intrinsics.areEqual(this.blockBox, hWRTextBlockBean.blockBox);
    }

    @NotNull
    public final TextBlockBox getBlockBox() {
        return this.blockBox;
    }

    @NotNull
    public final List<HWRTextLineBean> getLines() {
        return this.lines;
    }

    public int hashCode() {
        return (this.lines.hashCode() * 31) + this.blockBox.hashCode();
    }

    @NotNull
    public String toString() {
        return "HWRTextBlockBean(lines=" + this.lines + ", blockBox=" + this.blockBox + ')';
    }
}
