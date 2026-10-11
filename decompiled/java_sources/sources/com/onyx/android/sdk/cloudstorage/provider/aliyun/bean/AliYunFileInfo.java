package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.model.common.MediaCategory;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\f\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0001/B\u0005¢\u0006\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\u0011\u0010\u001c\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0016R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0007\"\u0004\b\u001f\u0010\tR \u0010 \u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0007\"\u0004\b\"\u0010\tR\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0007\"\u0004\b+\u0010\tR \u0010,\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0010\"\u0004\b.\u0010\u0012¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;", "Ljava/io/Serializable;", "()V", "category", "", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "contentHash", "getContentHash", "setContentHash", CouchFieldKey.KEY_CREATE_AT, "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", "exist", "", "getExist", Constants.BOOLEAN_VALUE_SIG, "setExist", "(Z)V", "fileExtension", "getFileExtension", "setFileExtension", "isFolder", "name", "getName", "setName", "parentFileId", "getParentFileId", "setParentFileId", "size", "", "getSize", "()J", "setSize", "(J)V", "type", "getType", "setType", "updatedAt", "getUpdatedAt", "setUpdatedAt", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AliYunFileInfo extends AliYunFileBase implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String category;

    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_CONTENT_HASH})
    @Nullable
    private String contentHash;

    @JSONField(alternateNames = {"created_at"})
    @Nullable
    private Date createdAt;
    private boolean exist;

    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_FILE_EXTENSION})
    @Nullable
    private String fileExtension;

    @Nullable
    private String name;

    @JSONField(alternateNames = {"parent_file_id"})
    @Nullable
    private String parentFileId;
    private long size;

    @Nullable
    private String type;

    @JSONField(alternateNames = {"updated_at"})
    @Nullable
    private Date updatedAt;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo$Companion;", "", "()V", "getMediaCategory", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "categoryName", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MediaCategory getMediaCategory(@Nullable String categoryName) {
            MediaCategory safeValueOf = MediaCategory.INSTANCE.safeValueOf(categoryName);
            return safeValueOf == null ? MediaCategory.Unknown : safeValueOf;
        }

        public Companion() {
        }
    }

    @Nullable
    public final String getCategory() {
        return this.category;
    }

    @Nullable
    public final String getContentHash() {
        return this.contentHash;
    }

    @Nullable
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final boolean getExist() {
        return this.exist;
    }

    @Nullable
    public final String getFileExtension() {
        return this.fileExtension;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getParentFileId() {
        return this.parentFileId;
    }

    public final long getSize() {
        return this.size;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    @Nullable
    public final Date getUpdatedAt() {
        return this.updatedAt;
    }

    public final boolean isFolder() {
        return StringUtils.equals(this.type, Constant.FOLDER);
    }

    public final void setCategory(@Nullable String str) {
        this.category = str;
    }

    public final void setContentHash(@Nullable String str) {
        this.contentHash = str;
    }

    public final void setCreatedAt(@Nullable Date date) {
        this.createdAt = date;
    }

    public final void setExist(boolean z) {
        this.exist = z;
    }

    public final void setFileExtension(@Nullable String str) {
        this.fileExtension = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setParentFileId(@Nullable String str) {
        this.parentFileId = str;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setType(@Nullable String str) {
        this.type = str;
    }

    public final void setUpdatedAt(@Nullable Date date) {
        this.updatedAt = date;
    }
}
