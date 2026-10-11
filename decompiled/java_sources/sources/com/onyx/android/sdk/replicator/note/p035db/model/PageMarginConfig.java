package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0000R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;", "Ljava/io/Serializable;", "()V", "margin", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "getMargin", "()Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "setMargin", "(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V", "style", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "getStyle", "()Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "setStyle", "(Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V", "copy", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageMarginConfig implements Serializable {

    @JSONField(alternateNames = {"a"})
    @NotNull
    private MarginStyle style = new MarginStyle();

    @JSONField(alternateNames = {"b"})
    @NotNull
    private MarginPercent margin = new MarginPercent();

    @NotNull
    public final PageMarginConfig copy() {
        PageMarginConfig pageMarginConfig = new PageMarginConfig();
        pageMarginConfig.style = this.style.copy();
        pageMarginConfig.margin = this.margin.copy();
        return pageMarginConfig;
    }

    @NotNull
    public final MarginPercent getMargin() {
        return this.margin;
    }

    @NotNull
    public final MarginStyle getStyle() {
        return this.style;
    }

    public final void setMargin(@NotNull MarginPercent marginPercent) {
        Intrinsics.checkNotNullParameter(marginPercent, "<set-?>");
        this.margin = marginPercent;
    }

    public final void setStyle(@NotNull MarginStyle marginStyle) {
        Intrinsics.checkNotNullParameter(marginStyle, "<set-?>");
        this.style = marginStyle;
    }
}
