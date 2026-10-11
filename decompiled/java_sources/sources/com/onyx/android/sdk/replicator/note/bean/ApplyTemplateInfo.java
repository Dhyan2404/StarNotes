package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0002\u0010\tJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÆ\u0003J?\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", "", "coverTemplateJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "paperTemplateJsonBean", "applyAllPaper", "", "applyCurrentPaper", "applyDefaultPaper", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZ)V", "getApplyAllPaper", Constants.BOOLEAN_VALUE_SIG, "setApplyAllPaper", "(Z)V", "getApplyCurrentPaper", "setApplyCurrentPaper", "getApplyDefaultPaper", "setApplyDefaultPaper", "getCoverTemplateJsonBean", "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "setCoverTemplateJsonBean", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "getPaperTemplateJsonBean", "setPaperTemplateJsonBean", "component1", "component2", "component3", "component4", "component5", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class ApplyTemplateInfo {
    private boolean applyAllPaper;
    private boolean applyCurrentPaper;
    private boolean applyDefaultPaper;

    @Nullable
    private TemplateJsonBean coverTemplateJsonBean;

    @Nullable
    private TemplateJsonBean paperTemplateJsonBean;

    public ApplyTemplateInfo() {
        this(null, null, false, false, false, 31, null);
    }

    public static /* synthetic */ ApplyTemplateInfo copy$default(ApplyTemplateInfo applyTemplateInfo, TemplateJsonBean templateJsonBean, TemplateJsonBean templateJsonBean2, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            templateJsonBean = applyTemplateInfo.coverTemplateJsonBean;
        }
        if ((i & 2) != 0) {
            templateJsonBean2 = applyTemplateInfo.paperTemplateJsonBean;
        }
        TemplateJsonBean templateJsonBean3 = templateJsonBean2;
        if ((i & 4) != 0) {
            z = applyTemplateInfo.applyAllPaper;
        }
        boolean z4 = z;
        if ((i & 8) != 0) {
            z2 = applyTemplateInfo.applyCurrentPaper;
        }
        boolean z5 = z2;
        if ((i & 16) != 0) {
            z3 = applyTemplateInfo.applyDefaultPaper;
        }
        return applyTemplateInfo.copy(templateJsonBean, templateJsonBean3, z4, z5, z3);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final TemplateJsonBean getCoverTemplateJsonBean() {
        return this.coverTemplateJsonBean;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final TemplateJsonBean getPaperTemplateJsonBean() {
        return this.paperTemplateJsonBean;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getApplyAllPaper() {
        return this.applyAllPaper;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getApplyCurrentPaper() {
        return this.applyCurrentPaper;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getApplyDefaultPaper() {
        return this.applyDefaultPaper;
    }

    @NotNull
    public final ApplyTemplateInfo copy(@Nullable TemplateJsonBean coverTemplateJsonBean, @Nullable TemplateJsonBean paperTemplateJsonBean, boolean applyAllPaper, boolean applyCurrentPaper, boolean applyDefaultPaper) {
        return new ApplyTemplateInfo(coverTemplateJsonBean, paperTemplateJsonBean, applyAllPaper, applyCurrentPaper, applyDefaultPaper);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ApplyTemplateInfo)) {
            return false;
        }
        ApplyTemplateInfo applyTemplateInfo = (ApplyTemplateInfo) other;
        return Intrinsics.areEqual(this.coverTemplateJsonBean, applyTemplateInfo.coverTemplateJsonBean) && Intrinsics.areEqual(this.paperTemplateJsonBean, applyTemplateInfo.paperTemplateJsonBean) && this.applyAllPaper == applyTemplateInfo.applyAllPaper && this.applyCurrentPaper == applyTemplateInfo.applyCurrentPaper && this.applyDefaultPaper == applyTemplateInfo.applyDefaultPaper;
    }

    public final boolean getApplyAllPaper() {
        return this.applyAllPaper;
    }

    public final boolean getApplyCurrentPaper() {
        return this.applyCurrentPaper;
    }

    public final boolean getApplyDefaultPaper() {
        return this.applyDefaultPaper;
    }

    @Nullable
    public final TemplateJsonBean getCoverTemplateJsonBean() {
        return this.coverTemplateJsonBean;
    }

    @Nullable
    public final TemplateJsonBean getPaperTemplateJsonBean() {
        return this.paperTemplateJsonBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        TemplateJsonBean templateJsonBean = this.coverTemplateJsonBean;
        int hashCode = (templateJsonBean == null ? 0 : templateJsonBean.hashCode()) * 31;
        TemplateJsonBean templateJsonBean2 = this.paperTemplateJsonBean;
        int hashCode2 = (hashCode + (templateJsonBean2 != null ? templateJsonBean2.hashCode() : 0)) * 31;
        boolean z = this.applyAllPaper;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode2 + i) * 31;
        boolean z2 = this.applyCurrentPaper;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.applyDefaultPaper;
        return i4 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public final void setApplyAllPaper(boolean z) {
        this.applyAllPaper = z;
    }

    public final void setApplyCurrentPaper(boolean z) {
        this.applyCurrentPaper = z;
    }

    public final void setApplyDefaultPaper(boolean z) {
        this.applyDefaultPaper = z;
    }

    public final void setCoverTemplateJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.coverTemplateJsonBean = templateJsonBean;
    }

    public final void setPaperTemplateJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.paperTemplateJsonBean = templateJsonBean;
    }

    @NotNull
    public String toString() {
        return "ApplyTemplateInfo(coverTemplateJsonBean=" + this.coverTemplateJsonBean + ", paperTemplateJsonBean=" + this.paperTemplateJsonBean + ", applyAllPaper=" + this.applyAllPaper + ", applyCurrentPaper=" + this.applyCurrentPaper + ", applyDefaultPaper=" + this.applyDefaultPaper + ')';
    }

    public ApplyTemplateInfo(@Nullable TemplateJsonBean templateJsonBean, @Nullable TemplateJsonBean templateJsonBean2, boolean z, boolean z2, boolean z3) {
        this.coverTemplateJsonBean = templateJsonBean;
        this.paperTemplateJsonBean = templateJsonBean2;
        this.applyAllPaper = z;
        this.applyCurrentPaper = z2;
        this.applyDefaultPaper = z3;
    }

    public /* synthetic */ ApplyTemplateInfo(TemplateJsonBean templateJsonBean, TemplateJsonBean templateJsonBean2, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : templateJsonBean, (i & 2) != 0 ? null : templateJsonBean2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? true : z2, (i & 16) != 0 ? false : z3);
    }
}
