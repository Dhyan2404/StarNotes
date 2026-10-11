package com.onyx.android.sdk.data.serverconvert.action;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.convertor.DocConvertFactory;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertResponseBean;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\u0002\u0010\tJ\b\u0010\f\u001a\u00020\u0002H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "convertEntry", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "localConvertList", "", "networkConvertList", "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "convertDoc", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ConvertAsyncAction extends RxBaseCovertAction<ConvertEntry> {

    @NotNull
    private final ConvertEntry convertEntry;

    @NotNull
    private final EventBus eventBus;

    @NotNull
    private final List<ConvertEntry> localConvertList;

    @NotNull
    private final List<ConvertEntry> networkConvertList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConvertAsyncAction(@NotNull ConvertEntry convertEntry, @NotNull EventBus eventBus, @NotNull List<ConvertEntry> localConvertList, @NotNull List<ConvertEntry> networkConvertList) {
        super(eventBus);
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(localConvertList, "localConvertList");
        Intrinsics.checkNotNullParameter(networkConvertList, "networkConvertList");
        this.convertEntry = convertEntry;
        this.eventBus = eventBus;
        this.localConvertList = localConvertList;
        this.networkConvertList = networkConvertList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConvertEntry convertDoc() {
        Debug debug = Debug.INSTANCE;
        debug.m32037d("convert  [convert] start");
        debug.m32037d("convert type:" + this.convertEntry.getConvertType().getPlatform());
        if (this.convertEntry.isConvertFailed()) {
            return this.convertEntry;
        }
        DocConvertResponse docConvert = DocConvertFactory.INSTANCE.getInstance().ensureDocConvert(this.convertEntry.getConvertType()).docConvert(this.convertEntry);
        if (docConvert == null) {
            this.convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            return this.convertEntry;
        }
        if (docConvert.isSuccessful()) {
            List<? extends DocConvertResponseBean> data = docConvert.getData();
            if (data == null) {
                this.convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            } else {
                if (CollectionKt.isNullOrEmpty(data)) {
                    this.convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
                    return this.convertEntry;
                }
                DocConvertResponseBean docConvertResponseBean = data.get(0);
                String ticket = docConvertResponseBean.getTicket();
                if (ticket == null || ticket.length() == 0) {
                    this.convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
                } else {
                    ConvertEntry convertEntry = this.convertEntry;
                    String ticket2 = docConvertResponseBean.getTicket();
                    Intrinsics.checkNotNull(ticket2);
                    convertEntry.setTicket(ticket2);
                    this.convertEntry.setProgressValue(18);
                    handleProgress(this.convertEntry, this.localConvertList, this.networkConvertList);
                }
            }
        } else {
            String absolutePath = this.convertEntry.getFile().getAbsolutePath();
            if (absolutePath == null) {
                absolutePath = "";
            }
            debug.m32037d("doc async convert task failed! fileName:" + absolutePath);
            this.convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
        }
        return this.convertEntry;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ConvertEntry> create() {
        Observable<ConvertEntry> flatMap = Observable.just(this).observeOn(getObserveOn()).map(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.ConvertAsyncAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ConvertEntry apply(@NotNull ConvertAsyncAction it2) {
                ConvertEntry convertDoc;
                Intrinsics.checkNotNullParameter(it2, "it");
                convertDoc = ConvertAsyncAction.this.convertDoc();
                return convertDoc;
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.ConvertAsyncAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ConvertEntry> apply(@NotNull ConvertEntry it2) {
                List list;
                List list2;
                Intrinsics.checkNotNullParameter(it2, "it");
                EventBus eventBus = ConvertAsyncAction.this.getEventBus();
                list = ConvertAsyncAction.this.localConvertList;
                list2 = ConvertAsyncAction.this.networkConvertList;
                return new QueryDocResultAction(it2, eventBus, list, list2).create();
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final EventBus getEventBus() {
        return this.eventBus;
    }
}
