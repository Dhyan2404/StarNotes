package com.onyx.android.sdk.cloudstorage.provider.googledriver.utils;

import com.google.api.client.googleapis.json.GoogleJsonError;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.services.drive.model.User;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.CloudStorageServiceFactory;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveAuthService;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00060\u000bj\u0002`\f2\n\u0010\r\u001a\u00060\u000bj\u0002`\fJ\u0014\u0010\u000e\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\r\u001a\u00020\u000fH\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;", "", "()V", "STORAGE_QUOTA_EXCEEDED", "", "getGoogleDriveAuthService", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveAuthService;", "logoutAccount", "", "accountId", "mapToStandardError", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "parse403ForbiddenError", "Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;", "toAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", LoginAuthConst.ACCOUNT_AUTH, "Lcom/google/api/services/drive/model/User;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGoogleDriverUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriverUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1549#2:84\n1620#2,3:85\n*S KotlinDebug\n*F\n+ 1 GoogleDriverUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils\n*L\n72#1:84\n72#1:85,3\n*E\n"})
/* loaded from: classes7.dex */
public final class GoogleDriverUtils {

    @NotNull
    public static final GoogleDriverUtils INSTANCE = new GoogleDriverUtils();

    @NotNull
    private static final String STORAGE_QUOTA_EXCEEDED = "storageQuotaExceeded";

    private GoogleDriverUtils() {
    }

    private final Exception parse403ForbiddenError(GoogleJsonResponseException exception) {
        int collectionSizeOrDefault;
        List<GoogleJsonError.ErrorInfo> errors = exception.getDetails().getErrors();
        List<GoogleJsonError.ErrorInfo> list = errors;
        if (list == null || list.isEmpty()) {
            return new CloudNoteException(2, exception.getContent());
        }
        Intrinsics.checkNotNull(errors);
        List<GoogleJsonError.ErrorInfo> list2 = errors;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((GoogleJsonError.ErrorInfo) it2.next()).getReason());
        }
        if (arrayList.isEmpty()) {
            return new CloudNoteException(2, exception.getContent());
        }
        return new CloudNoteException(arrayList.contains(STORAGE_QUOTA_EXCEEDED) ? 1002 : 2, exception.getContent());
    }

    @NotNull
    public final GoogleDriveAuthService getGoogleDriveAuthService() {
        return (GoogleDriveAuthService) CloudStorageServiceFactory.INSTANCE.getSpecifyService(GoogleDriveAuthService.class, CloudStorageConstants.GOOGLE_DRIVER_AUTH_URL);
    }

    public final long logoutAccount(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return ProviderAccountModelUtils.INSTANCE.deleteAccount(Provider.GOOGLE_DRIVE.getTitle(), accountId);
    }

    @NotNull
    public final Exception mapToStandardError(@NotNull Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        exception.printStackTrace();
        if (!(exception instanceof GoogleJsonResponseException)) {
            return exception;
        }
        GoogleJsonResponseException googleJsonResponseException = (GoogleJsonResponseException) exception;
        return googleJsonResponseException.getStatusCode() == 403 ? parse403ForbiddenError(googleJsonResponseException) : new CloudNoteException(2, googleJsonResponseException.getContent());
    }

    @NotNull
    public final AccountInfoBean toAccountInfo(@NotNull User account) {
        Intrinsics.checkNotNullParameter(account, "account");
        String displayName = account.getDisplayName();
        String emailAddress = account.getEmailAddress();
        if (emailAddress == null) {
            emailAddress = displayName;
        }
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(displayName);
        accountInfoBean.setNickName(displayName);
        accountInfoBean.setId(StringKt.safelyGetStr(account.getKind()) + emailAddress);
        return accountInfoBean;
    }
}
