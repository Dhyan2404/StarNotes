package com.onyx.android.sdk.cloudstorage.p020db;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Ordering;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.data.common.data.QueryResult;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\r\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010C\u001a\u00020\u0004\u0012\u0006\u00102\u001a\u00020\u0004\u0012\u0006\u0010H\u001a\u00020\u000f¢\u0006\u0004\bI\u0010JJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u0004J\"\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0005\u001a\u00020\u0004J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004J\u0014\u0010#\u001a\u00020\"2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0 J\u0010\u0010%\u001a\u0004\u0018\u00010\u001c2\u0006\u0010$\u001a\u00020\u001cJ\u000e\u0010&\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u001cJ\u000e\u0010&\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u0004J\u0014\u0010&\u001a\u00020\"2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0 J\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001c0'2\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010+\u001a\u00020\"2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0004J$\u0010/\u001a\u00020\"2\u0006\u0010,\u001a\u00020\u001c2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001c0'2\u0006\u0010.\u001a\u00020\u001aJ\u0014\u00101\u001a\b\u0012\u0004\u0012\u00020\u001c002\u0006\u0010\t\u001a\u00020\bJ\u001e\u00103\u001a\b\u0012\u0004\u0012\u00020\u001c002\u0006\u0010\u0016\u001a\u00020\u00042\b\u00102\u001a\u0004\u0018\u00010\u0004J\u0014\u00106\u001a\b\u0012\u0004\u0012\u00020\u001c052\u0006\u00104\u001a\u00020\u0006J\u000e\u00107\u001a\u00020\"2\u0006\u00104\u001a\u00020\u0006J.\u00103\u001a\b\u0012\u0004\u0012\u00020\u001c002\u0006\u0010\u0016\u001a\u00020\u00042\b\u00102\u001a\u0004\u0018\u00010\u00042\u000e\u00109\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u000108J\u001e\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001c002\u0006\u0010\u0016\u001a\u00020\u00042\b\u00102\u001a\u0004\u0018\u00010\u0004J.\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001c002\u0006\u0010\u0016\u001a\u00020\u00042\b\u00102\u001a\u0004\u0018\u00010\u00042\u000e\u00109\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u000108J\u0014\u0010;\u001a\u00020\"2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0 J\u0016\u0010<\u001a\b\u0012\u0004\u0012\u00020\u001c052\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020\bR\u0017\u0010C\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010@\u001a\u0004\bA\u0010BR\u0017\u00102\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0003\u0010@\u001a\u0004\bD\u0010BR\u0017\u0010H\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\r\u0010E\u001a\u0004\bF\u0010G¨\u0006K"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/couchbase/lite/Collection;", "b", "", CouchFieldKey.KEY_LOCAL_PATH, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "d", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "cloudFileArgs", "a", "Lcom/onyx/android/sdk/base/data/SortBy;", "sortBy", "c", "getCloudFileLocalDir", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "cloudStorageProvider", "cloudPath", "getCloudFileLocalPath", CouchFieldKey.KEY_LOCAL_FILE_PATH, "getCloudFilePath", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "getCloudOnyxPath", CouchFieldKey.KEY_UNIQUE_ID, "defaultValue", "", "addFileSeparator", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "queryFileInfoByLocalPath", "queryParentFolder", "queryFileInfo", "", "list", "", "saveCloudFiles", "fileBean", "setParentId", "delete", "", "queryParentFolderReverse", "oldParentId", "newParentId", "updateParentId", "cloudFolder", "childList", "recursive", "queryAllChildList", "Lcom/onyx/android/sdk/data/common/data/QueryResult;", "queryFileInfoResult", "accountId", "queryAllFolderResult", "cbQueryArgs", "", "loadCloudFileList", "deleteCloudFileList", "Lio/reactivex/rxjava3/functions/Consumer;", "argsConsumer", "queryAllFileResult", "saveFolder", "queryFileInfoListByLocalPath", "args", "", "queryDataCount", Constants.STRING_SIG, "getProviderName", "()Ljava/lang/String;", CouchFieldKey.KEY_PROVIDER_NAME, "getAccountId", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", Constants.GET_PARENT, "()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "parent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudStorageRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,450:1\n48#2,5:451\n48#2,5:456\n48#2,5:461\n48#2,5:470\n48#2,5:486\n48#2,5:493\n48#2,5:500\n48#2,5:505\n48#2,5:520\n1549#3:466\n1620#3,3:467\n1855#3,2:475\n1855#3,2:477\n1549#3:479\n1620#3,3:480\n766#3:483\n857#3,2:484\n1855#3,2:491\n1855#3,2:498\n1549#3:510\n1620#3,3:511\n766#3:514\n857#3,2:515\n766#3:517\n857#3,2:518\n*S KotlinDebug\n*F\n+ 1 CloudStorageRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider\n*L\n136#1:451,5\n156#1:456,5\n188#1:461,5\n207#1:470,5\n254#1:486,5\n273#1:493,5\n307#1:500,5\n321#1:505,5\n376#1:520,5\n188#1:466\n188#1:467,3\n216#1:475,2\n224#1:477,2\n236#1:479\n236#1:480,3\n236#1:483\n236#1:484,2\n255#1:491,2\n280#1:498,2\n325#1:510\n325#1:511,3\n366#1:514\n366#1:515,2\n367#1:517\n367#1:518,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CloudStorageRecordProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String providerName;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String accountId;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider parent;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Provider.values().length];
            try {
                iArr[Provider.BAIDU_YUN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Provider.DROP_BOX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Provider.ONE_DRIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Provider.NUT_STORE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Provider.WEBDAV.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SortBy.values().length];
            try {
                iArr2[SortBy.Size.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[SortBy.CreationTime.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[SortBy.UpdateAt.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudStorageRecordProvider(@NotNull String providerName, @NotNull String accountId, @NotNull BaseCloudStorageProvider parent) {
        super(CouchDBManager.INSTANCE.getCouchHolder(ProviderInfoUtils.INSTANCE.getCloudStorageProviderInfo(accountId, providerName)));
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.providerName = providerName;
        this.accountId = accountId;
        this.parent = parent;
    }

    /* renamed from: a */
    public final CBQueryArgs m32305a(CloudFileQueryArgs cloudFileArgs) {
        CBQueryArgs cBQueryArgs;
        if (StringKt.isNotBlank(cloudFileArgs.getProvider())) {
            cBQueryArgs = new CBQueryArgs();
            cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_PROVIDER, Provider.INSTANCE.providerByName(cloudFileArgs.getProvider()).name()));
        } else {
            cBQueryArgs = null;
        }
        if (CollectionKt.isNonBlank(cloudFileArgs.getQueryIdList())) {
            if (cBQueryArgs == null) {
                cBQueryArgs = new CBQueryArgs();
            }
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            List<String> queryIdList = cloudFileArgs.getQueryIdList();
            Intrinsics.checkNotNull(queryIdList);
            cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, queryIdList));
        }
        if (StringKt.isNotBlank(cloudFileArgs.getQuery())) {
            if (cBQueryArgs == null) {
                cBQueryArgs = new CBQueryArgs();
            }
            cBQueryArgs.andWith(CouchUtils.likeExpression$default(CouchUtils.INSTANCE, "name", '%' + cloudFileArgs + ".query!!%", false, 4, null));
        }
        if (StringKt.isNotBlank(cloudFileArgs.getParentId())) {
            if (cBQueryArgs == null) {
                cBQueryArgs = new CBQueryArgs();
            }
            CouchUtils couchUtils2 = CouchUtils.INSTANCE;
            String parentId = cloudFileArgs.getParentId();
            Intrinsics.checkNotNull(parentId);
            cBQueryArgs.andWith(couchUtils2.equalExpression(CouchFieldKey.KEY_PARENT_ID, parentId));
        } else if (!cloudFileArgs.getFilterParent()) {
            if (cBQueryArgs == null) {
                cBQueryArgs = new CBQueryArgs();
            }
            cBQueryArgs.andWith(CouchUtils.INSTANCE.nullOrMissing(CouchFieldKey.KEY_PARENT_ID));
        }
        if (cloudFileArgs.getConditionGroup() != null) {
            if (cBQueryArgs == null) {
                cBQueryArgs = new CBQueryArgs();
            }
            CBQueryArgs conditionGroup = cloudFileArgs.getConditionGroup();
            Intrinsics.checkNotNull(conditionGroup);
            cBQueryArgs.andWith(conditionGroup.getWhereEx());
        }
        if (StringKt.isNotBlank(cloudFileArgs.getAccountId())) {
            if (cBQueryArgs == null) {
                cBQueryArgs = new CBQueryArgs();
            }
            CouchUtils couchUtils3 = CouchUtils.INSTANCE;
            String accountId = cloudFileArgs.getAccountId();
            Intrinsics.checkNotNull(accountId);
            cBQueryArgs.andWith(couchUtils3.equalExpression("accountId", accountId));
        }
        return cBQueryArgs;
    }

    /* renamed from: b */
    public final Collection m32306b() {
        return ensureCollection(SyncConstant.COLLECTION_CLOUD_FILE_BEAN);
    }

    /* renamed from: c */
    public final String m32307c(SortBy sortBy) {
        int i = WhenMappings.$EnumSwitchMapping$1[sortBy.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? "name" : "updatedAt" : CouchFieldKey.KEY_CREATE_AT : "size";
    }

    /* renamed from: d */
    public final CBQueryArgs m32308d(String localPath) {
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_LOCAL_FILE_PATH, localPath));
    }

    public final void delete(@NotNull CloudFileBean fileBean) {
        String str;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        if (StringKt.isNotBlank(fileBean.getUniqueId())) {
            delete(fileBean.getUniqueId());
            return;
        }
        String localFilePath = fileBean.getLocalFilePath();
        if (localFilePath != null) {
            CBQueryArgs cBQueryArgs = new CBQueryArgs();
            if (fileBean.getDir()) {
                cBQueryArgs.andWith(CouchUtils.likeExpression$default(CouchUtils.INSTANCE, CouchFieldKey.KEY_LOCAL_FILE_PATH, localFilePath + '%', false, 4, null));
            } else {
                cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_LOCAL_FILE_PATH, localFilePath));
            }
            CouchCollections couchCollections = CouchCollections.INSTANCE;
            Collection m32306b = m32306b();
            if (m32306b == null || (str = m32306b.getName()) == null) {
                str = "_default";
            }
            List fromResultList = CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m32306b, cBQueryArgs), CloudFileBean.class, str);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = fromResultList.iterator();
            while (it2.hasNext()) {
                arrayList.add(((CloudFileBean) it2.next()).getUniqueId());
            }
            CouchCollections.INSTANCE.deleteListByIds(m32306b(), arrayList);
        }
    }

    public final void deleteCloudFileList(@NotNull CBQueryArgs cbQueryArgs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        List<CloudFileBean> loadCloudFileList = loadCloudFileList(cbQueryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadCloudFileList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadCloudFileList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((CloudFileBean) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m32306b(), arrayList);
    }

    @NotNull
    public final String getAccountId() {
        return this.accountId;
    }

    @NotNull
    public final String getCloudFileLocalDir() {
        FileUtils fileUtils = FileUtils.INSTANCE;
        String id = this.parent.getAccountInfo().getId();
        Intrinsics.checkNotNull(id);
        String absolutePath = new File(com.onyx.android.sdk.cloudstorage.constans.Constants.INSTANCE.getNETDISK_PATH(), this.parent.getProviderType().getTitle() + File.separator + fileUtils.fixNotAllowFileName(id, -1)).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String getCloudFileLocalPath(@NotNull BaseCloudStorageProvider cloudStorageProvider, @NotNull String cloudPath) {
        Intrinsics.checkNotNullParameter(cloudStorageProvider, "cloudStorageProvider");
        Intrinsics.checkNotNullParameter(cloudPath, "cloudPath");
        return FileUtils.INSTANCE.combinePath(getCloudFileLocalDir(), StringUtils.substringAfter(cloudPath, CloudStorageConstants.INSTANCE.getCloudOnyxPath(cloudStorageProvider.getProviderType())));
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
        return FileUtils.INSTANCE.combinePath(getCloudOnyxPath(providerFromPath), substringAfter);
    }

    @NotNull
    public final String getCloudOnyxPath(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        int i = WhenMappings.$EnumSwitchMapping$0[provider.ordinal()];
        return (i == 1 || i == 3) ? "/" : "";
    }

    @NotNull
    public final BaseCloudStorageProvider getParent() {
        return this.parent;
    }

    @NotNull
    public final String getProviderName() {
        return this.providerName;
    }

    @NotNull
    public final List<CloudFileBean> loadCloudFileList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32306b = m32306b();
        if (m32306b == null || (str = m32306b.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m32306b, cbQueryArgs), CloudFileBean.class, str);
    }

    public final void queryAllChildList(@NotNull CloudFileBean cloudFolder, @NotNull List<CloudFileBean> childList, boolean recursive) {
        String str;
        Intrinsics.checkNotNullParameter(cloudFolder, "cloudFolder");
        Intrinsics.checkNotNullParameter(childList, "childList");
        if (cloudFolder.getParentId() == null) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PROVIDER, Integer.valueOf(cloudFolder.getProvider().getTypeValue())));
        String parentId = cloudFolder.getParentId();
        Intrinsics.checkNotNull(parentId);
        CBQueryArgs andWith2 = andWith.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, parentId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32306b = m32306b();
        if (m32306b == null || (str = m32306b.getName()) == null) {
            str = "_default";
        }
        List<CloudFileBean> fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m32306b, andWith2), CloudFileBean.class, str);
        childList.addAll(fromResultList);
        if (recursive) {
            for (CloudFileBean cloudFileBean : fromResultList) {
                if (cloudFileBean.getDir()) {
                    queryAllChildList(cloudFileBean, childList, true);
                }
            }
        }
    }

    @NotNull
    public final QueryResult<CloudFileBean> queryAllFileResult(@NotNull String provider, @Nullable String accountId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        return queryAllFileResult(provider, accountId, null);
    }

    @NotNull
    public final QueryResult<CloudFileBean> queryAllFolderResult(@NotNull String provider, @Nullable String accountId) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        return queryAllFolderResult(provider, accountId, null);
    }

    public final long queryDataCount(@NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        CBQueryArgs m32305a = m32305a(args);
        if (m32305a != null) {
            return CouchCollections.INSTANCE.queryDocumentCount(m32306b(), m32305a.getWhereEx());
        }
        return 0L;
    }

    @Nullable
    public final CloudFileBean queryFileInfo(@Nullable String uniqueId) {
        String str;
        Object firstOrNull;
        if (uniqueId == null || uniqueId.length() == 0) {
            return null;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, uniqueId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32306b = m32306b();
        if (m32306b == null || (str = m32306b.getName()) == null) {
            str = "_default";
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) couchUtils.fromResultList(couchCollections.queryResultList(m32306b, andWith), CloudFileBean.class, str));
        return (CloudFileBean) firstOrNull;
    }

    @Nullable
    public final CloudFileBean queryFileInfoByLocalPath(@NotNull String localPath) {
        String str;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        CBQueryArgs m32308d = m32308d(localPath);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs varargOrdering = m32308d.setVarargOrdering(couchUtils.getOrdering("updatedAt", false));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32306b = m32306b();
        if (m32306b == null || (str = m32306b.getName()) == null) {
            str = "_default";
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) couchUtils.fromResultList(couchCollections.queryResultList(m32306b, varargOrdering), CloudFileBean.class, str));
        return (CloudFileBean) firstOrNull;
    }

    @NotNull
    public final List<CloudFileBean> queryFileInfoListByLocalPath(@Nullable String localPath) {
        String str;
        List<CloudFileBean> emptyList;
        if (localPath == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32306b = m32306b();
        CBQueryArgs m32308d = m32308d(localPath);
        if (m32306b == null || (str = m32306b.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m32306b, m32308d), CloudFileBean.class, str);
    }

    @NotNull
    public final QueryResult<CloudFileBean> queryFileInfoResult(@NotNull CloudFileQueryArgs cloudFileArgs) {
        String str;
        List<CloudFileBean> mutableList;
        Intrinsics.checkNotNullParameter(cloudFileArgs, "cloudFileArgs");
        QueryResult<CloudFileBean> queryResult = new QueryResult<>();
        CBQueryArgs m32305a = m32305a(cloudFileArgs);
        if (m32305a != null) {
            m32305a.m72251setLimit(cloudFileArgs.getLimit());
            m32305a.m72252setOffset((int) cloudFileArgs.getOffset());
            Ordering[] orderingArr = new Ordering[2];
            CouchUtils couchUtils = CouchUtils.INSTANCE;
            orderingArr[0] = couchUtils.getOrdering(CouchFieldKey.KEY_DIR, false);
            orderingArr[1] = couchUtils.getOrdering(m32307c(cloudFileArgs.getSortBy()), cloudFileArgs.getOrder() == SortOrder.Asc);
            m32305a.setOrdering(orderingArr);
            CouchCollections couchCollections = CouchCollections.INSTANCE;
            Collection m32306b = m32306b();
            if (m32306b == null || (str = m32306b.getName()) == null) {
                str = "_default";
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) couchUtils.fromResultList(couchCollections.queryResultList(m32306b, m32305a), CloudFileBean.class, str));
            queryResult.setList(mutableList);
            queryResult.setCount(mutableList.size());
        }
        queryResult.setFetchSource(0);
        return queryResult;
    }

    @Nullable
    public final CloudFileBean queryParentFolder(@Nullable String localPath) {
        CloudFileBean queryFileInfoByLocalPath;
        if ((localPath == null || localPath.length() == 0) || (queryFileInfoByLocalPath = queryFileInfoByLocalPath(localPath)) == null) {
            return null;
        }
        return queryFileInfo(queryFileInfoByLocalPath.getParentId());
    }

    @NotNull
    public final List<CloudFileBean> queryParentFolderReverse(@NotNull String localPath) {
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        ArrayList arrayList = new ArrayList();
        CloudFileBean queryParentFolder = queryParentFolder(localPath);
        if (queryParentFolder == null) {
            return arrayList;
        }
        arrayList.add(queryParentFolder);
        String localFilePath = queryParentFolder.getLocalFilePath();
        if (localFilePath != null) {
            arrayList.addAll(queryParentFolderReverse(localFilePath));
        }
        return arrayList;
    }

    public final void saveCloudFiles(@NotNull java.util.Collection<CloudFileBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return;
        }
        CouchCollections.INSTANCE.saveList(m32306b(), getDatabase(), list);
    }

    public final void saveFolder(@NotNull java.util.Collection<CloudFileBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((CloudFileBean) obj).getDir()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (CollectionKt.isNullOrEmpty(queryFileInfoListByLocalPath(((CloudFileBean) obj2).getLocalFilePath()))) {
                arrayList2.add(obj2);
            }
        }
        CouchCollections.INSTANCE.saveList(m32306b(), getDatabase(), arrayList2);
    }

    @Nullable
    public final CloudFileBean setParentId(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        String parent = FileUtils.INSTANCE.getParent(fileBean.getLocalFilePath());
        if (parent == null) {
            return null;
        }
        CloudFileBean queryFileInfoByLocalPath = queryFileInfoByLocalPath(parent);
        if (queryFileInfoByLocalPath != null) {
            fileBean.setParentId(queryFileInfoByLocalPath.getUniqueId());
        } else {
            queryFileInfoByLocalPath = null;
        }
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("set parentId, parent local dir:");
        sb.append(parent);
        sb.append(',');
        sb.append(queryFileInfoByLocalPath != null ? queryFileInfoByLocalPath.getUniqueId() : null);
        debug.m32035d(CloudStorageRecordProvider.class, sb.toString(), new Object[0]);
        return fileBean;
    }

    public final void updateParentId(@NotNull String oldParentId, @NotNull String newParentId) {
        String str;
        Intrinsics.checkNotNullParameter(oldParentId, "oldParentId");
        Intrinsics.checkNotNullParameter(newParentId, "newParentId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PARENT_ID, oldParentId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32306b = m32306b();
        if (m32306b == null || (str = m32306b.getName()) == null) {
            str = "_default";
        }
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m32306b, andWith), CloudFileBean.class, str);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            ((CloudFileBean) it2.next()).setParentId(newParentId);
        }
        CouchCollections.INSTANCE.saveList(m32306b(), getDatabase(), fromResultList);
    }

    @NotNull
    public final QueryResult<CloudFileBean> queryAllFileResult(@NotNull String provider, @Nullable String accountId, @Nullable Consumer<CloudFileQueryArgs> argsConsumer) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setFilterParent(true);
        cloudFileQueryArgs.setAccountId(accountId);
        cloudFileQueryArgs.setProvider(provider);
        cloudFileQueryArgs.setLimit(Integer.MAX_VALUE);
        cloudFileQueryArgs.andWith(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_DIR, Boolean.FALSE)));
        if (argsConsumer != null) {
            argsConsumer.accept(cloudFileQueryArgs);
        }
        return queryFileInfoResult(cloudFileQueryArgs);
    }

    @NotNull
    public final QueryResult<CloudFileBean> queryAllFolderResult(@NotNull String provider, @Nullable String accountId, @Nullable Consumer<CloudFileQueryArgs> argsConsumer) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setFilterParent(true);
        cloudFileQueryArgs.setAccountId(accountId);
        cloudFileQueryArgs.setProvider(provider);
        cloudFileQueryArgs.setLimit(Integer.MAX_VALUE);
        cloudFileQueryArgs.andWith(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_DIR, Boolean.TRUE)));
        if (argsConsumer != null) {
            argsConsumer.accept(cloudFileQueryArgs);
        }
        return queryFileInfoResult(cloudFileQueryArgs);
    }

    @Nullable
    public final String getCloudFilePath(@Nullable String uniqueId, @NotNull String defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return getCloudFilePath(uniqueId, defaultValue, false);
    }

    @Nullable
    public final String getCloudFilePath(@Nullable String uniqueId, @NotNull String defaultValue, boolean addFileSeparator) {
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        boolean z = true;
        if (uniqueId == null || uniqueId.length() == 0) {
            return defaultValue;
        }
        CloudFileBean queryFileInfo = queryFileInfo(uniqueId);
        if (queryFileInfo == null) {
            return null;
        }
        if (!addFileSeparator) {
            return queryFileInfo.getCloudFilePath();
        }
        String cloudFilePath = queryFileInfo.getCloudFilePath();
        if (cloudFilePath != null && cloudFilePath.length() != 0) {
            z = false;
        }
        if (z) {
            return defaultValue;
        }
        if (queryFileInfo.getDir()) {
            String cloudFilePath2 = queryFileInfo.getCloudFilePath();
            Intrinsics.checkNotNull(cloudFilePath2);
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(cloudFilePath2, separator, false, 2, null);
            if (!endsWith$default) {
                return queryFileInfo.getCloudFilePath() + separator;
            }
        }
        return queryFileInfo.getCloudFilePath();
    }

    public final void delete(@NotNull String uniqueId) {
        CloudFileBean queryFileInfo;
        String str;
        java.util.Collection<CloudFileBean> listOf;
        java.util.Collection<CloudFileBean> listOf2;
        java.util.Collection<CloudFileBean> listOf3;
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        if (StringKt.isEmpty(uniqueId) || (queryFileInfo = queryFileInfo(uniqueId)) == null) {
            return;
        }
        if (!queryFileInfo.getDir()) {
            listOf3 = CollectionsKt__CollectionsJVMKt.listOf(queryFileInfo);
            delete(listOf3);
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PROVIDER, Integer.valueOf(queryFileInfo.getProvider().getTypeValue()))).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PARENT_ID, queryFileInfo.getUniqueId()));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32306b = m32306b();
        if (m32306b == null || (str = m32306b.getName()) == null) {
            str = "_default";
        }
        List<CloudFileBean> fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m32306b, andWith), CloudFileBean.class, str);
        if (fromResultList.isEmpty()) {
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(queryFileInfo);
            delete(listOf2);
            return;
        }
        Debug.INSTANCE.m32035d(CloudStorageRecordProvider.class, "cloud files deletion,size:" + fromResultList.size(), new Object[0]);
        ArrayList arrayList = new ArrayList();
        ArrayList<CloudFileBean> arrayList2 = new ArrayList();
        for (CloudFileBean cloudFileBean : fromResultList) {
            if (cloudFileBean.getDir()) {
                arrayList2.add(cloudFileBean);
            } else {
                arrayList.add(cloudFileBean);
            }
        }
        delete(arrayList);
        for (CloudFileBean cloudFileBean2 : arrayList2) {
            if (!StringKt.isEmpty(cloudFileBean2.getUniqueId())) {
                delete(cloudFileBean2.getUniqueId());
            }
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(queryFileInfo);
        delete(listOf);
    }

    public final void delete(@NotNull java.util.Collection<CloudFileBean> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return;
        }
        java.util.Collection<CloudFileBean> collection = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(((CloudFileBean) it2.next()).getUniqueId());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        CouchCollections.INSTANCE.deleteListByIds(m32306b(), arrayList2);
    }
}
