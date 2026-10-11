package com.onyx.galaxy.note.editor.action.counter;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/DeleteCounterTaskAction;", "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "e", "Ljava/util/List;", "taskModels", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteCounterTaskAction extends RxCounterBaseAction<DeleteCounterTaskAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<CounterTaskModel> taskModels;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.DeleteCounterTaskAction$a */
    /* loaded from: classes9.dex */
    public static final class C11866a<T> implements Consumer {
        public C11866a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteCounterTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            KSyncBundle.getUserCounterProvider$default(KSyncBundle.INSTANCE, null, 1, null).deleteTasks(DeleteCounterTaskAction.this.taskModels);
        }
    }

    public DeleteCounterTaskAction(@NotNull List<CounterTaskModel> taskModels) {
        Intrinsics.checkNotNullParameter(taskModels, "taskModels");
        this.taskModels = taskModels;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteCounterTaskAction> create() {
        Observable<DeleteCounterTaskAction> observeOn = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C11866a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }
}
