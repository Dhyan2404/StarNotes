package com.onyx.android.sdk.cloudstorage.provider.dropbox;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.http.OkHttp3Requestor;
import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.FolderMetadata;
import com.dropbox.core.p006v2.files.RelocationBatchErrorEntry;
import com.dropbox.core.p006v2.files.UploadErrorException;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.bean.DropBoxCredential;
import com.onyx.android.sdk.data.account.bean.DropBoxAccount;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0014\u001a\u00060\u0018j\u0002`\u00192\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u0019J\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0010\u001a\u00020\u0011J*\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\"2\u0006\u0010\u001d\u001a\u00020\u001e2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020 0\n2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;", "", "()V", "createAccountInfoBean", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "dropBoxAccount", "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;", "createRequestConfig", "Lcom/dropbox/core/DbxRequestConfig;", "interceptors", "", "Lokhttp3/Interceptor;", "builder", "Lokhttp3/OkHttpClient$Builder;", "getDropBoxCredential", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;", "accountId", "", "logoutAccount", "", "mapToStandardError", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "errorEntry", "Lcom/dropbox/core/v2/files/RelocationBatchErrorEntry;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "toCloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudStorageRecordProvider", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "metadata", "Lcom/dropbox/core/v2/files/Metadata;", "toCloudFiles", "", "metadataList", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nDropBoxUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropBoxUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1855#2,2:136\n*S KotlinDebug\n*F\n+ 1 DropBoxUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils\n*L\n50#1:136,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DropBoxUtils {

    @NotNull
    public static final DropBoxUtils INSTANCE = new DropBoxUtils();

    @NotNull
    public final AccountInfoBean createAccountInfoBean(@NotNull DropBoxAccount dropBoxAccount) {
        Intrinsics.checkNotNullParameter(dropBoxAccount, "dropBoxAccount");
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(dropBoxAccount.getEmail());
        accountInfoBean.setNickName(dropBoxAccount.getDisplayName());
        accountInfoBean.setId(dropBoxAccount.getId());
        return accountInfoBean;
    }

    @NotNull
    public final DbxRequestConfig createRequestConfig(@NotNull List<? extends Interceptor> interceptors) {
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        OkHttpClient.Builder defaultOkHttpClientBuilder = OkHttp3Requestor.defaultOkHttpClientBuilder();
        Iterator<T> it2 = interceptors.iterator();
        while (it2.hasNext()) {
            defaultOkHttpClientBuilder.addInterceptor((Interceptor) it2.next());
        }
        Intrinsics.checkNotNull(defaultOkHttpClientBuilder);
        return createRequestConfig(defaultOkHttpClientBuilder);
    }

    @Nullable
    public final DropBoxCredential getDropBoxCredential(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        ProviderAccountModel queryAccount = ProviderAccountModelUtils.INSTANCE.queryAccount(Provider.DROP_BOX.getTitle(), accountId);
        if (queryAccount == null) {
            return null;
        }
        String accountCredentialJson = queryAccount.getAccountCredentialJson();
        if (accountCredentialJson == null || accountCredentialJson.length() == 0) {
            return null;
        }
        return (DropBoxCredential) JSONUtils.INSTANCE.parseObject(queryAccount.getAccountCredentialJson(), DropBoxCredential.class);
    }

    public final long logoutAccount(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return ProviderAccountModelUtils.INSTANCE.deleteAccount(Provider.DROP_BOX.getTitle(), accountId);
    }

    @NotNull
    public final Exception mapToStandardError(@NotNull Exception exception) {
        int i;
        Intrinsics.checkNotNullParameter(exception, "exception");
        exception.printStackTrace();
        if (!(exception instanceof DbxException)) {
            return exception;
        }
        if (exception instanceof UploadErrorException) {
            UploadErrorException uploadErrorException = (UploadErrorException) exception;
            if (uploadErrorException.errorValue.isPath() && uploadErrorException.errorValue.getPathValue().getReason().isInsufficientSpace()) {
                i = 1002;
                return new CloudNoteException(i, exception.getMessage());
            }
        }
        i = 2;
        return new CloudNoteException(i, exception.getMessage());
    }

    @NotNull
    public final CloudFileBean toCloudFile(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull com.dropbox.core.p006v2.files.Metadata metadata, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        CloudFileBean create = CloudFileBean.INSTANCE.create(Provider.DROP_BOX);
        create.setDir(metadata instanceof FolderMetadata);
        create.setName(metadata.getName());
        create.setCloudFilePath(metadata.getPathDisplay());
        create.setLocalFilePath(cloudStorageRecordProvider.getCloudFileLocalPath(cloudStorageRecordProvider.getParent(), accountId));
        create.setAccountId(accountId);
        if (metadata instanceof FileMetadata) {
            FileMetadata fileMetadata = (FileMetadata) metadata;
            create.setMd5(fileMetadata.getContentHash());
            create.setSize(fileMetadata.getSize());
            create.setUpdatedAt(fileMetadata.getServerModified().getTime());
            create.setCreatedAt(fileMetadata.getServerModified().getTime());
            String id = fileMetadata.getId();
            Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
            create.setUniqueId(id);
        }
        if (metadata instanceof FolderMetadata) {
            String id2 = ((FolderMetadata) metadata).getId();
            Intrinsics.checkNotNullExpressionValue(id2, "getId(...)");
            create.setUniqueId(id2);
        }
        return create;
    }

    @NotNull
    public final List<CloudFileBean> toCloudFiles(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull List<? extends com.dropbox.core.p006v2.files.Metadata> metadataList, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
        Intrinsics.checkNotNullParameter(metadataList, "metadataList");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends com.dropbox.core.p006v2.files.Metadata> it2 = metadataList.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, toCloudFile(cloudStorageRecordProvider, it2.next(), accountId));
        }
        return arrayList;
    }

    @NotNull
    public final DbxRequestConfig createRequestConfig(@NotNull OkHttpClient.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        DbxRequestConfig build = DbxRequestConfig.newBuilder("onyx").withHttpRequestor(new OkHttp3Requestor(builder.build())).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @NotNull
    public final CloudNoteException mapToStandardError(@NotNull RelocationBatchErrorEntry errorEntry) {
        Intrinsics.checkNotNullParameter(errorEntry, "errorEntry");
        return new CloudNoteException(errorEntry.getRelocationErrorValue().isInsufficientQuota() ? 1002 : 2, errorEntry.getRelocationErrorValue().toString());
    }
}
