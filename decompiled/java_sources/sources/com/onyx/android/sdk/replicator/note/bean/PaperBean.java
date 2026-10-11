package com.onyx.android.sdk.replicator.note.bean;

import android.graphics.RectF;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;", "", "paperJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "paperRectF", "Landroid/graphics/RectF;", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;)V", "getPaperJsonBean", "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "setPaperJsonBean", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "getPaperRectF", "()Landroid/graphics/RectF;", "setPaperRectF", "(Landroid/graphics/RectF;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PaperBean {

    @Nullable
    private TemplateJsonBean paperJsonBean;

    @NotNull
    private RectF paperRectF;

    /* JADX WARN: Multi-variable type inference failed */
    public PaperBean() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Nullable
    public final TemplateJsonBean getPaperJsonBean() {
        return this.paperJsonBean;
    }

    @NotNull
    public final RectF getPaperRectF() {
        return this.paperRectF;
    }

    public final void setPaperJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.paperJsonBean = templateJsonBean;
    }

    public final void setPaperRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.paperRectF = rectF;
    }

    public PaperBean(@Nullable TemplateJsonBean templateJsonBean, @NotNull RectF paperRectF) {
        Intrinsics.checkNotNullParameter(paperRectF, "paperRectF");
        this.paperJsonBean = templateJsonBean;
        this.paperRectF = paperRectF;
    }

    public /* synthetic */ PaperBean(TemplateJsonBean templateJsonBean, RectF rectF, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : templateJsonBean, (i & 2) != 0 ? new RectF() : rectF);
    }
}
