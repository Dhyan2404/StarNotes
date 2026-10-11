package com.onyx.android.sdk.data.common.data;

import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "", "()V", "colorTheme", "", "getColorTheme", "()I", "setColorTheme", "(I)V", CouchFieldKey.KEY_CONTENT_PAGE_ID, "", "getContentPageId", "()Ljava/lang/String;", "setContentPageId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CONTENT_TYPE, "getContentType", "setContentType", CouchFieldKey.KEY_GEO_CONTENT, "getGeoContent", "setGeoContent", "relativePath", "getRelativePath", "setRelativePath", CouchFieldKey.KEY_RESOURCE_ID, "getResourceId", "setResourceId", CouchFieldKey.KEY_SIZE_FORMAT, "getSizeFormat", "setSizeFormat", CouchFieldKey.KEY_UNIQUE_ID, "getUniqueId", "setUniqueId", "sameContent", "", Constants.ATTRVAL_OTHER, "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TemplateJsonBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int colorTheme;

    @NotNull
    private String uniqueId = "";

    @NotNull
    private String geoContent = "";

    @NotNull
    private String contentType = ContentConstants.TYPE_GEO_LAYOUT;

    @NotNull
    private String relativePath = "";

    @NotNull
    private String contentPageId = "";

    @NotNull
    private String resourceId = "";

    @NotNull
    private String sizeFormat = "A4";

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;", "", "()V", "defaultBoundlessPaper", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "defaultCover", "defaultPaper", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TemplateJsonBean defaultBoundlessPaper() {
            TemplateJsonBean templateJsonBean = new TemplateJsonBean();
            templateJsonBean.setUniqueId("80000");
            return templateJsonBean;
        }

        @NotNull
        public final TemplateJsonBean defaultCover() {
            TemplateJsonBean templateJsonBean = new TemplateJsonBean();
            templateJsonBean.setUniqueId("9");
            return templateJsonBean;
        }

        @NotNull
        public final TemplateJsonBean defaultPaper() {
            TemplateJsonBean templateJsonBean = new TemplateJsonBean();
            templateJsonBean.setUniqueId("0");
            return templateJsonBean;
        }

        private Companion() {
        }
    }

    public final int getColorTheme() {
        return this.colorTheme;
    }

    @NotNull
    public final String getContentPageId() {
        return this.contentPageId;
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    public final String getGeoContent() {
        return this.geoContent;
    }

    @NotNull
    public final String getRelativePath() {
        return this.relativePath;
    }

    @NotNull
    public final String getResourceId() {
        return this.resourceId;
    }

    @NotNull
    public final String getSizeFormat() {
        return this.sizeFormat;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final boolean sameContent(@Nullable TemplateJsonBean other) {
        return other != null && Intrinsics.areEqual(this.uniqueId, other.uniqueId) && Intrinsics.areEqual(this.geoContent, other.geoContent) && Intrinsics.areEqual(this.contentType, other.contentType) && Intrinsics.areEqual(this.relativePath, other.relativePath) && Intrinsics.areEqual(this.contentPageId, other.contentPageId) && Intrinsics.areEqual(this.resourceId, other.resourceId) && Intrinsics.areEqual(this.sizeFormat, other.sizeFormat) && this.colorTheme == other.colorTheme;
    }

    public final void setColorTheme(int i) {
        this.colorTheme = i;
    }

    public final void setContentPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPageId = str;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setGeoContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.geoContent = str;
    }

    public final void setRelativePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.relativePath = str;
    }

    public final void setResourceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceId = str;
    }

    public final void setSizeFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sizeFormat = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }
}
