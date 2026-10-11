package com.onyx.android.sdk.cloudstorage.provider.onedrive.utils;

import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.CloudStorageServiceFactory;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveService;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010J\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0002J\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0002J,\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u0002J,\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010 \u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010!\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\"\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0002R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;", "", "", "accountId", "getOneDriveRefreshToken", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "getOneDriveTokenResponse", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "getProviderAccountModel", "accountInfo", "", "saveProviderAccount", "getOneDriveAccessToken", "", "logoutAccount", "path", "", "fetchChild", "parsePath", "name", "", "createFolderMap", "getFileUpdateMap", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "nextPageToken", "getListQueryMap", "Lcom/onyx/android/sdk/base/data/SortBy;", "sortBy", "getSortBy", "", "limit", "getQueryFilter", "isOrganizationAccount", "addOrganizationAccount", "getFolderFilter", "getFileFilter", "baseUrl", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;", "getOneDriveService", "", "a", "Ljava/util/Set;", "organizationAccountSet", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverUtils {

    @NotNull
    public static final OneDriverUtils INSTANCE = new OneDriverUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Set<String> organizationAccountSet = new LinkedHashSet();

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

    public final void addOrganizationAccount(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        if (accountId.length() == 0) {
            return;
        }
        organizationAccountSet.add(accountId);
    }

    @NotNull
    public final Map<String, Object> createFolderMap(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Map<String, Object> fileUpdateMap = getFileUpdateMap(name);
        fileUpdateMap.put(Constant.FOLDER, new LinkedHashMap());
        return fileUpdateMap;
    }

    @NotNull
    public final String getFileFilter(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return isOrganizationAccount(accountId) ? "" : OneDriverConstants.QUERY_FILE_ONLY;
    }

    @NotNull
    public final Map<String, Object> getFileUpdateMap(@NotNull String name) {
        Map<String, Object> mutableMapOf;
        Intrinsics.checkNotNullParameter(name, "name");
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("name", name), TuplesKt.m61535to(OneDriverConstants.GRAPH_CONFLICT_BEHAVIOR, OneDriverConstants.CONFLICT_BEHAVIOR_FAIL));
        return mutableMapOf;
    }

    @NotNull
    public final String getFolderFilter(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return isOrganizationAccount(accountId) ? "" : OneDriverConstants.QUERY_FOLDER_ONLY;
    }

    @NotNull
    public final Map<String, Object> getListQueryMap(@NotNull CloudFileQueryArgs queryArgs, @Nullable String nextPageToken, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Map<String, Object> listQueryMap = getListQueryMap(queryArgs.getLimit(), nextPageToken, accountId);
        String sortBy = getSortBy(queryArgs.getSortBy(), accountId);
        StringBuilder sb = new StringBuilder();
        sb.append(sortBy);
        sb.append(' ');
        String name = queryArgs.getOrder().name();
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        sb.append(lowerCase);
        listQueryMap.put(OneDriverConstants.ORDERBY, sb.toString());
        return listQueryMap;
    }

    @Nullable
    public final String getOneDriveAccessToken(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        OneDriveTokenResponse oneDriveTokenResponse = getOneDriveTokenResponse(accountId);
        if (oneDriveTokenResponse != null) {
            return oneDriveTokenResponse.getAccessToken();
        }
        return null;
    }

    @Nullable
    public final String getOneDriveRefreshToken(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        OneDriveTokenResponse oneDriveTokenResponse = getOneDriveTokenResponse(accountId);
        if (oneDriveTokenResponse != null) {
            return oneDriveTokenResponse.getRefreshToken();
        }
        return null;
    }

    @NotNull
    public final OneDriveService getOneDriveService(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (OneDriveService) CloudStorageServiceFactory.INSTANCE.getSpecifyService(OneDriveService.class, baseUrl);
    }

    @Nullable
    public final OneDriveTokenResponse getOneDriveTokenResponse(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        ProviderAccountModel providerAccountModel = getProviderAccountModel(accountId);
        if (providerAccountModel == null) {
            return null;
        }
        String accountCredentialJson = providerAccountModel.getAccountCredentialJson();
        if (accountCredentialJson == null || accountCredentialJson.length() == 0) {
            return null;
        }
        return (OneDriveTokenResponse) JSONUtils.INSTANCE.parseObject(providerAccountModel.getAccountCredentialJson(), OneDriveTokenResponse.class);
    }

    @Nullable
    public final ProviderAccountModel getProviderAccountModel(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return ProviderAccountModelUtils.INSTANCE.queryAccount(Provider.ONE_DRIVE.getTitle(), accountId);
    }

    @NotNull
    public final String getQueryFilter(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return isOrganizationAccount(accountId) ? "" : OneDriverConstants.CLOUD_QUERY_FILTER;
    }

    @NotNull
    public final String getSortBy(@NotNull SortBy sortBy, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(sortBy, "sortBy");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        if (isOrganizationAccount(accountId)) {
            sortBy = SortBy.Name;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[sortBy.ordinal()];
        if (i == 1) {
            String name = SortBy.Name.name();
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = name.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }
        if (i != 2) {
            return OneDriverConstants.LAST_MODIFIED_DATE_TIME;
        }
        String name2 = SortBy.Size.name();
        Locale locale2 = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale2, "getDefault(...)");
        String lowerCase2 = name2.toLowerCase(locale2);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase2;
    }

    public final boolean isOrganizationAccount(@NotNull String accountId) {
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        if (organizationAccountSet.contains(accountId)) {
            return true;
        }
        ProviderAccountModel providerAccountModel = getProviderAccountModel(accountId);
        if ((providerAccountModel != null ? providerAccountModel.getAccountInfoBean() : null) == null) {
            return false;
        }
        AccountInfoBean accountInfoBean = providerAccountModel.getAccountInfoBean();
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(StringKt.safelyGetStr(accountInfoBean != null ? accountInfoBean.getAccountName() : null), OneDriverConstants.ORGANIZATION_ACCOUNT_SUFFIX, false, 2, null);
        if (endsWith$default) {
            addOrganizationAccount(accountId);
        }
        return endsWith$default;
    }

    public final long logoutAccount(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return ProviderAccountModelUtils.INSTANCE.deleteAccount(Provider.ONE_DRIVE.getTitle(), accountId);
    }

    @Nullable
    public final String parsePath(@Nullable String path, boolean fetchChild) {
        if (!StringKt.equals(path, "/")) {
            return path;
        }
        if (fetchChild) {
            return File.separator + '/';
        }
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append(str);
        sb.append('/');
        return sb.toString();
    }

    public final void saveProviderAccount(@NotNull ProviderAccountModel accountInfo) {
        List<ProviderAccountModel> listOf;
        Intrinsics.checkNotNullParameter(accountInfo, "accountInfo");
        ProviderAccountModelUtils providerAccountModelUtils = ProviderAccountModelUtils.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(accountInfo);
        providerAccountModelUtils.saveAccount(listOf, Provider.ONE_DRIVE.getTitle());
    }

    @NotNull
    public final Map<String, Object> getListQueryMap(int limit, @Nullable String nextPageToken, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OneDriverConstants.TOP, Integer.valueOf(limit));
        if (StringKt.isNotBlank(nextPageToken)) {
            linkedHashMap.put(OneDriverConstants.SKIPTOKEN, nextPageToken);
        }
        String queryFilter = getQueryFilter(accountId);
        if (StringKt.isNotBlank(queryFilter)) {
            linkedHashMap.put("filter", queryFilter);
        }
        return linkedHashMap;
    }
}
