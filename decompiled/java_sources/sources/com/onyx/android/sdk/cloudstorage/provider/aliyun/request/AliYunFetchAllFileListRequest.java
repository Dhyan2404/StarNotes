package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunError;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchAllFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "execute", "", "foldrList", "", "b", "", CouchFieldKey.KEY_PARENT_ID, "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;", "queryArgs", "", "c", Constants.HASIDCALL_INDEX_SIG, "getRecursive", Constants.BOOLEAN_VALUE_SIG, "setRecursive", "(Z)V", "recursive", "d", "Ljava/util/List;", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n766#2:83\n857#2,2:84\n766#2:86\n857#2,2:87\n1855#2,2:89\n*S KotlinDebug\n*F\n+ 1 AliYunFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchAllFileListRequest\n*L\n44#1:83\n44#1:84,2\n51#1:86\n51#1:87,2\n52#1:89,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunFetchAllFileListRequest extends RxBaseRequest<List<AliYunFileInfo>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final AliYunQueryArgs queryArgs;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean recursive;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<AliYunFileInfo> result;

    public AliYunFetchAllFileListRequest(@NotNull AliYunProvider provider, @NotNull AliYunQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.provider = provider;
        this.queryArgs = queryArgs;
        this.recursive = true;
        this.result = new ArrayList();
    }

    /* renamed from: a */
    public final List<AliYunFileInfo> m32342a(String parentId) throws Exception {
        String normalizeToCloudParentId = AliYunUtils.INSTANCE.normalizeToCloudParentId(parentId);
        ArrayList arrayList = new ArrayList();
        String str = null;
        do {
            final AliYunQueryArgs copy = this.queryArgs.copy();
            copy.setMarker(str);
            copy.setParentFileId(normalizeToCloudParentId);
            Response<?> executeCall = this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileListResult>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunFetchAllFileListRequest$fetch$response$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Call<AliYunFileListResult> invoke(@NotNull AliYunService service) {
                    Intrinsics.checkNotNullParameter(service, "service");
                    return service.fetchFiles(AliYunQueryArgs.this);
                }
            });
            if (!executeCall.isSuccessful()) {
                throw AliYunError.INSTANCE.parse(executeCall);
            }
            AliYunFileListResult aliYunFileListResult = (AliYunFileListResult) executeCall.body();
            CollectionKt.addAll(arrayList, aliYunFileListResult.getItems());
            str = aliYunFileListResult.getNextMarker();
            Debug.INSTANCE.m32035d(AliYunFetchAllFileListRequest.class, "nextPageToken:" + str, new Object[0]);
        } while (StringUtils.isNoneBlank(str));
        return arrayList;
    }

    /* renamed from: b */
    public final void m32343b(List<AliYunFileInfo> foldrList) throws Exception {
        LinkedList linkedList = new LinkedList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : foldrList) {
            if (((AliYunFileInfo) obj).isFolder()) {
                arrayList.add(obj);
            }
        }
        linkedList.addAll(arrayList);
        while (!linkedList.isEmpty()) {
            AliYunFileInfo aliYunFileInfo = (AliYunFileInfo) linkedList.poll();
            String fileId = aliYunFileInfo != null ? aliYunFileInfo.getFileId() : null;
            Intrinsics.checkNotNull(fileId);
            List<AliYunFileInfo> m32342a = m32342a(fileId);
            this.result.addAll(m32342a);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : m32342a) {
                if (((AliYunFileInfo) obj2).isFolder()) {
                    arrayList2.add(obj2);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                linkedList.add((AliYunFileInfo) it2.next());
            }
        }
    }

    public final boolean getRecursive() {
        return this.recursive;
    }

    public final void setRecursive(boolean z) {
        this.recursive = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<AliYunFileInfo> execute() {
        Benchmark benchmark = new Benchmark();
        List<AliYunFileInfo> m32342a = m32342a(this.queryArgs.getParentFileId());
        this.result.addAll(m32342a);
        if (this.recursive) {
            m32343b(m32342a);
        }
        benchmark.report(AliYunFetchAllFileListRequest.class.getSimpleName() + " fetch all aliyun drive list");
        return this.result;
    }
}
