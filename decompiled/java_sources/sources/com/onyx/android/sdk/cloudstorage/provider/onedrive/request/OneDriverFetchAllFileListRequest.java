package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.BatchRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.BatchResponse;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.HttpRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.HttpResponse;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfoBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0016¢\u0006\u0004\b%\u0010&J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0002J\u0012\u0010\u000e\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002J\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\fH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\fH\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u001aR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001cR\"\u0010$\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchAllFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "foldrList", "", "a", "", "folderList", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchResponse;", "b", "", "token", "d", "nextPageToken", "path", "c", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "", "I", "maxBatchCount", "Ljava/util/List;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getRecursive", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setRecursive", "(Z)V", "recursive", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOneDriverFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n766#2:174\n857#2,2:175\n*S KotlinDebug\n*F\n+ 1 OneDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchAllFileListRequest\n*L\n57#1:174\n57#1:175,2\n*E\n"})
/* loaded from: classes7.dex */
public final class OneDriverFetchAllFileListRequest extends RxBaseRequest<List<OneDriverFileInfo>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    /* renamed from: c, reason: from kotlin metadata */
    public final int maxBatchCount;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<OneDriverFileInfo> result;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean recursive;

    public OneDriverFetchAllFileListRequest(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.oneDriveProvider = oneDriveProvider;
        this.queryArgs = queryArgs;
        this.maxBatchCount = 20;
        this.result = new ArrayList();
        this.recursive = true;
    }

    /* renamed from: a */
    public final void m32775a(List<OneDriverFileInfo> foldrList) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (Object obj : foldrList) {
            if (((OneDriverFileInfo) obj).isFolder()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        int i = this.maxBatchCount + 0;
        while (true) {
            List<OneDriverFileInfo> safelySubList = CollectionKt.safelySubList(arrayList, 0, i);
            if (safelySubList.isEmpty()) {
                return;
            }
            for (HttpResponse httpResponse : CollectionKt.ensureList(m32776b(safelySubList).getResponses())) {
                OneDriverFileInfoBody oneDriverFileInfoBody = (OneDriverFileInfoBody) httpResponse.parseBody(OneDriverFileInfoBody.class);
                ArrayList arrayList2 = new ArrayList();
                CollectionKt.safeAddAll(arrayList2, oneDriverFileInfoBody.getValue());
                Debug.INSTANCE.m32035d(OneDriverFetchAllFileListRequest.class, httpResponse.getId() + " batch response,count:" + oneDriverFileInfoBody.getCount() + ",listSize:" + CollectionKt.getSize(oneDriverFileInfoBody.getValue()) + ",nextPageToken:" + oneDriverFileInfoBody.getNextPageToken(), new Object[0]);
                if (StringKt.isNotBlank(oneDriverFileInfoBody.getNextPageToken())) {
                    CollectionKt.safeAddAll(arrayList2, m32777c(oneDriverFileInfoBody.getNextPageToken(), httpResponse.getId()));
                }
                CollectionKt.safeAddAll(this.result, arrayList2);
                m32775a(arrayList2);
            }
            i = 0;
        }
    }

    /* renamed from: b */
    public final BatchResponse m32776b(List<OneDriverFileInfo> folderList) throws Exception {
        BatchRequest batchRequest = new BatchRequest();
        batchRequest.setRequests(new ArrayList());
        Iterator<OneDriverFileInfo> it2 = folderList.iterator();
        while (it2.hasNext()) {
            String cloudFilePath = it2.next().getCloudFilePath();
            HttpRequest httpRequest = new HttpRequest();
            OneDriverUtils oneDriverUtils = OneDriverUtils.INSTANCE;
            String replace = new Regex(" ").replace(oneDriverUtils.getQueryFilter(this.oneDriveProvider.getAccountId()), "%20");
            httpRequest.addHeader("Authorization", m32778d(oneDriverUtils.getOneDriveRefreshToken(this.oneDriveProvider.getAccountId())));
            httpRequest.setId(cloudFilePath);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("/me/drive/root:%s:/children", Arrays.copyOf(new Object[]{oneDriverUtils.parsePath(cloudFilePath, true)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            httpRequest.setUrl(format);
            if (StringKt.isNotBlank(replace)) {
                httpRequest.setUrl(httpRequest.getUrl() + "?filter=" + replace);
            }
            httpRequest.setMethod("GET");
            List<HttpRequest> requests = batchRequest.getRequests();
            if (requests != null) {
                requests.add(httpRequest);
            }
        }
        Response<BatchResponse> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService().batchProcess(batchRequest).execute();
        if (execute.isSuccessful()) {
            BatchResponse body = execute.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return body;
        }
        OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
        Intrinsics.checkNotNull(execute);
        throw companion.parseError(execute);
    }

    /* renamed from: c */
    public final List<OneDriverFileInfo> m32777c(String nextPageToken, String path) throws Exception {
        ArrayList arrayList = new ArrayList();
        do {
            OneDriverUtils oneDriverUtils = OneDriverUtils.INSTANCE;
            Response<OneDriverFileInfoBody> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService().fetchChildrenByPath(oneDriverUtils.parsePath(path, true), oneDriverUtils.getListQueryMap(Integer.MAX_VALUE, nextPageToken, this.oneDriveProvider.getAccountId())).execute();
            if (!execute.isSuccessful()) {
                OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
                Intrinsics.checkNotNull(execute);
                throw companion.parseError(execute);
            }
            OneDriverFileInfoBody body = execute.body();
            CollectionKt.safeAddAll(arrayList, CollectionKt.ensureList(body.getValue()));
            nextPageToken = body.getNextPageToken();
            Debug.INSTANCE.m32035d(OneDriverFetchAllFileListRequest.class, "nextPageToken:" + nextPageToken, new Object[0]);
        } while (StringKt.isNotBlank(nextPageToken));
        return arrayList;
    }

    /* renamed from: d */
    public final String m32778d(String token) {
        return BaseCloudRequest.BEARER_TOKEN_PREFIX + token;
    }

    /* renamed from: e */
    public final String m32779e() {
        if (!StringKt.isNotBlank(this.queryArgs.getParentId())) {
            return "/";
        }
        CloudFileBean queryFileInfo = this.oneDriveProvider.getCloudStorageRecordProvider().queryFileInfo(this.queryArgs.getParentId());
        if (queryFileInfo != null) {
            return queryFileInfo.getCloudFilePath();
        }
        return null;
    }

    public final boolean getRecursive() {
        return this.recursive;
    }

    public final void setRecursive(boolean z) {
        this.recursive = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<OneDriverFileInfo> execute() {
        Benchmark benchmark = new Benchmark();
        List<OneDriverFileInfo> m32777c = m32777c(null, m32779e());
        CollectionKt.safeAddAll(this.result, m32777c);
        if (this.recursive) {
            m32775a(m32777c);
        }
        OneDriverFileInfo.INSTANCE.sortByFolder(this.result);
        benchmark.report(OneDriverFetchAllFileListRequest.class.getSimpleName() + " fetch all oneDriver list");
        return this.result;
    }
}
