package com.onyx.android.sdk.data.serverconvert.action;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.convertor.DocConvertFactory;
import com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\tJ\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u0013\u001a\u00020\u0007H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "localConvertList", "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "networkConvertList", "(Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "deleteTempFile", OcrValues.LANG_ITALIAN, "dispose", "handleResult", "uploadDocToOss", "convertEntry", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DocCovertOnlineAsyncAction extends RxBaseCovertAction<Unit> {

    @NotNull
    private final EventBus eventBus;

    @NotNull
    private final List<ConvertEntry> localConvertList;

    @NotNull
    private final List<ConvertEntry> networkConvertList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocCovertOnlineAsyncAction(@NotNull EventBus eventBus, @NotNull List<ConvertEntry> localConvertList, @NotNull List<ConvertEntry> networkConvertList) {
        super(eventBus);
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(localConvertList, "localConvertList");
        Intrinsics.checkNotNullParameter(networkConvertList, "networkConvertList");
        this.eventBus = eventBus;
        this.localConvertList = localConvertList;
        this.networkConvertList = networkConvertList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void create$lambda$0(DocCovertOnlineAsyncAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleCancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConvertEntry deleteTempFile(ConvertEntry it2) {
        if (it2.getFile().exists()) {
            it2.getFile().delete();
        }
        return it2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleResult() {
        Debug.INSTANCE.m32046e("Doc covert online finished");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<ConvertEntry> uploadDocToOss(final ConvertEntry convertEntry) {
        Debug.INSTANCE.m32037d("convert  [upload] start");
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final int progressValue = convertEntry.getProgressValue();
        final int i = 18;
        convertEntry.setStatus(ConvertResultType.RESULT_PROCESSING);
        DocConvertFactory.INSTANCE.getInstance().ensureDocConvert(convertEntry.getConvertType()).uploadFile(convertEntry, new OnFileTransferListener() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$uploadDocToOss$1
            @Override // com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener
            public void onProgress(long progress, long total) {
                List<ConvertEntry> list;
                List<ConvertEntry> list2;
                int i2 = i;
                convertEntry.setProgressValue((int) (progressValue + ((i2 - r1) * (((float) progress) / ((float) total)))));
                DocCovertOnlineAsyncAction docCovertOnlineAsyncAction = this;
                ConvertEntry convertEntry2 = convertEntry;
                list = docCovertOnlineAsyncAction.localConvertList;
                list2 = this.networkConvertList;
                docCovertOnlineAsyncAction.handleProgress(convertEntry2, list, list2);
            }

            @Override // com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener
            public void onResult(boolean isSuccess, @Nullable String fileKey, @Nullable String filePath) {
                if (!isSuccess || fileKey == null) {
                    convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
                } else {
                    convertEntry.setOssUploadKey(fileKey);
                }
                Debug.INSTANCE.m32037d("convert  [upload] end");
                RxjavaKt.done(create, convertEntry);
            }
        });
        return create;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        if (this.networkConvertList.isEmpty()) {
            Observable<Unit> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable doOnDispose = Observable.just(this).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ClusterInfo> apply(@NotNull DocCovertOnlineAsyncAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DocCovertOnlineAsyncAction.this.ensureClusterInfo();
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ClusterInfo> apply(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new GetConvertConfigAction().build();
            }
        }).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$3
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DocConvertFactory.INSTANCE.getInstance().initConvertor(it2);
            }
        }).flatMapIterable(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Iterable<ConvertEntry> apply(@NotNull ClusterInfo it2) {
                List list;
                Intrinsics.checkNotNullParameter(it2, "it");
                list = DocCovertOnlineAsyncAction.this.networkConvertList;
                return list;
            }
        }).observeOn(getObserveOnMultiThread()).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$5
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ConvertEntry> apply(@NotNull ConvertEntry it2) {
                Observable uploadDocToOss;
                Intrinsics.checkNotNullParameter(it2, "it");
                uploadDocToOss = DocCovertOnlineAsyncAction.this.uploadDocToOss(it2);
                return uploadDocToOss;
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$6
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ConvertEntry apply(@NotNull ConvertEntry it2) {
                ConvertEntry deleteTempFile;
                Intrinsics.checkNotNullParameter(it2, "it");
                deleteTempFile = DocCovertOnlineAsyncAction.this.deleteTempFile(it2);
                return deleteTempFile;
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$7
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ConvertEntry> apply(@NotNull ConvertEntry it2) {
                List list;
                List list2;
                Intrinsics.checkNotNullParameter(it2, "it");
                EventBus eventBus = DocCovertOnlineAsyncAction.this.getEventBus();
                list = DocCovertOnlineAsyncAction.this.localConvertList;
                list2 = DocCovertOnlineAsyncAction.this.networkConvertList;
                return new ConvertAsyncAction(it2, eventBus, list, list2).build();
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$8
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ConvertEntry> apply(@NotNull ConvertEntry it2) {
                List listOf;
                List list;
                List list2;
                Intrinsics.checkNotNullParameter(it2, "it");
                listOf = CollectionsKt__CollectionsJVMKt.listOf(it2);
                EventBus eventBus = DocCovertOnlineAsyncAction.this.getEventBus();
                list = DocCovertOnlineAsyncAction.this.localConvertList;
                list2 = DocCovertOnlineAsyncAction.this.networkConvertList;
                return new DownloadFilesAction(listOf, eventBus, list, list2).build();
            }
        }).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$9
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull ConvertEntry it2) {
                List<ConvertEntry> list;
                List<ConvertEntry> list2;
                Intrinsics.checkNotNullParameter(it2, "it");
                DocCovertOnlineAsyncAction docCovertOnlineAsyncAction = DocCovertOnlineAsyncAction.this;
                list = docCovertOnlineAsyncAction.localConvertList;
                list2 = DocCovertOnlineAsyncAction.this.networkConvertList;
                docCovertOnlineAsyncAction.handleProgress(it2, list, list2);
            }
        }).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.v6f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocCovertOnlineAsyncAction.create$lambda$0(DocCovertOnlineAsyncAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        Observable<Unit> map = RxjavaKt.takeLastOne(doOnDispose).map(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction$create$11
            @Override // io.reactivex.rxjava3.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                apply((ConvertEntry) obj);
                return Unit.INSTANCE;
            }

            public final void apply(@NotNull ConvertEntry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DocCovertOnlineAsyncAction.this.handleResult();
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        DocConvertFactory.INSTANCE.getInstance().releaseAll();
    }

    @NotNull
    public final EventBus getEventBus() {
        return this.eventBus;
    }
}
