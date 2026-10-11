package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request;

import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.HuaweiYunUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\t\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "execute", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBean", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunQueryFileInfoRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n766#2:84\n857#2,2:85\n288#2,2:87\n*S KotlinDebug\n*F\n+ 1 HuaweiYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest\n*L\n44#1:84\n44#1:85,2\n46#1:87,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunQueryFileInfoRequest extends RxBaseRequest<HuaweiYunFileListResult.File> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean cloudFile;

    public HuaweiYunQueryFileInfoRequest(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.huaweiYunProvider = huaweiYunProvider;
        this.cloudFile = cloudFile;
    }

    /* renamed from: a */
    public final CloudFileQueryArgs m32718a(CloudFileBean cloudFileBean) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setQuery(cloudFileBean.getName());
        cloudFileQueryArgs.setParentId(HuaweiYunUtils.INSTANCE.normalizeToCloudParentId(cloudFileBean.getParentId()));
        cloudFileQueryArgs.setFilterParent(true);
        cloudFileQueryArgs.setProvider(this.huaweiYunProvider.getProviderType().getTitle());
        cloudFileQueryArgs.setSortBy(SortBy.Name);
        cloudFileQueryArgs.setOrder(SortOrder.Desc);
        cloudFileQueryArgs.setOffset(0L);
        cloudFileQueryArgs.setLimit(100);
        cloudFileQueryArgs.setPrecisionSearch(true);
        return cloudFileQueryArgs;
    }

    /* renamed from: b */
    public final void m32719b(QueryListResult<HuaweiYunFileListResult.File> result, CloudFileQueryArgs queryArgs) throws Exception {
        result.ensureList().addAll(new HuaweiYunFetchAllFileListRequest(this.huaweiYunProvider, queryArgs).execute());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[LOOP:1: B:25:0x006a->B:43:?, LOOP_END, SYNTHETIC] */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult.File execute() {
        /*
            r8 = this;
            r0 = 0
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r1 = r8.cloudFile     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            java.lang.String r1 = r1.getUniqueId()     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            if (r1 == 0) goto Lb9
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunFetchFileInfoRequest r1 = new com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunFetchFileInfoRequest     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider r2 = r8.huaweiYunProvider     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r3 = r8.cloudFile     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            java.lang.String r3 = r3.getUniqueId()     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            r1.<init>(r2, r3)     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult$File r0 = r1.execute()     // Catch: com.onyx.android.sdk.data.common.exception.CloudNoteException -> L1f
            goto Lb9
        L1f:
            r1 = move-exception
            int r2 = r1.getCode()
            r3 = 400(0x190, float:5.6E-43)
            if (r2 != r3) goto Lbe
            com.onyx.android.sdk.cloudstorage.model.QueryListResult r2 = new com.onyx.android.sdk.cloudstorage.model.QueryListResult
            r2.<init>()
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r3 = r8.cloudFile
            com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs r3 = r8.m32718a(r3)
            r8.m32719b(r2, r3)
            java.util.List r2 = r2.ensureList()
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r2 = r2.iterator()
        L45:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L66
            java.lang.Object r4 = r2.next()
            r5 = r4
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult$File r5 = (com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult.File) r5
            java.lang.String r5 = r5.getFileName()
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r6 = r8.cloudFile
            java.lang.String r6 = r6.getName()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L45
            r3.add(r4)
            goto L45
        L66:
            java.util.Iterator r2 = r3.iterator()
        L6a:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Lb5
            java.lang.Object r3 = r2.next()
            r4 = r3
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult$File r4 = (com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult.File) r4
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r5 = r8.cloudFile
            java.lang.String r5 = r5.getParentId()
            r6 = 0
            r7 = 1
            if (r5 == 0) goto L8a
            int r5 = r5.length()
            if (r5 != 0) goto L88
            goto L8a
        L88:
            r5 = r6
            goto L8b
        L8a:
            r5 = r7
        L8b:
            if (r5 == 0) goto L99
            java.util.List r5 = r4.getParentFolder()
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L99
        L97:
            r6 = r7
            goto Lb2
        L99:
            java.util.List r4 = r4.getParentFolder()
            java.lang.Object r4 = kotlin.collections.CollectionsKt.firstOrNull(r4)
            java.lang.String r4 = (java.lang.String) r4
            if (r4 == 0) goto Lb2
            com.onyx.android.sdk.cloudstorage.model.CloudFileBean r5 = r8.cloudFile
            java.lang.String r5 = r5.getParentId()
            boolean r4 = r4.equals(r5)
            if (r4 != r7) goto Lb2
            goto L97
        Lb2:
            if (r6 == 0) goto L6a
            r0 = r3
        Lb5:
            com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult$File r0 = (com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult.File) r0
            if (r0 == 0) goto Lbd
        Lb9:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            return r0
        Lbd:
            throw r1
        Lbe:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunQueryFileInfoRequest.execute():com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult$File");
    }
}
