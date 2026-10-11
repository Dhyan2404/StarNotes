package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.BooleanUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0002J \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\nH\u0002J&\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "execute", "", "", "a", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "", "b", CouchFieldKey.KEY_DIR, "searchContent", "d", "fsIds", "", "checkSuccess", "c", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaiduYunQueryFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunQueryFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1549#2:134\n1620#2,3:135\n766#2:138\n857#2,2:139\n*S KotlinDebug\n*F\n+ 1 BaiduYunQueryFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest\n*L\n54#1:134\n54#1:135,3\n85#1:138\n85#1:139,2\n*E\n"})
/* loaded from: classes7.dex */
public final class BaiduYunQueryFileRequest extends RxBaseRequest<List<BaiduYunFileInfo>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    public BaiduYunQueryFileRequest(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.baiduYunProvider = baiduYunProvider;
        this.fileBean = fileBean;
    }

    /* renamed from: a */
    public final List<Long> m32397a() throws Exception {
        int collectionSizeOrDefault;
        String m32398b = m32398b(this.fileBean);
        String name = FilenameUtils.getName(this.fileBean.getLocalFilePath());
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        List<BaiduYunFileInfo> m32400d = m32400d(m32398b, name);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(m32400d, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = m32400d.iterator();
        while (it2.hasNext()) {
            arrayList.add(Long.valueOf(((BaiduYunFileInfo) it2.next()).getFsId()));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final String m32398b(CloudFileBean fileBean) {
        String cloudFilePath = fileBean.getCloudFilePath();
        return cloudFilePath == null || cloudFilePath.length() == 0 ? "/" : FileUtils.INSTANCE.getParent(cloudFilePath);
    }

    /* renamed from: c */
    public final List<BaiduYunFileInfo> m32399c(List<Long> fsIds, boolean checkSuccess) throws Exception {
        BaiduYunQueryArgs baiduYunQueryArgs = new BaiduYunQueryArgs();
        baiduYunQueryArgs.setMethod(BaiduYunConstant.FILE_METAS);
        baiduYunQueryArgs.setFsids(fsIds);
        baiduYunQueryArgs.setDlink(BooleanUtils.toInteger(true));
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        final Map map = (Map) jSONUtils.parseObject(jSONUtils.toJson(baiduYunQueryArgs), new TypeReference<Map<String, ? extends String>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunQueryFileRequest$queryFile$map$2$1
        });
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunQueryFileRequest$queryFile$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.queryFile(map);
            }
        });
        if (checkSuccess && !executeCall.isSuccessful()) {
            throw new Exception(executeCall.raw().message());
        }
        if (executeCall.body() == null) {
            return null;
        }
        return ((BaiduYunFileResponseBody) executeCall.body()).getList();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0045 A[SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo> m32400d(java.lang.String r9, java.lang.String r10) throws java.lang.Exception {
        /*
            r8 = this;
            r0 = 1
            r1 = 0
            if (r9 == 0) goto Ld
            int r2 = r9.length()
            if (r2 != 0) goto Lb
            goto Ld
        Lb:
            r2 = r1
            goto Le
        Ld:
            r2 = r0
        Le:
            if (r2 == 0) goto L12
            java.lang.String r9 = "/"
        L12:
            com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs r2 = new com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs
            r2.<init>()
            java.lang.String r3 = "search"
            r2.setMethod(r3)
            r2.setKey(r10)
            r2.setPage(r0)
            r3 = 1000(0x3e8, float:1.401E-42)
            r2.setNum(r3)
            r2.setDir(r9)
            com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunSearchFileRequest r9 = new com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunSearchFileRequest
            com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider r3 = r8.baiduYunProvider
            r9.<init>(r3, r2)
            com.onyx.android.sdk.cloudstorage.model.QueryListResult r9 = r9.execute()
            java.util.List r9 = r9.ensureList()
            r2 = r9
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r2 = r2.iterator()
        L45:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L7c
            java.lang.Object r4 = r2.next()
            r5 = r4
            com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo r5 = (com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo) r5
            java.lang.String r6 = r5.getPath()
            if (r6 == 0) goto L61
            int r6 = r6.length()
            if (r6 != 0) goto L5f
            goto L61
        L5f:
            r6 = r1
            goto L62
        L61:
            r6 = r0
        L62:
            if (r6 == 0) goto L75
            java.lang.String r5 = r5.getPath()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            r6 = 2
            r7 = 0
            boolean r5 = kotlin.text.StringsKt.endsWith$default(r5, r10, r1, r6, r7)
            if (r5 == 0) goto L75
            r5 = r0
            goto L76
        L75:
            r5 = r1
        L76:
            if (r5 == 0) goto L45
            r3.add(r4)
            goto L45
        L7c:
            java.util.List r10 = kotlin.collections.CollectionsKt.toMutableList(r3)
            r2 = r10
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = com.onyx.android.sdk.base.extension.CollectionKt.isNonBlank(r2)
            if (r2 == 0) goto L8a
            r9 = r10
        L8a:
            int r10 = r9.size()
            if (r10 <= r0) goto Ld1
            com.onyx.android.sdk.base.utils.Debug r10 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunQueryFileRequest> r0 = com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunQueryFileRequest.class
            java.lang.String r2 = "got too more baiduyun file via name search:"
            java.lang.Object[] r3 = new java.lang.Object[r1]
            r10.m32059w(r0, r2, r3)
            java.util.Iterator r10 = r9.iterator()
        L9f:
            boolean r2 = r10.hasNext()
            if (r2 == 0) goto Ld1
            java.lang.Object r2 = r10.next()
            com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo r2 = (com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo) r2
            com.onyx.android.sdk.base.utils.Debug r3 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r5 = r8.fileBean
            com.onyx.android.sdk.data.config.cloudnote.Provider r5 = r5.getProvider()
            r4.append(r5)
            r5 = 44
            r4.append(r5)
            java.lang.String r2 = r2.getFileName()
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            java.lang.Object[] r4 = new java.lang.Object[r1]
            r3.m32059w(r0, r2, r4)
            goto L9f
        Ld1:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunQueryFileRequest.m32400d(java.lang.String, java.lang.String):java.util.List");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @Nullable
    public List<BaiduYunFileInfo> execute() {
        List<BaiduYunFileInfo> list;
        Object firstOrNull;
        List<Long> listOf;
        if (StringKt.isNotBlank(this.fileBean.getUniqueId())) {
            MathUtils mathUtils = MathUtils.INSTANCE;
            String uniqueId = this.fileBean.getUniqueId();
            Intrinsics.checkNotNull(uniqueId);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(mathUtils.parseLong(uniqueId)));
            list = m32399c(listOf, false);
        } else {
            list = null;
        }
        if (CollectionKt.isNullOrEmpty(list)) {
            list = m32399c(m32397a(), true);
        }
        if (CollectionKt.isNonBlank(list)) {
            String uniqueId2 = this.fileBean.getUniqueId();
            if (uniqueId2 == null || uniqueId2.length() == 0) {
                CloudFileBean cloudFileBean = this.fileBean;
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
                BaiduYunFileInfo baiduYunFileInfo = (BaiduYunFileInfo) firstOrNull;
                cloudFileBean.setUniqueId(String.valueOf(baiduYunFileInfo != null ? Long.valueOf(baiduYunFileInfo.getFsId()) : null));
            }
        }
        return list;
    }
}
