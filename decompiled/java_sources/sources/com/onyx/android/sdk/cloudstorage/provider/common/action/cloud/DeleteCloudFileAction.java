package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteLocalCloudFileRequest;
import com.onyx.android.sdk.data.common.data.SelectionModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SelectionHelper;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0002H$J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0007H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0002R\u0017\u0010\u0014\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "deleteCloudData", "m", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileBeans", "", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "p", "l", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "q", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "getFileOperation", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteCloudFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n766#2:116\n857#2,2:117\n1855#2,2:119\n1603#2,9:123\n1855#2:132\n1856#2:134\n1612#2:135\n215#3,2:121\n1#4:133\n*S KotlinDebug\n*F\n+ 1 DeleteCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction\n*L\n51#1:116\n51#1:117,2\n52#1:119,2\n80#1:123,9\n80#1:132\n80#1:134\n80#1:135\n67#1:121,2\n80#1:133\n*E\n"})
/* loaded from: classes7.dex */
public abstract class DeleteCloudFileAction extends BaseCloudStorageAction<CloudFileListResult> {

    @NotNull
    private final CloudFileOperation fileOperation;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7227a<T, R> implements Function {
        public C7227a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCloudFileAction.this.getFileOperation().getIsCloudOperate() ? DeleteCloudFileAction.this.m32456l() : DeleteCloudFileAction.this.m32457m();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$b */
    /* loaded from: classes7.dex */
    public static final class C7228b<T, R> implements Function {
        public C7228b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileOperation it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCloudFileAction.this.deleteCloudData();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$c */
    /* loaded from: classes7.dex */
    public static final class C7229c<T, R> implements Function {
        public C7229c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCloudFileAction.this.m32461q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$d */
    /* loaded from: classes7.dex */
    public static final class C7230d<T, R> implements Function {
        public C7230d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull CloudFileOperation it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteCloudFileAction.this.m32459o();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$e */
    /* loaded from: classes7.dex */
    public static final class C7231e<T> implements Consumer {
        public C7231e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteCloudFileAction.this.m32458n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$f */
    /* loaded from: classes7.dex */
    public static final class C7232f<T, R> implements Function {

        /* renamed from: e */
        public static final C7232f<T, R> f41424e = new C7232f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull List<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudFileListResult.INSTANCE.create(it2);
        }
    }

    public DeleteCloudFileAction(@NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.fileOperation = fileOperation;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable flatMap = createObservableWithUpdateClusterInfo().flatMap(new C7227a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public abstract CloudFileListResult deleteCloudData() throws Exception;

    @NotNull
    public final CloudFileOperation getFileOperation() {
        return this.fileOperation;
    }

    /* renamed from: l */
    public final Observable<CloudFileListResult> m32456l() {
        Observable<CloudFileListResult> map = Observable.just(this.fileOperation).observeOn(getObserveOn()).map(new C7228b()).map(new C7229c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<CloudFileListResult> m32457m() {
        Observable<CloudFileListResult> map = Observable.just(this.fileOperation).observeOn(getObserveOn()).map(new C7230d()).doOnNext(new C7231e()).map(C7232f.f41424e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m32458n(List<CloudFileBean> cloudFileBeans) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : cloudFileBeans) {
            if (((CloudFileBean) obj).getSyncStatus().isNewFromLocal()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            getGoogleDriverProvider().getCloudStorageRecordProvider().delete((CloudFileBean) it2.next());
        }
    }

    /* renamed from: o */
    public final List<CloudFileBean> m32459o() {
        ArrayList arrayList = new ArrayList();
        Object parseObject = JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<SelectionHelper<JSONObject>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$getDelCloudFileBean$selectionHelper$1
        });
        Intrinsics.checkNotNull(parseObject);
        Iterator it2 = ((SelectionHelper) parseObject).getSelectedItemMap(new Function1<JSONObject, CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$getDelCloudFileBean$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileOperation.OperationData invoke(@NotNull JSONObject raw) {
                Intrinsics.checkNotNullParameter(raw, "raw");
                Object parseObject2 = JSONUtils.INSTANCE.parseObject(raw.toJSONString(new JSONWriter.Feature[0]), new TypeReference<CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction$getDelCloudFileBean$1.1
                });
                Intrinsics.checkNotNull(parseObject2);
                return (CloudFileOperation.OperationData) parseObject2;
            }
        }).entrySet().iterator();
        while (it2.hasNext()) {
            SelectionModel selectionModel = (SelectionModel) ((Map.Entry) it2.next()).getValue();
            if (!selectionModel.getIsSelectedAllMode()) {
                arrayList.addAll(m32460p(selectionModel.getSelectedList()));
            }
        }
        return arrayList;
    }

    /* renamed from: p */
    public final List<CloudFileBean> m32460p(List<CloudFileOperation.OperationData> dataList) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getGoogleDriverProvider().getProviderType().getTitle());
        cloudFileQueryArgs.setLimit(Integer.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = dataList.iterator();
        while (it2.hasNext()) {
            String origin = ((CloudFileOperation.OperationData) it2.next()).getOrigin();
            if (origin != null) {
                arrayList.add(origin);
            }
        }
        cloudFileQueryArgs.setQueryIdList(arrayList);
        cloudFileQueryArgs.setFilterParent(true);
        return getGoogleDriverProvider().getCloudStorageRecordProvider().queryFileInfoResult(cloudFileQueryArgs).ensureList();
    }

    /* renamed from: q */
    public final CloudFileListResult m32461q(CloudFileListResult result) throws Exception {
        CloudFileListResult cloudFileListResult;
        if (result.isSuccessful()) {
            DeleteLocalCloudFileRequest deleteLocalCloudFileRequest = new DeleteLocalCloudFileRequest(getGoogleDriverProvider(), this.fileOperation, CloudStorageConstants.INSTANCE.getCloudOnyxPath(getGoogleDriverProvider().getProviderType()));
            deleteLocalCloudFileRequest.setDeleteLocalFile(false);
            cloudFileListResult = deleteLocalCloudFileRequest.execute();
        } else {
            cloudFileListResult = result;
        }
        cloudFileListResult.setCode(result.getCode());
        cloudFileListResult.setFetchSource(result.getFetchSource());
        return cloudFileListResult;
    }
}
