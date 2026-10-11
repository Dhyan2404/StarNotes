package com.onyx.galaxy.note.category.event;

import android.graphics.RectF;
import com.onyx.android.sdk.data.InsertPageFrom;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\u000b¢\u0006\u0004\b,\u0010-J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003JF\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0010\u001a\u00020\t2\b\b\u0002\u0010\u0011\u001a\u00020\u000bHÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0015\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\u0006R\u0017\u0010\u000f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0010\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\u0011\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;", "", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "component1", "", "component2", "()Ljava/lang/Integer;", "Landroid/graphics/RectF;", "component3", "Lcom/onyx/android/sdk/data/InsertPageFrom;", "component4", "", "component5", "templateJsonBean", "pageIndex", "pageRect", "insertPageFrom", "autoApplyPageMargin", "copy", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "getTemplateJsonBean", "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.INTEGER_SIG, "getPageIndex", "c", "Landroid/graphics/RectF;", "getPageRect", "()Landroid/graphics/RectF;", "d", "Lcom/onyx/android/sdk/data/InsertPageFrom;", "getInsertPageFrom", "()Lcom/onyx/android/sdk/data/InsertPageFrom;", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getAutoApplyPageMargin", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class InsertPageWithTemplateEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final TemplateJsonBean templateJsonBean;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final Integer pageIndex;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final RectF pageRect;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final InsertPageFrom insertPageFrom;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final boolean autoApplyPageMargin;

    public InsertPageWithTemplateEvent(@Nullable TemplateJsonBean templateJsonBean, @Nullable Integer num, @NotNull RectF pageRect, @NotNull InsertPageFrom insertPageFrom, boolean z) {
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(insertPageFrom, "insertPageFrom");
        this.templateJsonBean = templateJsonBean;
        this.pageIndex = num;
        this.pageRect = pageRect;
        this.insertPageFrom = insertPageFrom;
        this.autoApplyPageMargin = z;
    }

    public static /* synthetic */ InsertPageWithTemplateEvent copy$default(InsertPageWithTemplateEvent insertPageWithTemplateEvent, TemplateJsonBean templateJsonBean, Integer num, RectF rectF, InsertPageFrom insertPageFrom, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            templateJsonBean = insertPageWithTemplateEvent.templateJsonBean;
        }
        if ((i & 2) != 0) {
            num = insertPageWithTemplateEvent.pageIndex;
        }
        Integer num2 = num;
        if ((i & 4) != 0) {
            rectF = insertPageWithTemplateEvent.pageRect;
        }
        RectF rectF2 = rectF;
        if ((i & 8) != 0) {
            insertPageFrom = insertPageWithTemplateEvent.insertPageFrom;
        }
        InsertPageFrom insertPageFrom2 = insertPageFrom;
        if ((i & 16) != 0) {
            z = insertPageWithTemplateEvent.autoApplyPageMargin;
        }
        return insertPageWithTemplateEvent.copy(templateJsonBean, num2, rectF2, insertPageFrom2, z);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final TemplateJsonBean getTemplateJsonBean() {
        return this.templateJsonBean;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Integer getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final RectF getPageRect() {
        return this.pageRect;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final InsertPageFrom getInsertPageFrom() {
        return this.insertPageFrom;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getAutoApplyPageMargin() {
        return this.autoApplyPageMargin;
    }

    @NotNull
    public final InsertPageWithTemplateEvent copy(@Nullable TemplateJsonBean templateJsonBean, @Nullable Integer pageIndex, @NotNull RectF pageRect, @NotNull InsertPageFrom insertPageFrom, boolean autoApplyPageMargin) {
        Intrinsics.checkNotNullParameter(pageRect, "pageRect");
        Intrinsics.checkNotNullParameter(insertPageFrom, "insertPageFrom");
        return new InsertPageWithTemplateEvent(templateJsonBean, pageIndex, pageRect, insertPageFrom, autoApplyPageMargin);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InsertPageWithTemplateEvent)) {
            return false;
        }
        InsertPageWithTemplateEvent insertPageWithTemplateEvent = (InsertPageWithTemplateEvent) other;
        return Intrinsics.areEqual(this.templateJsonBean, insertPageWithTemplateEvent.templateJsonBean) && Intrinsics.areEqual(this.pageIndex, insertPageWithTemplateEvent.pageIndex) && Intrinsics.areEqual(this.pageRect, insertPageWithTemplateEvent.pageRect) && this.insertPageFrom == insertPageWithTemplateEvent.insertPageFrom && this.autoApplyPageMargin == insertPageWithTemplateEvent.autoApplyPageMargin;
    }

    public final boolean getAutoApplyPageMargin() {
        return this.autoApplyPageMargin;
    }

    @NotNull
    public final InsertPageFrom getInsertPageFrom() {
        return this.insertPageFrom;
    }

    @Nullable
    public final Integer getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final RectF getPageRect() {
        return this.pageRect;
    }

    @Nullable
    public final TemplateJsonBean getTemplateJsonBean() {
        return this.templateJsonBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        TemplateJsonBean templateJsonBean = this.templateJsonBean;
        int hashCode = (templateJsonBean == null ? 0 : templateJsonBean.hashCode()) * 31;
        Integer num = this.pageIndex;
        int hashCode2 = (((((hashCode + (num != null ? num.hashCode() : 0)) * 31) + this.pageRect.hashCode()) * 31) + this.insertPageFrom.hashCode()) * 31;
        boolean z = this.autoApplyPageMargin;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode2 + i;
    }

    @NotNull
    public String toString() {
        return "InsertPageWithTemplateEvent(templateJsonBean=" + this.templateJsonBean + ", pageIndex=" + this.pageIndex + ", pageRect=" + this.pageRect + ", insertPageFrom=" + this.insertPageFrom + ", autoApplyPageMargin=" + this.autoApplyPageMargin + ')';
    }

    public /* synthetic */ InsertPageWithTemplateEvent(TemplateJsonBean templateJsonBean, Integer num, RectF rectF, InsertPageFrom insertPageFrom, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(templateJsonBean, (i & 2) != 0 ? null : num, rectF, insertPageFrom, z);
    }
}
