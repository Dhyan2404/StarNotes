package com.onyx.android.sdk.data.common.data.template;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001a\u0010!\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000e¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/TemplateData;", "", "()V", "colorTheme", "", "getColorTheme", "()I", "setColorTheme", "(I)V", "contentId", "", "getContentId", "()Ljava/lang/String;", "setContentId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CONTENT_PAGE_ID, "getContentPageId", "setContentPageId", "contentPageSize", "Landroid/graphics/RectF;", "getContentPageSize", "()Landroid/graphics/RectF;", "setContentPageSize", "(Landroid/graphics/RectF;)V", CouchFieldKey.KEY_CONTENT_RELATIVE_PATH, "getContentRelativePath", "setContentRelativePath", CouchFieldKey.KEY_CONTENT_TYPE, "getContentType", "setContentType", CouchFieldKey.KEY_RESOURCE_ID, "getResourceId", "setResourceId", CouchFieldKey.KEY_SIZE_FORMAT, "getSizeFormat", "setSizeFormat", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TemplateData {
    private int colorTheme;

    @NotNull
    private RectF contentPageSize = new RectF();

    @NotNull
    private String contentType = ContentConstants.TYPE_GEO_LAYOUT;

    @NotNull
    private String contentRelativePath = "";

    @NotNull
    private String contentPageId = "";

    @NotNull
    private String contentId = "";

    @NotNull
    private String resourceId = "";

    @NotNull
    private String sizeFormat = "A4";

    public final int getColorTheme() {
        return this.colorTheme;
    }

    @NotNull
    public final String getContentId() {
        return this.contentId;
    }

    @NotNull
    public final String getContentPageId() {
        return this.contentPageId;
    }

    @NotNull
    public final RectF getContentPageSize() {
        return this.contentPageSize;
    }

    @NotNull
    public final String getContentRelativePath() {
        return this.contentRelativePath;
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    public final String getResourceId() {
        return this.resourceId;
    }

    @NotNull
    public final String getSizeFormat() {
        return this.sizeFormat;
    }

    public final void setColorTheme(int i) {
        this.colorTheme = i;
    }

    public final void setContentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentId = str;
    }

    public final void setContentPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPageId = str;
    }

    public final void setContentPageSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.contentPageSize = rectF;
    }

    public final void setContentRelativePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentRelativePath = str;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setResourceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceId = str;
    }

    public final void setSizeFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sizeFormat = str;
    }
}
