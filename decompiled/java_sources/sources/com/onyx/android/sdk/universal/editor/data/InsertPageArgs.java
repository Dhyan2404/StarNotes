package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import android.net.Uri;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017R \u0010-\u001a\b\u0012\u0004\u0012\u00020\u00130.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001e\"\u0004\b5\u0010 R\u001c\u00106\u001a\u0004\u0018\u000107X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "", "()V", "autoApplyPageMargin", "", "getAutoApplyPageMargin", Constants.BOOLEAN_VALUE_SIG, "setAutoApplyPageMargin", "(Z)V", "autoScrollToInsertPage", "getAutoScrollToInsertPage", "setAutoScrollToInsertPage", "contentOriginRectF", "Landroid/graphics/RectF;", "getContentOriginRectF", "()Landroid/graphics/RectF;", "setContentOriginRectF", "(Landroid/graphics/RectF;)V", "insertAt", "", "getInsertAt", "()I", "setInsertAt", "(I)V", "pageRect", "getPageRect", "setPageRect", "password", "", "getPassword", "()Ljava/lang/String;", "setPassword", "(Ljava/lang/String;)V", "selectAllPage", "getSelectAllPage", "setSelectAllPage", "templateJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "getTemplateJsonBean", "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "setTemplateJsonBean", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "templatePageIndex", "getTemplatePageIndex", "setTemplatePageIndex", "templatePageIndexList", "", "getTemplatePageIndexList", "()Ljava/util/List;", "setTemplatePageIndexList", "(Ljava/util/List;)V", "templatePath", "getTemplatePath", "setTemplatePath", "templateUri", "Landroid/net/Uri;", "getTemplateUri", "()Landroid/net/Uri;", "setTemplateUri", "(Landroid/net/Uri;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class InsertPageArgs {

    @Nullable
    private RectF contentOriginRectF;
    private int insertAt;
    private boolean selectAllPage;

    @Nullable
    private TemplateJsonBean templateJsonBean;
    private int templatePageIndex;

    @Nullable
    private Uri templateUri;

    @NotNull
    private String templatePath = "";

    @NotNull
    private String password = "";

    @NotNull
    private List<Integer> templatePageIndexList = new ArrayList();

    @NotNull
    private RectF pageRect = AppConfig.INSTANCE.virtualPageSize().toRectF();
    private boolean autoApplyPageMargin = true;
    private boolean autoScrollToInsertPage = true;

    public final boolean getAutoApplyPageMargin() {
        return this.autoApplyPageMargin;
    }

    public final boolean getAutoScrollToInsertPage() {
        return this.autoScrollToInsertPage;
    }

    @Nullable
    public final RectF getContentOriginRectF() {
        return this.contentOriginRectF;
    }

    public final int getInsertAt() {
        return this.insertAt;
    }

    @NotNull
    public final RectF getPageRect() {
        return this.pageRect;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    public final boolean getSelectAllPage() {
        return this.selectAllPage;
    }

    @Nullable
    public final TemplateJsonBean getTemplateJsonBean() {
        return this.templateJsonBean;
    }

    public final int getTemplatePageIndex() {
        return this.templatePageIndex;
    }

    @NotNull
    public final List<Integer> getTemplatePageIndexList() {
        return this.templatePageIndexList;
    }

    @NotNull
    public final String getTemplatePath() {
        return this.templatePath;
    }

    @Nullable
    public final Uri getTemplateUri() {
        return this.templateUri;
    }

    public final void setAutoApplyPageMargin(boolean z) {
        this.autoApplyPageMargin = z;
    }

    public final void setAutoScrollToInsertPage(boolean z) {
        this.autoScrollToInsertPage = z;
    }

    public final void setContentOriginRectF(@Nullable RectF rectF) {
        this.contentOriginRectF = rectF;
    }

    public final void setInsertAt(int i) {
        this.insertAt = i;
    }

    public final void setPageRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageRect = rectF;
    }

    public final void setPassword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.password = str;
    }

    public final void setSelectAllPage(boolean z) {
        this.selectAllPage = z;
    }

    public final void setTemplateJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.templateJsonBean = templateJsonBean;
    }

    public final void setTemplatePageIndex(int i) {
        this.templatePageIndex = i;
    }

    public final void setTemplatePageIndexList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.templatePageIndexList = list;
    }

    public final void setTemplatePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.templatePath = str;
    }

    public final void setTemplateUri(@Nullable Uri uri) {
        this.templateUri = uri;
    }
}
