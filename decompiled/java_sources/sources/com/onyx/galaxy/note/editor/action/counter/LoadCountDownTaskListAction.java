package com.onyx.galaxy.note.editor.action.counter;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0014¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;", "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoadCountDownTaskListAction extends RxCounterBaseAction<List<? extends CounterTaskModel>> {

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.LoadCountDownTaskListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11871a<T, R> implements Function {

        /* renamed from: e */
        public static final C11871a<T, R> f58245e = new C11871a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CounterTaskModel> apply(@NotNull LoadCountDownTaskListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return KSyncBundle.getUserCounterProvider$default(KSyncBundle.INSTANCE, null, 1, null).queryTasks();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CounterTaskModel>> create() {
        Observable<List<CounterTaskModel>> observeOn = Observable.just(this).observeOn(getObserveOn()).map(C11871a.f58245e).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }
}
