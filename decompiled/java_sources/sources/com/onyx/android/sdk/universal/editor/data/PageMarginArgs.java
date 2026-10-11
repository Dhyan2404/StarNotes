package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u001c\u0010!\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "", "()V", "applyAll", "", "getApplyAll", Constants.BOOLEAN_VALUE_SIG, "setApplyAll", "(Z)V", "applyToCover", "getApplyToCover", "setApplyToCover", "marginColor", "", "getMarginColor", "()I", "setMarginColor", "(I)V", "marginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "getMarginPercent", "()Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "setMarginPercent", "(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "", "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", "templateResource", "getTemplateResource", "setTemplateResource", "templateResourceId", "getTemplateResourceId", "setTemplateResourceId", "templateSpace", "", "getTemplateSpace", "()F", "setTemplateSpace", "(F)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageMarginArgs {
    private boolean applyAll;
    private boolean applyToCover;

    @Nullable
    private String templateResource;

    @Nullable
    private String templateResourceId;
    private float templateSpace;

    @NotNull
    private MarginPercent marginPercent = new MarginPercent();

    @NotNull
    private String pageId = "";
    private int marginColor = -1;

    public final boolean getApplyAll() {
        return this.applyAll;
    }

    public final boolean getApplyToCover() {
        return this.applyToCover;
    }

    public final int getMarginColor() {
        return this.marginColor;
    }

    @NotNull
    public final MarginPercent getMarginPercent() {
        return this.marginPercent;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final String getTemplateResource() {
        return this.templateResource;
    }

    @Nullable
    public final String getTemplateResourceId() {
        return this.templateResourceId;
    }

    public final float getTemplateSpace() {
        return this.templateSpace;
    }

    public final void setApplyAll(boolean z) {
        this.applyAll = z;
    }

    public final void setApplyToCover(boolean z) {
        this.applyToCover = z;
    }

    public final void setMarginColor(int i) {
        this.marginColor = i;
    }

    public final void setMarginPercent(@NotNull MarginPercent marginPercent) {
        Intrinsics.checkNotNullParameter(marginPercent, "<set-?>");
        this.marginPercent = marginPercent;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setTemplateResource(@Nullable String str) {
        this.templateResource = str;
    }

    public final void setTemplateResourceId(@Nullable String str) {
        this.templateResourceId = str;
    }

    public final void setTemplateSpace(float f) {
        this.templateSpace = f;
    }
}
