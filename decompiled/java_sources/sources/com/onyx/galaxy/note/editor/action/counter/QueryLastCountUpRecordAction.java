package com.onyx.galaxy.note.editor.action.counter;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;", "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "e", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "getRecord", "()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "setRecord", "(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V", "record", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class QueryLastCountUpRecordAction extends RxCounterBaseAction<QueryLastCountUpRecordAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public CounterRecordModel record;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.QueryLastCountUpRecordAction$a */
    /* loaded from: classes9.dex */
    public static final class C11873a<T> implements Consumer {
        public C11873a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QueryLastCountUpRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QueryLastCountUpRecordAction.this.setRecord(KSyncBundle.getUserCounterProvider$default(KSyncBundle.INSTANCE, null, 1, null).queryLastCountUpRecord());
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<QueryLastCountUpRecordAction> create() {
        Observable<QueryLastCountUpRecordAction> observeOn = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C11873a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @Nullable
    public final CounterRecordModel getRecord() {
        return this.record;
    }

    public final void setRecord(@Nullable CounterRecordModel counterRecordModel) {
        this.record = counterRecordModel;
    }
}
