package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.common.MediaCategory;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.Serializable;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 =2\u00020\u0001:\u0004=>?@B\u0005¢\u0006\u0002\u0010\u0002J\b\u00109\u001a\u00020:H\u0007J\b\u0010;\u001a\u00020:H\u0007J\b\u0010<\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u00048G¢\u0006\u0006\u001a\u0004\b\n\u0010\u0006R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0006\"\u0004\b\u001f\u0010\bR\u001c\u0010 \u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0010R \u0010#\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0006\"\u0004\b%\u0010\bR\u0011\u0010&\u001a\u00020'8G¢\u0006\u0006\u001a\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006A"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "Ljava/io/Serializable;", "()V", "cTag", "", "getCTag", "()Ljava/lang/String;", "setCTag", "(Ljava/lang/String;)V", "cloudFilePath", "getCloudFilePath", "createdDateTime", "Ljava/util/Date;", "getCreatedDateTime", "()Ljava/util/Date;", "setCreatedDateTime", "(Ljava/util/Date;)V", "file", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$File;", "getFile", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$File;", "setFile", "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$File;)V", Constant.FOLDER, "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Folder;", "getFolder", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Folder;", "setFolder", "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Folder;)V", "id", "getId", "setId", OneDriverConstants.LAST_MODIFIED_DATE_TIME, "getLastModifiedDateTime", "setLastModifiedDateTime", "link", "getLink", "setLink", "mediaCategory", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "getMediaCategory", "()Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "name", "getName", "setName", OneDriverConstants.PARENT_REFERENCE, "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Parent;", "getParentReference", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Parent;", "setParentReference", "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Parent;)V", "size", "", "getSize", "()J", "setSize", "(J)V", "isFile", "", "isFolder", "toString", "Companion", "File", "Folder", "Parent", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OneDriverFileInfo implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String cTag;

    @Nullable
    private Date createdDateTime;

    @Nullable
    private File file;

    @Nullable
    private Folder folder;

    @Nullable
    private String id;

    @Nullable
    private Date lastModifiedDateTime;

    @JSONField(alternateNames = {OneDriverConstants.GRAPH_DOWNLOAD_URL})
    @Nullable
    private String link;

    @Nullable
    private String name;

    @Nullable
    private Parent parentReference;
    private long size;

    @Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J*\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00022\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nJ \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;", "", "", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "list", "sortByFolder", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "cloudStorageRecordProvider", "", "fileList", "", "accountId", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "toCloudFiles", "file", "toCloudFile", "", "lhs", "rhs", "Lcom/onyx/android/sdk/base/data/SortOrder;", "ascOrder", "", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SortOrder.values().length];
                try {
                    iArr[SortOrder.Desc.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: c */
        public static final int m32760c(Function2 tmp0, Object obj, Object obj2) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Number) tmp0.invoke(obj, obj2)).intValue();
        }

        /* renamed from: b */
        public final int m32761b(boolean lhs, boolean rhs, SortOrder ascOrder) {
            if (WhenMappings.$EnumSwitchMapping$0[ascOrder.ordinal()] == 1) {
                if (lhs != rhs) {
                    if (!rhs) {
                        return -1;
                    }
                    return 1;
                }
                return 0;
            }
            if (lhs != rhs) {
                if (!lhs) {
                    return -1;
                }
                return 1;
            }
            return 0;
        }

        @NotNull
        public final List<OneDriverFileInfo> sortByFolder(@NotNull List<OneDriverFileInfo> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            final OneDriverFileInfo$Companion$sortByFolder$1 oneDriverFileInfo$Companion$sortByFolder$1 = new Function2<OneDriverFileInfo, OneDriverFileInfo, Integer>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo$Companion$sortByFolder$1
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(OneDriverFileInfo oneDriverFileInfo, OneDriverFileInfo oneDriverFileInfo2) {
                    int m32761b;
                    m32761b = OneDriverFileInfo.INSTANCE.m32761b(oneDriverFileInfo.isFolder(), oneDriverFileInfo2.isFolder(), SortOrder.Desc);
                    return Integer.valueOf(m32761b);
                }
            };
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.igk
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m32760c;
                    m32760c = OneDriverFileInfo.Companion.m32760c(Function2.this, obj, obj2);
                    return m32760c;
                }
            });
            return list;
        }

        @NotNull
        public final CloudFileBean toCloudFile(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull OneDriverFileInfo file, @NotNull String accountId) {
            Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            String cloudFilePath = file.getCloudFilePath();
            CloudFileBean create = CloudFileBean.INSTANCE.create(Provider.ONE_DRIVE);
            String id = file.getId();
            if (id == null) {
                id = "";
            }
            create.setUniqueId(id);
            create.setDir(file.isFolder());
            create.setName(file.getName());
            create.setCloudFilePath(cloudFilePath);
            BaseCloudStorageProvider parent = cloudStorageRecordProvider.getParent();
            Intrinsics.checkNotNull(cloudFilePath);
            create.setLocalFilePath(cloudStorageRecordProvider.getCloudFileLocalPath(parent, cloudFilePath));
            create.setAccountId(accountId);
            create.setMd5(file.getCTag());
            create.setSize(file.getSize());
            create.setMediaCategory(file.getMediaCategory());
            Date lastModifiedDateTime = file.getLastModifiedDateTime();
            create.setUpdatedAt(lastModifiedDateTime != null ? lastModifiedDateTime.getTime() : 0L);
            Date createdDateTime = file.getCreatedDateTime();
            create.setCreatedAt(createdDateTime != null ? createdDateTime.getTime() : 0L);
            return create;
        }

        @NotNull
        public final List<CloudFileBean> toCloudFiles(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull List<OneDriverFileInfo> fileList, @NotNull String accountId) {
            Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
            Intrinsics.checkNotNullParameter(fileList, "fileList");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            ArrayList arrayList = new ArrayList();
            Iterator<OneDriverFileInfo> it2 = fileList.iterator();
            while (it2.hasNext()) {
                CollectionKt.safeAdd(arrayList, toCloudFile(cloudStorageRecordProvider, it2.next(), accountId));
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8G¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$File;", "Ljava/io/Serializable;", "()V", "hashes", "", "", "getHashes", "()Ljava/util/Map;", "setHashes", "(Ljava/util/Map;)V", "mediaCategory", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "getMediaCategory", "()Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "getMimeType", "()Ljava/lang/String;", "setMimeType", "(Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class File implements Serializable {

        @Nullable
        private Map<String, String> hashes;

        @Nullable
        private String mimeType;

        @Nullable
        public final Map<String, String> getHashes() {
            return this.hashes;
        }

        @JSONField(deserialize = false, serialize = false)
        @NotNull
        public final MediaCategory getMediaCategory() {
            boolean startsWith$default;
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(StringKt.safelyGetStr(this.mimeType), FileExtensionUtils.IMAGE_PREFIX, false, 2, null);
            return startsWith$default ? MediaCategory.Image : MediaCategory.Unknown;
        }

        @Nullable
        public final String getMimeType() {
            return this.mimeType;
        }

        public final void setHashes(@Nullable Map<String, String> map) {
            this.hashes = map;
        }

        public final void setMimeType(@Nullable String str) {
            this.mimeType = str;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Folder;", "Ljava/io/Serializable;", "()V", "childCount", "", "getChildCount", "()J", "setChildCount", "(J)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Folder implements Serializable {
        private long childCount;

        public final long getChildCount() {
            return this.childCount;
        }

        public final void setChildCount(long j) {
            this.childCount = j;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u001c\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00028G¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0006¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Parent;", "", "", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDriveId", "()Ljava/lang/String;", "setDriveId", "(Ljava/lang/String;)V", "driveId", "b", "getDriveType", "setDriveType", "driveType", "c", "getId", "setId", "id", "d", "getName", "setName", "name", "e", "getPath", "setPath", "path", "getDecodedPath", "decodedPath", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Parent {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public String driveId;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public String driveType;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public String id;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public String name;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public String path;

        @JSONField(deserialize = false, serialize = false)
        @Nullable
        public final String getDecodedPath() {
            String str = this.path;
            return str == null || str.length() == 0 ? this.path : URLDecoder.decode(this.path, "UTF-8");
        }

        @Nullable
        public final String getDriveId() {
            return this.driveId;
        }

        @Nullable
        public final String getDriveType() {
            return this.driveType;
        }

        @Nullable
        public final String getId() {
            return this.id;
        }

        @Nullable
        public final String getName() {
            return this.name;
        }

        @Nullable
        public final String getPath() {
            return this.path;
        }

        public final void setDriveId(@Nullable String str) {
            this.driveId = str;
        }

        public final void setDriveType(@Nullable String str) {
            this.driveType = str;
        }

        public final void setId(@Nullable String str) {
            this.id = str;
        }

        public final void setName(@Nullable String str) {
            this.name = str;
        }

        public final void setPath(@Nullable String str) {
            this.path = str;
        }
    }

    @Nullable
    public final String getCTag() {
        return this.cTag;
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final String getCloudFilePath() {
        String str = this.name;
        Parent parent = this.parentReference;
        if (parent == null) {
            return str;
        }
        Intrinsics.checkNotNull(parent);
        String substringAfter = StringUtils.substringAfter(parent.getDecodedPath(), CloudStorageConstants.ONE_DRIVER_ROOT_PATH_PREFIX);
        if (substringAfter == null || substringAfter.length() == 0) {
            substringAfter = "/";
        }
        return FilenameUtils.concat(substringAfter, str);
    }

    @Nullable
    public final Date getCreatedDateTime() {
        return this.createdDateTime;
    }

    @Nullable
    public final File getFile() {
        return this.file;
    }

    @Nullable
    public final Folder getFolder() {
        return this.folder;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final Date getLastModifiedDateTime() {
        return this.lastModifiedDateTime;
    }

    @Nullable
    public final String getLink() {
        return this.link;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final MediaCategory getMediaCategory() {
        if (isFolder() || !isFile()) {
            return MediaCategory.Unknown;
        }
        File file = this.file;
        Intrinsics.checkNotNull(file);
        return file.getMediaCategory();
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Parent getParentReference() {
        return this.parentReference;
    }

    public final long getSize() {
        return this.size;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isFile() {
        return this.file != null;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isFolder() {
        return this.folder != null;
    }

    public final void setCTag(@Nullable String str) {
        this.cTag = str;
    }

    public final void setCreatedDateTime(@Nullable Date date) {
        this.createdDateTime = date;
    }

    public final void setFile(@Nullable File file) {
        this.file = file;
    }

    public final void setFolder(@Nullable Folder folder) {
        this.folder = folder;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setLastModifiedDateTime(@Nullable Date date) {
        this.lastModifiedDateTime = date;
    }

    public final void setLink(@Nullable String str) {
        this.link = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setParentReference(@Nullable Parent parent) {
        this.parentReference = parent;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    @NotNull
    public String toString() {
        return "OneDriverFileInfo{id='" + this.id + "', createdDateTime=" + this.createdDateTime + ", lastModifiedDateTime=" + this.lastModifiedDateTime + ", name='" + this.name + "', size=" + this.size + ", cTag='" + this.cTag + "', file=" + this.file + ", folder=" + this.folder + ", link='" + this.link + "'}";
    }
}
