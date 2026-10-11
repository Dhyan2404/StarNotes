package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunError;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.HuaweiYunUtils;
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
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H\u0002J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "execute", "", "foldrList", "", "b", "", CouchFieldKey.KEY_PARENT_ID, "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "", "c", Constants.HASIDCALL_INDEX_SIG, "getRecursive", Constants.BOOLEAN_VALUE_SIG, "setRecursive", "(Z)V", "recursive", "d", "Ljava/util/List;", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n766#2:97\n857#2,2:98\n766#2:100\n857#2,2:101\n1855#2,2:103\n*S KotlinDebug\n*F\n+ 1 HuaweiYunFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest\n*L\n44#1:97\n44#1:98,2\n53#1:100\n53#1:101,2\n55#1:103,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunFetchAllFileListRequest extends RxBaseRequest<List<HuaweiYunFileListResult.File>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean recursive;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<HuaweiYunFileListResult.File> result;

    public HuaweiYunFetchAllFileListRequest(@NotNull HuaweiYunProvider provider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.provider = provider;
        this.queryArgs = queryArgs;
        this.recursive = true;
        this.result = new ArrayList();
    }

    /* renamed from: a */
    public final List<HuaweiYunFileListResult.File> m32715a(String parentId) throws Exception {
        ArrayList arrayList = new ArrayList();
        String normalizeToCloudParentId = HuaweiYunUtils.INSTANCE.normalizeToCloudParentId(parentId);
        String str = null;
        do {
            CloudFileQueryArgs copy = this.queryArgs.copy();
            copy.setCursor(str);
            copy.setParentId(normalizeToCloudParentId);
            final HuaweiYunQueryArgs from = HuaweiYunQueryArgs.INSTANCE.from(copy);
            Response<?> executeCall = this.provider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunFileListResult>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunFetchAllFileListRequest$fetch$response$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Call<HuaweiYunFileListResult> invoke(@NotNull HuaweiYunService service) {
                    Intrinsics.checkNotNullParameter(service, "service");
                    return service.fetchFiles(HuaweiYunQueryArgs.this.getQueryParam(), HuaweiYunQueryArgs.this.getOrderBy(), HuaweiYunQueryArgs.this.getPageSize(), HuaweiYunQueryArgs.this.getCursor());
                }
            });
            if (!executeCall.isSuccessful()) {
                throw HuaweiYunError.INSTANCE.parse(executeCall);
            }
            HuaweiYunFileListResult huaweiYunFileListResult = (HuaweiYunFileListResult) executeCall.body();
            arrayList.addAll(huaweiYunFileListResult.getFiles());
            str = huaweiYunFileListResult.getNextCursor();
            Debug.INSTANCE.m32035d(HuaweiYunFetchAllFileListRequest.class, "nextPageToken:" + str, new Object[0]);
        } while (StringKt.isNotBlank(str));
        return arrayList;
    }

    /* renamed from: b */
    public final void m32716b(List<HuaweiYunFileListResult.File> foldrList) throws Exception {
        LinkedList linkedList = new LinkedList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : foldrList) {
            if (Intrinsics.areEqual(((HuaweiYunFileListResult.File) obj).getMimeType(), HuaweiYunFileListResult.File.FOLDER)) {
                arrayList.add(obj);
            }
        }
        linkedList.addAll(arrayList);
        while (!linkedList.isEmpty()) {
            HuaweiYunFileListResult.File file = (HuaweiYunFileListResult.File) linkedList.poll();
            List<HuaweiYunFileListResult.File> m32715a = m32715a(file != null ? file.getId() : null);
            this.result.addAll(m32715a);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : m32715a) {
                if (Intrinsics.areEqual(((HuaweiYunFileListResult.File) obj2).getMimeType(), HuaweiYunFileListResult.File.FOLDER)) {
                    arrayList2.add(obj2);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                linkedList.add((HuaweiYunFileListResult.File) it2.next());
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
    public List<HuaweiYunFileListResult.File> execute() {
        Benchmark benchmark = new Benchmark();
        List<HuaweiYunFileListResult.File> m32715a = m32715a(this.queryArgs.getParentId());
        this.result.addAll(m32715a);
        if (this.recursive) {
            m32716b(m32715a);
        }
        benchmark.report(HuaweiYunFetchAllFileListRequest.class.getSimpleName() + " fetch all aliyun drive list");
        return this.result;
    }
}
