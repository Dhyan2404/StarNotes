package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunError;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\t\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBean", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunQueryFileInfoRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n766#2:83\n857#2,2:84\n288#2,2:86\n*S KotlinDebug\n*F\n+ 1 AliYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest\n*L\n44#1:83\n44#1:84,2\n46#1:86,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunQueryFileInfoRequest extends RxBaseRequest<AliYunFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean cloudFile;

    public AliYunQueryFileInfoRequest(@NotNull AliYunProvider aliYunProvider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.aliYunProvider = aliYunProvider;
        this.cloudFile = cloudFile;
    }

    /* renamed from: a */
    public final CloudFileQueryArgs m32345a(CloudFileBean cloudFileBean) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setQuery(cloudFileBean.getName());
        cloudFileQueryArgs.setParentId(cloudFileBean.getParentId());
        cloudFileQueryArgs.setFilterParent(true);
        cloudFileQueryArgs.setProvider(this.aliYunProvider.getProviderType().getTitle());
        cloudFileQueryArgs.setSortBy(SortBy.Name);
        cloudFileQueryArgs.setOrder(SortOrder.Desc);
        cloudFileQueryArgs.setOffset(0L);
        cloudFileQueryArgs.setLimit(100);
        return cloudFileQueryArgs;
    }

    /* renamed from: b */
    public final void m32346b(QueryListResult<AliYunFileInfo> result, CloudFileQueryArgs queryArgs) throws Exception {
        QueryListResult<AliYunFileInfo> execute = new AliYunSearchFileRequest(this.aliYunProvider, queryArgs).execute();
        result.ensureList().addAll(execute.ensureList());
        while (StringKt.isNotBlank(execute.getCursor())) {
            queryArgs.setCursor(execute.getCursor());
            m32346b(result, queryArgs);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AliYunFileInfo execute() {
        AliYunFileInfo aliYunFileInfo = null;
        try {
            if (this.cloudFile.getUniqueId() != null) {
                AliYunProvider aliYunProvider = this.aliYunProvider;
                String uniqueId = this.cloudFile.getUniqueId();
                Intrinsics.checkNotNull(uniqueId);
                aliYunFileInfo = new AliYunFetchFileInfoRequest(aliYunProvider, uniqueId).execute();
            }
        } catch (CloudNoteException e) {
            if (e.getCode() == AliYunError.INSTANCE.getCODE_FILE_ID_NOT_FOUND()) {
                QueryListResult<AliYunFileInfo> queryListResult = new QueryListResult<>();
                m32346b(queryListResult, m32345a(this.cloudFile));
                List<AliYunFileInfo> ensureList = queryListResult.ensureList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : ensureList) {
                    if (StringKt.equals(((AliYunFileInfo) obj).getName(), this.cloudFile.getName())) {
                        arrayList.add(obj);
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (StringKt.equals(((AliYunFileInfo) next).getParentFileId(), this.cloudFile.getParentId())) {
                        aliYunFileInfo = next;
                        break;
                    }
                }
                aliYunFileInfo = aliYunFileInfo;
                if (aliYunFileInfo == null) {
                    throw e;
                }
            } else {
                throw e;
            }
        }
        Intrinsics.checkNotNull(aliYunFileInfo);
        return aliYunFileInfo;
    }
}
