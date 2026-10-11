package com.onyx.android.sdk.cloudstorage.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.common.MediaCategory;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.nio.file.LinkOption;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 G2\u00020\u00012\u00020\u0002:\u0001GB\u009f\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000b¢\u0006\u0002\u0010\u0017J\b\u0010@\u001a\u00020\u0000H\u0014J\b\u0010A\u001a\u00020\tH\u0007J\b\u0010B\u001a\u00020\tH\u0007J\u0006\u0010C\u001a\u00020\u0004J\u000e\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0015\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0019\"\u0004\b#\u0010\u001bR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0019\"\u0004\b)\u0010\u001bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0019\"\u0004\b+\u0010\u001bR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0019\"\u0004\b1\u0010\u001bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0019\"\u0004\b3\u0010\u001bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u001d\"\u0004\b9\u0010\u001fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u0019\"\u0004\b?\u0010\u001b¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", CouchFieldKey.KEY_PARENT_ID, "", CouchFieldKey.KEY_LOCAL_FILE_PATH, "cloudFilePath", CouchFieldKey.KEY_MD5, CouchFieldKey.KEY_DIR, "", "size", "", "name", CouchFieldKey.KEY_SYNC_STATUS, "Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "mediaCategory", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "thumbnail", "accountId", "childFolderCount", "childFileCount", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJ)V", "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", "getChildFileCount", "()J", "setChildFileCount", "(J)V", "getChildFolderCount", "setChildFolderCount", "getCloudFilePath", "setCloudFilePath", "getDir", Constants.BOOLEAN_VALUE_SIG, "setDir", "(Z)V", "getLocalFilePath", "setLocalFilePath", "getMd5", "setMd5", "getMediaCategory", "()Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "setMediaCategory", "(Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;)V", "getName", "setName", "getParentId", "setParentId", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "setProvider", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "getSize", "setSize", "getSyncStatus", "()Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;", "setSyncStatus", "(Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;)V", "getThumbnail", "setThumbnail", "clone", "isFileSizeChanged", "isLocalFileChanged", "localFileString", "updateModelField", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudFileBean extends BaseReplicatorModel implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String accountId;
    private transient long childFileCount;
    private transient long childFolderCount;

    @Nullable
    private String cloudFilePath;
    private boolean dir;

    @Nullable
    private String localFilePath;

    @Nullable
    private String md5;

    @NotNull
    private MediaCategory mediaCategory;

    @Nullable
    private String name;

    @Nullable
    private String parentId;

    @NotNull
    private Provider provider;
    private long size;

    @NotNull
    private SyncStatus syncStatus;

    @Nullable
    private String thumbnail;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "createFromLocalFile", "filePath", "", "getCloudFilePath", CouchFieldKey.KEY_LOCAL_FILE_PATH, "updateFileInfo", "", "fileBean", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudFileBean create(@NotNull Provider provider) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            CloudFileBean cloudFileBean = new CloudFileBean(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
            cloudFileBean.setProvider(provider);
            return cloudFileBean;
        }

        @NotNull
        public final CloudFileBean createFromLocalFile(@NotNull String filePath) {
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            CloudFileBean create = create(Provider.INSTANCE.getProviderFromPath(filePath));
            create.setLocalFilePath(filePath);
            create.setDir(FileUtils.isDirectory(new File(filePath), new LinkOption[0]));
            create.setCreatedAt(System.currentTimeMillis());
            create.setUpdatedAt(System.currentTimeMillis());
            create.setName(FilenameUtils.getName(filePath));
            create.setSyncStatus(SyncStatus.NEW_FROM_LOCAL);
            create.setCloudFilePath(CloudFileBean.INSTANCE.getCloudFilePath(filePath));
            if (!create.getDir()) {
                updateFileInfo(create, filePath);
            }
            return create;
        }

        @NotNull
        public final String getCloudFilePath(@NotNull String localFilePath) {
            int indexOf$default;
            Intrinsics.checkNotNullParameter(localFilePath, "localFilePath");
            Provider providerFromPath = Provider.INSTANCE.getProviderFromPath(localFilePath);
            String substringAfter = StringUtils.substringAfter(localFilePath, providerFromPath.getProviderRootPath());
            Intrinsics.checkNotNull(substringAfter);
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) substringAfter, separator, 1, false, 4, (Object) null);
            if (indexOf$default > 0) {
                Intrinsics.checkNotNull(substringAfter);
                substringAfter = substringAfter.substring(indexOf$default);
                Intrinsics.checkNotNullExpressionValue(substringAfter, "this as java.lang.String).substring(startIndex)");
            }
            return com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.combinePath(CloudStorageConstants.INSTANCE.getCloudOnyxPath(providerFromPath), substringAfter);
        }

        public final void updateFileInfo(@NotNull CloudFileBean fileBean, @NotNull String filePath) {
            Intrinsics.checkNotNullParameter(fileBean, "fileBean");
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            File file = new File(filePath);
            if (file.isFile()) {
                fileBean.setSize(FileUtils.sizeOf(file));
                fileBean.setMd5(com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.computeFullMD5Safely(filePath));
            }
        }

        public Companion() {
        }
    }

    public CloudFileBean() {
        this(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    public final long getChildFileCount() {
        return this.childFileCount;
    }

    public final long getChildFolderCount() {
        return this.childFolderCount;
    }

    @Nullable
    public final String getCloudFilePath() {
        return this.cloudFilePath;
    }

    public final boolean getDir() {
        return this.dir;
    }

    @Nullable
    public final String getLocalFilePath() {
        return this.localFilePath;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    @NotNull
    public final MediaCategory getMediaCategory() {
        return this.mediaCategory;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    @NotNull
    public final Provider getProvider() {
        return this.provider;
    }

    public final long getSize() {
        return this.size;
    }

    @NotNull
    public final SyncStatus getSyncStatus() {
        return this.syncStatus;
    }

    @Nullable
    public final String getThumbnail() {
        return this.thumbnail;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isFileSizeChanged() {
        if (this.dir || StringUtils.isBlank(this.localFilePath)) {
            return false;
        }
        String str = this.localFilePath;
        Intrinsics.checkNotNull(str);
        return FileUtils.sizeOf(new File(str)) != this.size;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLocalFileChanged() {
        if (com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.fileExist(this.localFilePath)) {
            String str = this.localFilePath;
            Intrinsics.checkNotNull(str);
            if (FileUtils.sizeOf(new File(str)) == this.size) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final String localFileString() {
        if (StringUtils.isBlank(this.localFilePath)) {
            return "";
        }
        String str = this.localFilePath;
        Intrinsics.checkNotNull(str);
        return com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.getFileSize(FileUtils.sizeOf(new File(str)));
    }

    public final void setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    public final void setChildFileCount(long j) {
        this.childFileCount = j;
    }

    public final void setChildFolderCount(long j) {
        this.childFolderCount = j;
    }

    public final void setCloudFilePath(@Nullable String str) {
        this.cloudFilePath = str;
    }

    public final void setDir(boolean z) {
        this.dir = z;
    }

    public final void setLocalFilePath(@Nullable String str) {
        this.localFilePath = str;
    }

    public final void setMd5(@Nullable String str) {
        this.md5 = str;
    }

    public final void setMediaCategory(@NotNull MediaCategory mediaCategory) {
        Intrinsics.checkNotNullParameter(mediaCategory, "<set-?>");
        this.mediaCategory = mediaCategory;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setParentId(@Nullable String str) {
        this.parentId = str;
    }

    public final void setProvider(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "<set-?>");
        this.provider = provider;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setSyncStatus(@NotNull SyncStatus syncStatus) {
        Intrinsics.checkNotNullParameter(syncStatus, "<set-?>");
        this.syncStatus = syncStatus;
    }

    public final void setThumbnail(@Nullable String str) {
        this.thumbnail = str;
    }

    public final void updateModelField(@NotNull CloudFileBean other) {
        Intrinsics.checkNotNullParameter(other, "other");
        setUniqueId(other.getUniqueId());
        setUser(other.getUser());
        setDbId(other.getDbId());
        setCreatedAt(other.getCreatedAt());
        setUpdatedAt(other.getUpdatedAt());
        this.parentId = other.parentId;
        this.localFilePath = other.localFilePath;
        this.cloudFilePath = other.cloudFilePath;
        this.md5 = other.md5;
        this.dir = other.dir;
        this.size = other.size;
        this.name = other.name;
        this.syncStatus = other.syncStatus;
        this.provider = other.provider;
        this.mediaCategory = other.mediaCategory;
        this.thumbnail = other.thumbnail;
        this.accountId = other.accountId;
        this.childFolderCount = other.childFolderCount;
        this.childFileCount = other.childFileCount;
    }

    public /* synthetic */ CloudFileBean(String str, String str2, String str3, String str4, boolean z, long j, String str5, SyncStatus syncStatus, Provider provider, MediaCategory mediaCategory, String str6, String str7, long j2, long j3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? false : z, (i & 32) != 0 ? 0L : j, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? SyncStatus.NEW_FROM_CLOUD : syncStatus, (i & 256) != 0 ? Provider.BAIDU_YUN : provider, (i & 512) != 0 ? MediaCategory.Unknown : mediaCategory, (i & 1024) != 0 ? null : str6, (i & 2048) != 0 ? null : str7, (i & 4096) != 0 ? 0L : j2, (i & 8192) != 0 ? 0L : j3);
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public CloudFileBean m72179clone() {
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(jSONUtils.toJSONString(this), (Class<Object>) CloudFileBean.class);
        Intrinsics.checkNotNull(parseObject);
        return (CloudFileBean) parseObject;
    }

    public CloudFileBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z, long j, @Nullable String str5, @NotNull SyncStatus syncStatus, @NotNull Provider provider, @NotNull MediaCategory mediaCategory, @Nullable String str6, @Nullable String str7, long j2, long j3) {
        Intrinsics.checkNotNullParameter(syncStatus, "syncStatus");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(mediaCategory, "mediaCategory");
        this.parentId = str;
        this.localFilePath = str2;
        this.cloudFilePath = str3;
        this.md5 = str4;
        this.dir = z;
        this.size = j;
        this.name = str5;
        this.syncStatus = syncStatus;
        this.provider = provider;
        this.mediaCategory = mediaCategory;
        this.thumbnail = str6;
        this.accountId = str7;
        this.childFolderCount = j2;
        this.childFileCount = j3;
    }
}
