package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveClient;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfoBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016JB\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverSearchFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "queryResult", "", "limit", "", "filter", "Lkotlin/Function1;", "", "predicate", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOneDriverSearchFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneDriverSearchFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverSearchFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n766#2:111\n857#2,2:112\n*S KotlinDebug\n*F\n+ 1 OneDriverSearchFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverSearchFileRequest\n*L\n99#1:111\n99#1:112,2\n*E\n"})
/* loaded from: classes7.dex */
public final class OneDriverSearchFileRequest extends RxBaseRequest<QueryListResult<OneDriverFileInfo>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveClient oneDriveClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs args;

    public OneDriverSearchFileRequest(@NotNull OneDriveClient oneDriveClient, @NotNull CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(oneDriveClient, "oneDriveClient");
        Intrinsics.checkNotNullParameter(args, "args");
        this.oneDriveClient = oneDriveClient;
        this.args = args;
    }

    /* renamed from: a */
    public final QueryListResult<OneDriverFileInfo> m32783a(QueryListResult<OneDriverFileInfo> queryResult, int limit, String filter, Function1<? super OneDriverFileInfo, Boolean> predicate) throws Exception {
        CloudFileQueryArgs copy = this.args.copy();
        copy.setLimit(limit);
        while (true) {
            OneDriverUtils oneDriverUtils = OneDriverUtils.INSTANCE;
            String cursor = copy.getCursor();
            String accountId = this.args.getAccountId();
            Intrinsics.checkNotNull(accountId);
            Map<String, Object> listQueryMap = oneDriverUtils.getListQueryMap(copy, cursor, accountId);
            if (StringKt.isNotBlank(filter)) {
                listQueryMap.put("filter", filter);
            }
            Response<OneDriverFileInfoBody> execute = this.oneDriveClient.getOneDriveService().searchFiles(copy.getQuery(), listQueryMap).execute();
            if (execute.isSuccessful()) {
                OneDriverFileInfoBody body = execute.body();
                copy.setCursor(body.getNextPageToken());
                List ensureList = CollectionKt.ensureList(body.getValue());
                ArrayList arrayList = new ArrayList();
                for (Object obj : ensureList) {
                    if (predicate.invoke((OneDriverFileInfo) obj).booleanValue()) {
                        arrayList.add(obj);
                    }
                }
                CollectionKt.safeAddAll(queryResult.ensureList(), arrayList);
                Debug.INSTANCE.m32035d(OneDriverSearchFileRequest.class, filter + " search count:" + queryResult.ensureList().size() + ",total folder:" + queryResult.getCount(), new Object[0]);
                if (!StringKt.isNotBlank(copy.getCursor())) {
                    break;
                }
            } else {
                String simpleName = OneDriverSearchFileRequest.class.getSimpleName();
                Object[] objArr = new Object[1];
                StringBuilder sb = new StringBuilder();
                sb.append("search failed, code: ");
                sb.append(execute.code());
                sb.append("\n msg: ");
                sb.append(execute.message());
                sb.append("\n errorBody: ");
                sb.append(execute.errorBody() == null ? "" : execute.errorBody().string());
                objArr[0] = sb.toString();
                LogUtils.eTag(simpleName, objArr);
            }
        }
        return queryResult;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<OneDriverFileInfo> execute() {
        QueryListResult<OneDriverFileInfo> queryListResult = new QueryListResult<>();
        OneDriverUtils oneDriverUtils = OneDriverUtils.INSTANCE;
        String accountId = this.args.getAccountId();
        Intrinsics.checkNotNull(accountId);
        if (oneDriverUtils.isOrganizationAccount(accountId)) {
            m32783a(queryListResult, 1000, null, new Function1<OneDriverFileInfo, Boolean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverSearchFileRequest$execute$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull OneDriverFileInfo fileInfo) {
                    Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
                    return Boolean.valueOf(fileInfo.isFile() || fileInfo.isFolder());
                }
            });
        } else {
            String accountId2 = this.args.getAccountId();
            Intrinsics.checkNotNull(accountId2);
            m32783a(queryListResult, 100, oneDriverUtils.getFolderFilter(accountId2), new Function1<OneDriverFileInfo, Boolean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverSearchFileRequest$execute$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull OneDriverFileInfo fileInfo) {
                    Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
                    return Boolean.valueOf(fileInfo.isFolder());
                }
            });
            String accountId3 = this.args.getAccountId();
            Intrinsics.checkNotNull(accountId3);
            m32783a(queryListResult, 1000, oneDriverUtils.getFileFilter(accountId3), new Function1<OneDriverFileInfo, Boolean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverSearchFileRequest$execute$3
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull OneDriverFileInfo fileInfo) {
                    Intrinsics.checkNotNullParameter(fileInfo, "fileInfo");
                    return Boolean.valueOf(fileInfo.isFile());
                }
            });
        }
        queryListResult.setFetchSource(1);
        queryListResult.setCount(queryListResult.ensureList().size());
        Debug.INSTANCE.m32035d(OneDriverSearchFileRequest.class, "search count:" + queryListResult.ensureList().size() + ",total:" + queryListResult.getCount(), new Object[0]);
        return queryListResult;
    }
}
