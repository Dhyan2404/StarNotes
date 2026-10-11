package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\u0006\u0010!\u001a\u00020\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "contentId", "", "getContentId", "()Ljava/lang/String;", "setContentId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_CONTENT_PAGE_ID, "getContentPageId", "setContentPageId", CouchFieldKey.KEY_CONTENT_RELATIVE_PATH, "getContentRelativePath", "setContentRelativePath", CouchFieldKey.KEY_CONTENT_TYPE, "getContentType", "setContentType", CouchFieldKey.KEY_GEO_CONTENT, "getGeoContent", "setGeoContent", CouchFieldKey.KEY_SIZE_FORMAT, "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "getSizeFormat", "()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "setSizeFormat", "(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toTemplateJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TemplateRecentUseModel extends BaseReplicatorModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private String contentType = ContentConstants.TYPE_GEO_LAYOUT;

    @NotNull
    private String contentRelativePath = "";

    @NotNull
    private String contentId = "";

    @NotNull
    private String contentPageId = "";

    @NotNull
    private String geoContent = "";

    @NotNull
    private SizeFormat sizeFormat = SizeFormat.f45503A4;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;", "templateJsonBean", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TemplateRecentUseModel create(@NotNull TemplateJsonBean templateJsonBean) {
            Intrinsics.checkNotNullParameter(templateJsonBean, "templateJsonBean");
            TemplateRecentUseModel templateRecentUseModel = new TemplateRecentUseModel();
            templateRecentUseModel.setContentType(templateJsonBean.getContentType());
            templateRecentUseModel.setContentRelativePath(templateJsonBean.getRelativePath());
            templateRecentUseModel.setContentId(templateJsonBean.getUniqueId());
            templateRecentUseModel.setContentPageId(templateJsonBean.getContentPageId());
            templateRecentUseModel.setGeoContent(templateJsonBean.getGeoContent());
            templateRecentUseModel.setSizeFormat(SizeFormat.INSTANCE.safetyValueOf(templateJsonBean.getSizeFormat()));
            return templateRecentUseModel;
        }

        public Companion() {
        }
    }

    public boolean equals(@Nullable Object other) {
        if (other == null) {
            return false;
        }
        if (this == other) {
            return true;
        }
        TemplateRecentUseModel templateRecentUseModel = other instanceof TemplateRecentUseModel ? (TemplateRecentUseModel) other : null;
        return templateRecentUseModel != null && Intrinsics.areEqual(this.contentType, templateRecentUseModel.contentType) && Intrinsics.areEqual(this.contentRelativePath, templateRecentUseModel.contentRelativePath) && Intrinsics.areEqual(this.contentId, templateRecentUseModel.contentId) && Intrinsics.areEqual(this.contentPageId, templateRecentUseModel.contentPageId) && Intrinsics.areEqual(this.geoContent, templateRecentUseModel.geoContent);
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
    public final String getContentRelativePath() {
        return this.contentRelativePath;
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
    public final SizeFormat getSizeFormat() {
        return this.sizeFormat;
    }

    public int hashCode() {
        return (((((((this.contentType.hashCode() * 31) + this.contentRelativePath.hashCode()) * 31) + this.contentId.hashCode()) * 31) + this.contentPageId.hashCode()) * 31) + this.geoContent.hashCode();
    }

    public final void setContentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentId = str;
    }

    public final void setContentPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPageId = str;
    }

    public final void setContentRelativePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentRelativePath = str;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setGeoContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.geoContent = str;
    }

    public final void setSizeFormat(@NotNull SizeFormat sizeFormat) {
        Intrinsics.checkNotNullParameter(sizeFormat, "<set-?>");
        this.sizeFormat = sizeFormat;
    }

    @NotNull
    public final TemplateJsonBean toTemplateJsonBean() {
        TemplateJsonBean templateJsonBean = new TemplateJsonBean();
        templateJsonBean.setContentType(this.contentType);
        templateJsonBean.setGeoContent(this.geoContent);
        templateJsonBean.setContentPageId(this.contentPageId);
        templateJsonBean.setUniqueId(this.contentId);
        templateJsonBean.setRelativePath(this.contentRelativePath);
        return templateJsonBean;
    }
}
