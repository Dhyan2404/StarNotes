package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils;

import com.onyx.android.sdk.cloudstorage.CloudStorageServiceFactory;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunFetchFileInfoRequest;
import com.onyx.android.sdk.data.cache.TimedCache;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0006J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000f\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J(\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0011H\u0002R \u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;", "", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;", "getHuaweiYunAuthService", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", CouchFieldKey.KEY_PROVIDER, "", CouchFieldKey.KEY_PARENT_ID, "getParentCloudPath", CouchFieldKey.KEY_UNIQUE_ID, "", "getParentFolderList", "cloudPath", "getCloudFileLocalPath", "normalizeToDBParentId", "normalizeToCloudParentId", "", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "list", "", "getParentCloudPathMap", "accountId", "a", Constant.FOLDER, "", "b", "Lcom/onyx/android/sdk/data/cache/TimedCache;", "Lcom/onyx/android/sdk/data/cache/TimedCache;", "folderMemoryCache", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1855#2,2:138\n1855#2,2:140\n*S KotlinDebug\n*F\n+ 1 HuaweiYunUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils\n*L\n39#1:138,2\n110#1:140,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunUtils {

    @NotNull
    public static final HuaweiYunUtils INSTANCE = new HuaweiYunUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final TimedCache<String, HuaweiYunFileListResult.File> folderMemoryCache = new TimedCache<>(600000);

    /* renamed from: a */
    public final HuaweiYunFileListResult.File m32733a(String accountId, String uniqueId) {
        return folderMemoryCache.get(accountId + '-' + uniqueId);
    }

    /* renamed from: b */
    public final void m32734b(String accountId, String uniqueId, HuaweiYunFileListResult.File folder) {
        folderMemoryCache.put(accountId + '-' + uniqueId, folder);
    }

    @NotNull
    public final String getCloudFileLocalPath(@NotNull HuaweiYunProvider provider, @NotNull String cloudPath) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(cloudPath, "cloudPath");
        String str = "/";
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(cloudPath, "/", false, 2, null);
        if (!startsWith$default) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            str = "/".toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(locale)");
        }
        String concat = FilenameUtils.concat(provider.getCloudStorageRecordProvider().getCloudFileLocalDir(), StringUtils.substringAfter(cloudPath, str));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
        return concat;
    }

    @NotNull
    public final HuaweiYunService getHuaweiYunAuthService() {
        return (HuaweiYunService) CloudStorageServiceFactory.INSTANCE.getSpecifyService(HuaweiYunService.class, CloudStorageConstants.HUAWEIYUN_DRIVE_OAUTH_BASE_URL);
    }

    @NotNull
    public final String getParentCloudPath(@NotNull HuaweiYunProvider provider, @Nullable String parentId) throws Exception {
        List<String> reversed;
        Intrinsics.checkNotNullParameter(provider, "provider");
        StringBuilder sb = new StringBuilder();
        reversed = CollectionsKt___CollectionsKt.reversed(getParentFolderList(provider, parentId));
        for (String str : reversed) {
            sb.append(File.separator);
            sb.append(str);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final Map<String, String> getParentCloudPathMap(@NotNull List<HuaweiYunFileListResult.File> list, @NotNull HuaweiYunProvider provider) throws Exception {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(provider, "provider");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) ((HuaweiYunFileListResult.File) it2.next()).getParentFolder());
            String str = (String) firstOrNull;
            if (!(str == null || str.length() == 0) && !linkedHashMap.containsKey(str)) {
                linkedHashMap.put(str, INSTANCE.getParentCloudPath(provider, str));
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public final List<String> getParentFolderList(@NotNull HuaweiYunProvider provider, @Nullable String uniqueId) throws Exception {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(provider, "provider");
        ArrayList arrayList = new ArrayList();
        while (StringUtils.isNotBlank(uniqueId) && !StringUtils.equals(uniqueId, "root")) {
            CloudFileBean queryFileInfo = provider.getCloudStorageRecordProvider().queryFileInfo(uniqueId);
            if (queryFileInfo != null) {
                String name = queryFileInfo.getName();
                if (name != null) {
                    arrayList.add(name);
                }
                uniqueId = queryFileInfo.getParentId();
            } else {
                String accountId = provider.getAccountId();
                Intrinsics.checkNotNull(uniqueId);
                HuaweiYunFileListResult.File m32733a = m32733a(accountId, uniqueId);
                if (m32733a == null) {
                    m32733a = new HuaweiYunFetchFileInfoRequest(provider, uniqueId).execute();
                }
                m32734b(provider.getAccountId(), uniqueId, m32733a);
                arrayList.add(m32733a.getFileName());
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) m32733a.getParentFolder());
                uniqueId = (String) firstOrNull;
            }
        }
        return arrayList;
    }

    @NotNull
    public final String normalizeToCloudParentId(@Nullable String parentId) {
        if (StringUtils.isEmpty(parentId)) {
            return "root";
        }
        Intrinsics.checkNotNull(parentId);
        return parentId;
    }

    @Nullable
    public final String normalizeToDBParentId(@Nullable String parentId) {
        if (StringUtils.equals(parentId, "root")) {
            return null;
        }
        return parentId;
    }
}
