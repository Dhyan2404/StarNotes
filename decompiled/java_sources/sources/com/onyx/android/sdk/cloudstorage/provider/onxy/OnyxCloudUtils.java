package com.onyx.android.sdk.cloudstorage.provider.onxy;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ComparatorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.common.MediaCategory;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.oss.GetListObjectBean;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FileExistsException;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b8\u00109J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\t\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u0002J$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0002J&\u0010\u001b\u001a\u00020\u001a2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\rJ\u0016\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 J\u0018\u0010%\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\b\u0010$\u001a\u0004\u0018\u00010\u0002J\u000e\u0010'\u001a\u00020&2\u0006\u0010#\u001a\u00020\"J&\u0010+\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020(2\u0006\u0010!\u001a\u00020 2\u0006\u0010*\u001a\u00020\u0012J\"\u0010.\u001a\b\u0012\u0004\u0012\u00020-0\f2\u0006\u0010\u001f\u001a\u00020\u001e2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u0016\u00100\u001a\u00020-2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\"J\u0016\u00100\u001a\u00020-2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\rJ\u0010\u00103\u001a\u0002022\u0006\u00101\u001a\u00020\u0002H\u0002J\u0010\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u0002H\u0002R\u0014\u00106\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u00107¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;", "", "", RequestParameters.PREFIX, "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;", "getBaseListObjectBean", "partPrefix", "getCompleteCloudPrefix", Constant.TAG_USER_ID, "getOssNetDiskDirPath", "path", "appendFileSeparator", "", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "list", "currentDir", "removeCurrentObject", "objectSummary", "", "isCurrentDir", "objectKey", "getCloudFilePath", "Lcom/onyx/android/sdk/base/data/SortBy;", "sortBy", "Lcom/onyx/android/sdk/base/data/SortOrder;", "sortOrder", "", Constants.ELEMNAME_SORT_STRING, "summary", "isDirectory", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "cloudStorageRecordProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "operationData", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "metadata", "cloudPath", "setCloudPath", "", "getHeaderAppendPosition", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "ossManager", "checkExist", "copySmallFile", "objectList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "toCloudFiles", "fileInfo", "toCloudFile", "name", "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;", "d", "eTag", "e", "OSS_HEADER_APPEND_POSITION", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxCloudUtils {

    @NotNull
    public static final OnyxCloudUtils INSTANCE = new OnyxCloudUtils();

    @NotNull
    public static final String OSS_HEADER_APPEND_POSITION = "x-oss-next-append-position";

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SortBy.values().length];
            try {
                iArr[SortBy.Name.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SortBy.Size.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: f */
    public static final int m32796f(SortOrder sortOrder, OSSObjectSummary lhs, OSSObjectSummary rhs) {
        Intrinsics.checkNotNullParameter(sortOrder, "$sortOrder");
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
        OnyxCloudUtils onyxCloudUtils = INSTANCE;
        int booleanComparator = comparatorUtils.booleanComparator(onyxCloudUtils.isDirectory(lhs), onyxCloudUtils.isDirectory(rhs), SortOrder.Desc);
        if (booleanComparator != 0) {
            return booleanComparator;
        }
        String key = lhs.getKey();
        Intrinsics.checkNotNullExpressionValue(key, "getKey(...)");
        String key2 = rhs.getKey();
        Intrinsics.checkNotNullExpressionValue(key2, "getKey(...)");
        return comparatorUtils.stringComparator(key, key2, sortOrder);
    }

    /* renamed from: g */
    public static final int m32797g(SortOrder sortOrder, OSSObjectSummary lhs, OSSObjectSummary rhs) {
        Intrinsics.checkNotNullParameter(sortOrder, "$sortOrder");
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
        OnyxCloudUtils onyxCloudUtils = INSTANCE;
        int booleanComparator = comparatorUtils.booleanComparator(onyxCloudUtils.isDirectory(lhs), onyxCloudUtils.isDirectory(rhs), SortOrder.Desc);
        return booleanComparator == 0 ? comparatorUtils.longComparator(lhs.getSize(), rhs.getSize(), sortOrder) : booleanComparator;
    }

    /* renamed from: h */
    public static final int m32798h(SortOrder sortOrder, OSSObjectSummary lhs, OSSObjectSummary rhs) {
        Intrinsics.checkNotNullParameter(sortOrder, "$sortOrder");
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
        OnyxCloudUtils onyxCloudUtils = INSTANCE;
        int booleanComparator = comparatorUtils.booleanComparator(onyxCloudUtils.isDirectory(lhs), onyxCloudUtils.isDirectory(rhs), SortOrder.Desc);
        return booleanComparator == 0 ? comparatorUtils.longComparator(lhs.getLastModified().getTime(), rhs.getLastModified().getTime(), sortOrder) : booleanComparator;
    }

    @Nullable
    public final String appendFileSeparator(@Nullable String path) {
        return path == null || path.length() == 0 ? File.separator : FilenameUtils.concat(path, "");
    }

    @NotNull
    public final ObjectMetadata copySmallFile(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull RxOSSManager ossManager, @NotNull CloudFileOperation.OperationData operationData, boolean checkExist) throws Exception {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(ossManager, "ossManager");
        Intrinsics.checkNotNullParameter(operationData, "operationData");
        String completeCloudPrefix = getCompleteCloudPrefix(operationData.getPath());
        String parent = FileUtils.INSTANCE.getParent(completeCloudPrefix);
        if (operationData.getDest() != null) {
            parent = getCompleteCloudPrefix(operationData.getDest());
        }
        String concat = FilenameUtils.concat(parent, operationData.getNewName());
        if (isDirectory(cloudStorageRecordProvider, operationData)) {
            completeCloudPrefix = FilenameUtils.concat(completeCloudPrefix, "");
            Intrinsics.checkNotNullExpressionValue(completeCloudPrefix, "concat(...)");
            concat = FilenameUtils.concat(concat, "");
        }
        Debug.INSTANCE.m32035d(OnyxCloudUtils.class, JSONUtils.INSTANCE.toJson(operationData) + "\r\n" + completeCloudPrefix + " copy to " + concat, new Object[0]);
        if (checkExist) {
            Intrinsics.checkNotNull(concat);
            if (ossManager.doesObjectExist(concat)) {
                throw new FileExistsException();
            }
        }
        Intrinsics.checkNotNull(concat);
        ossManager.copySmallFile(completeCloudPrefix, concat);
        ObjectMetadata metadata = ossManager.syncHeadObject(new GetObjectBean(concat, null, 2, null)).getMetadata();
        Intrinsics.checkNotNull(metadata);
        setCloudPath(metadata, concat);
        metadata.setHeader(Constant.SRC_TAG, completeCloudPrefix);
        return metadata;
    }

    /* renamed from: d */
    public final MediaCategory m32799d(String name) {
        String extension = FilenameUtils.getExtension(name);
        if (extension == null || extension.length() == 0) {
            return MediaCategory.Unknown;
        }
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        Intrinsics.checkNotNull(extension);
        String mimeType = fileExtensionUtils.mimeType(extension);
        return fileExtensionUtils.isAudio(mimeType) ? MediaCategory.Audio : fileExtensionUtils.isVideoType(mimeType) ? MediaCategory.Video : fileExtensionUtils.isImageFile(name) ? MediaCategory.Image : MediaCategory.Document;
    }

    /* renamed from: e */
    public final String m32800e(String eTag) {
        boolean startsWith$default;
        boolean endsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(eTag, "\"", false, 2, null);
        if (!startsWith$default) {
            return eTag;
        }
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(eTag, "\"", false, 2, null);
        return endsWith$default ? new Regex("\"").replace(eTag, "") : eTag;
    }

    @NotNull
    public final GetListObjectBean getBaseListObjectBean(@Nullable String prefix) {
        return new GetListObjectBean(getCompleteCloudPrefix(prefix), null, 1000, null, null, 0, 58, null);
    }

    @NotNull
    public final String getCloudFilePath(@NotNull String objectKey) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(objectKey, "objectKey");
        StringBuilder sb = new StringBuilder();
        String lowerCase = com.onyx.android.sdk.cloudstorage.constans.Constants.INSTANCE.getNETDISK_NAME().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        sb.append(lowerCase);
        String separator = File.separator;
        sb.append(separator);
        String sb2 = sb.toString();
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) objectKey, sb2, 0, false, 6, (Object) null);
        String substring = objectKey.substring(indexOf$default + sb2.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        return StringKt.replaceLast(substring, separator, "");
    }

    @NotNull
    public final String getCompleteCloudPrefix(@Nullable String partPrefix) {
        String ossNetDiskDirPath = getOssNetDiskDirPath(AccountDataBundle.INSTANCE.getSyncUserId());
        if (partPrefix == null || partPrefix.length() == 0) {
            return ossNetDiskDirPath;
        }
        String concat = FilenameUtils.concat(ossNetDiskDirPath, partPrefix);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
        return concat;
    }

    public final long getHeaderAppendPosition(@NotNull ObjectMetadata metadata) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        return MathUtils.INSTANCE.parseLong(String.valueOf(metadata.getRawMetadata().get("x-oss-next-append-position")));
    }

    @NotNull
    public final String getOssNetDiskDirPath(@Nullable String userId) {
        StringBuilder sb = new StringBuilder();
        sb.append(userId);
        sb.append(File.separator);
        String lowerCase = com.onyx.android.sdk.cloudstorage.constans.Constants.INSTANCE.getNETDISK_NAME().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        sb.append(lowerCase);
        return sb.toString();
    }

    public final boolean isCurrentDir(@NotNull OSSObjectSummary objectSummary, @Nullable String currentDir) {
        Intrinsics.checkNotNullParameter(objectSummary, "objectSummary");
        if (objectSummary.getSize() > 0) {
            return false;
        }
        String key = objectSummary.getKey();
        Intrinsics.checkNotNullExpressionValue(key, "getKey(...)");
        String cloudFilePath = getCloudFilePath(key);
        return Intrinsics.areEqual(currentDir, cloudFilePath) || Intrinsics.areEqual(cloudFilePath, File.separator);
    }

    public final boolean isDirectory(@NotNull OSSObjectSummary summary) {
        Intrinsics.checkNotNullParameter(summary, "summary");
        return summary.getSize() <= 0;
    }

    @NotNull
    public final List<OSSObjectSummary> removeCurrentObject(@NotNull List<OSSObjectSummary> list, @Nullable String currentDir) {
        Object first;
        Intrinsics.checkNotNullParameter(list, "list");
        if (CollectionKt.isNonBlank(list)) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            if (isCurrentDir((OSSObjectSummary) first, currentDir)) {
                list.remove(0);
            }
        }
        return list;
    }

    @NotNull
    public final ObjectMetadata setCloudPath(@NotNull ObjectMetadata metadata, @Nullable String cloudPath) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        metadata.setHeader("path", cloudPath);
        return metadata;
    }

    public final void sort(@Nullable List<OSSObjectSummary> list, @NotNull SortBy sortBy, @NotNull final SortOrder sortOrder) {
        Intrinsics.checkNotNullParameter(sortBy, "sortBy");
        Intrinsics.checkNotNullParameter(sortOrder, "sortOrder");
        List<OSSObjectSummary> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[sortBy.ordinal()];
        if (i == 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.mgk
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m32796f;
                    m32796f = OnyxCloudUtils.m32796f(SortOrder.this, (OSSObjectSummary) obj, (OSSObjectSummary) obj2);
                    return m32796f;
                }
            });
        } else if (i != 2) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.ogk
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m32798h;
                    m32798h = OnyxCloudUtils.m32798h(SortOrder.this, (OSSObjectSummary) obj, (OSSObjectSummary) obj2);
                    return m32798h;
                }
            });
        } else {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.ngk
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m32797g;
                    m32797g = OnyxCloudUtils.m32797g(SortOrder.this, (OSSObjectSummary) obj, (OSSObjectSummary) obj2);
                    return m32797g;
                }
            });
        }
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull ObjectMetadata fileInfo) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
        String valueOf = String.valueOf(fileInfo.getRawMetadata().get("path"));
        String cloudFilePath = getCloudFilePath(valueOf);
        String name = FilenameUtils.getName(cloudFilePath);
        String eTag = fileInfo.getETag();
        Intrinsics.checkNotNullExpressionValue(eTag, "getETag(...)");
        String m32800e = m32800e(eTag);
        CloudFileBean create = CloudFileBean.INSTANCE.create(Provider.ONYX_NOTE);
        create.setCloudFilePath(cloudFilePath);
        create.setLocalFilePath(cloudStorageRecordProvider.getCloudFileLocalPath(cloudStorageRecordProvider.getParent(), cloudFilePath));
        create.setMd5(m32800e);
        String computeMD5 = FileUtils.INSTANCE.computeMD5(valueOf);
        if (computeMD5 == null) {
            computeMD5 = "";
        }
        create.setUniqueId(computeMD5);
        create.setDir(fileInfo.getContentLength() <= 0);
        create.setName(name);
        create.setSize(fileInfo.getContentLength());
        create.setCreatedAt(fileInfo.getLastModified().getTime());
        create.setUpdatedAt(fileInfo.getLastModified().getTime());
        create.setMediaCategory(INSTANCE.m32799d(cloudFilePath));
        return create;
    }

    @NotNull
    public final List<CloudFileBean> toCloudFiles(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull List<OSSObjectSummary> objectList) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(objectList, "objectList");
        ArrayList arrayList = new ArrayList();
        Iterator<OSSObjectSummary> it2 = objectList.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, toCloudFile(cloudStorageRecordProvider, it2.next()));
        }
        return arrayList;
    }

    public final boolean isDirectory(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull CloudFileOperation.OperationData operationData) {
        CloudFileBean queryFileInfoByLocalPath;
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(operationData, "operationData");
        if (StringKt.isNotBlank(operationData.getOrigin())) {
            queryFileInfoByLocalPath = cloudStorageRecordProvider.queryFileInfo(operationData.getOrigin());
        } else {
            BaseCloudStorageProvider parent = cloudStorageRecordProvider.getParent();
            String path = operationData.getPath();
            Intrinsics.checkNotNull(path);
            queryFileInfoByLocalPath = cloudStorageRecordProvider.queryFileInfoByLocalPath(cloudStorageRecordProvider.getCloudFileLocalPath(parent, path));
        }
        if (queryFileInfoByLocalPath != null) {
            return queryFileInfoByLocalPath.getDir();
        }
        return false;
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull OSSObjectSummary fileInfo) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
        String key = fileInfo.getKey();
        Intrinsics.checkNotNullExpressionValue(key, "getKey(...)");
        String cloudFilePath = getCloudFilePath(key);
        String name = FilenameUtils.getName(cloudFilePath);
        String eTag = fileInfo.getETag();
        Intrinsics.checkNotNullExpressionValue(eTag, "getETag(...)");
        String m32800e = m32800e(eTag);
        CloudFileBean create = CloudFileBean.INSTANCE.create(Provider.ONYX_NOTE);
        create.setCloudFilePath(cloudFilePath);
        create.setLocalFilePath(cloudStorageRecordProvider.getCloudFileLocalPath(cloudStorageRecordProvider.getParent(), cloudFilePath));
        create.setMd5(m32800e);
        String computeMD5 = FileUtils.INSTANCE.computeMD5(fileInfo.getKey());
        if (computeMD5 == null) {
            computeMD5 = "";
        }
        create.setUniqueId(computeMD5);
        create.setDir(fileInfo.getSize() <= 0);
        create.setName(name);
        create.setSize(fileInfo.getSize());
        create.setCreatedAt(fileInfo.getLastModified().getTime());
        create.setUpdatedAt(fileInfo.getLastModified().getTime());
        create.setMediaCategory(INSTANCE.m32799d(cloudFilePath));
        return create;
    }
}
