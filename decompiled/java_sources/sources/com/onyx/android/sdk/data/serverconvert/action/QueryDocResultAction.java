package com.onyx.android.sdk.data.serverconvert.action;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.serverconvert.action.QueryDocResultAction;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertConst;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertProgressEvent;
import com.onyx.android.sdk.data.serverconvert.convertor.DocConvertFactory;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryResponseTaskBean;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\u0002\u0010\tJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "docConvertEntry", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "localConvertList", "", "networkConvertList", "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "interrupt", "", "queryCount", "", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "handleResult", "postProcess", "", OcrValues.LANG_ITALIAN, "queryDocResult", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class QueryDocResultAction extends RxBaseCovertAction<ConvertEntry> {

    @NotNull
    private final ConvertEntry docConvertEntry;

    @NotNull
    private final EventBus eventBus;
    private boolean interrupt;

    @NotNull
    private final List<ConvertEntry> localConvertList;

    @NotNull
    private final List<ConvertEntry> networkConvertList;
    private int queryCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryDocResultAction(@NotNull ConvertEntry docConvertEntry, @NotNull EventBus eventBus, @NotNull List<ConvertEntry> localConvertList, @NotNull List<ConvertEntry> networkConvertList) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(docConvertEntry, "docConvertEntry");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(localConvertList, "localConvertList");
        Intrinsics.checkNotNullParameter(networkConvertList, "networkConvertList");
        this.docConvertEntry = docConvertEntry;
        this.eventBus = eventBus;
        this.localConvertList = localConvertList;
        this.networkConvertList = networkConvertList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean create$lambda$0(QueryDocResultAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return this$0.interrupt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConvertEntry handleResult() {
        Debug.INSTANCE.m32046e("query doc result action finish...");
        return this.docConvertEntry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void postProcess(ConvertEntry it2) {
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(202);
        docConvertProgressEvent.setTaskId(it2.getTaskId());
        docConvertProgressEvent.setNetworkList(this.networkConvertList);
        docConvertProgressEvent.setLocalList(this.localConvertList);
        this.eventBus.post(docConvertProgressEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConvertEntry queryDocResult() {
        if (this.docConvertEntry.isConvertFailed()) {
            this.interrupt = true;
            return this.docConvertEntry;
        }
        QueryResponse queryDocConvert = DocConvertFactory.INSTANCE.getInstance().ensureDocConvert(this.docConvertEntry.getConvertType()).queryDocConvert(this.docConvertEntry);
        if (queryDocConvert == null || !queryDocConvert.isSuccess()) {
            this.docConvertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            this.interrupt = true;
            Debug.INSTANCE.m32037d("convert  [convert] failed!");
            return this.docConvertEntry;
        }
        if (queryDocConvert.getData() == null) {
            this.interrupt = true;
            Debug.INSTANCE.m32037d("convert  [convert] failed!");
            this.docConvertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            return this.docConvertEntry;
        }
        List<? extends QueryResponseTaskBean> data = queryDocConvert.getData();
        List<? extends QueryResponseTaskBean> list = data;
        if (list == null || list.isEmpty()) {
            this.docConvertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            Debug.INSTANCE.m32037d("convert  [convert] failed!");
            this.interrupt = true;
            return this.docConvertEntry;
        }
        QueryResponseTaskBean queryResponseTaskBean = data.get(0);
        int status = queryResponseTaskBean.getStatus();
        if (status == 1) {
            Debug debug = Debug.INSTANCE;
            debug.m32037d("doc convert success!");
            ConvertEntry convertEntry = this.docConvertEntry;
            convertEntry.setStatus(ConvertResultType.RESULT_PROCESSING);
            convertEntry.setOssDownloadKey(queryResponseTaskBean.getTargetKey());
            convertEntry.setProgressValue(85);
            this.interrupt = true;
            debug.m32037d("convert  [convert] end");
        } else if (status == 2) {
            Debug debug2 = Debug.INSTANCE;
            debug2.m32037d("doc convert failed!");
            this.docConvertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            this.interrupt = true;
            debug2.m32037d("convert  [convert] failed!");
        } else if (status == 3) {
            Debug.INSTANCE.m32037d("doc convert processing...");
            this.docConvertEntry.setStatus(ConvertResultType.RESULT_PROCESSING);
            int i = this.queryCount + 1;
            this.queryCount = i;
            if (i % 2 == 0 && this.docConvertEntry.getProgressValue() < 30) {
                ConvertEntry convertEntry2 = this.docConvertEntry;
                convertEntry2.setProgressValue(convertEntry2.getProgressValue() + 1);
            }
            if (this.docConvertEntry.getProgressValue() >= 30) {
                int i2 = this.queryCount;
                DocConvertConst docConvertConst = DocConvertConst.INSTANCE;
                if (i2 == docConvertConst.getOneMinutesCount()) {
                    this.docConvertEntry.setProgressValue(45);
                } else if (i2 == docConvertConst.getThreeMinutesTimesCount()) {
                    this.docConvertEntry.setProgressValue(55);
                } else if (i2 == docConvertConst.getFiveMinutesTimesCount()) {
                    this.docConvertEntry.setProgressValue(65);
                }
            }
        }
        return this.docConvertEntry;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ConvertEntry> create() {
        this.queryCount = 0;
        Observable<ConvertEntry> doOnError = Observable.just(this).observeOn(getObserveOn()).map(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.QueryDocResultAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ConvertEntry apply(@NotNull QueryDocResultAction it2) {
                ConvertEntry queryDocResult;
                Intrinsics.checkNotNullParameter(it2, "it");
                queryDocResult = QueryDocResultAction.this.queryDocResult();
                return queryDocResult;
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.QueryDocResultAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                apply((ConvertEntry) obj);
                return Unit.INSTANCE;
            }

            public final void apply(@NotNull ConvertEntry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                QueryDocResultAction.this.postProcess(it2);
            }
        }).delay(500L, TimeUnit.MILLISECONDS).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.mal
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean create$lambda$0;
                create$lambda$0 = QueryDocResultAction.create$lambda$0(QueryDocResultAction.this);
                return create$lambda$0;
            }
        }).takeLast(1).map(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.QueryDocResultAction$create$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ConvertEntry apply(@NotNull Unit it2) {
                ConvertEntry handleResult;
                Intrinsics.checkNotNullParameter(it2, "it");
                handleResult = QueryDocResultAction.this.handleResult();
                return handleResult;
            }
        }).doOnError(new Consumer() { // from class: com.onyx.android.sdk.data.serverconvert.action.QueryDocResultAction$create$5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Throwable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                QueryDocResultAction.this.interrupt = true;
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    @NotNull
    public final EventBus getEventBus() {
        return this.eventBus;
    }
}
