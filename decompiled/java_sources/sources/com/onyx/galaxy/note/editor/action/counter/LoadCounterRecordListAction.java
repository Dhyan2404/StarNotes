package com.onyx.galaxy.note.editor.action.counter;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;", "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "e", Constants.HASIDCALL_INDEX_SIG, "isCountUp", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadCounterRecordListAction extends RxCounterBaseAction<List<? extends CounterRecordModel>> {

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean isCountUp;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.LoadCounterRecordListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11872a<T, R> implements Function {
        public C11872a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CounterRecordModel> apply(@NotNull LoadCounterRecordListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return KSyncBundle.getUserCounterProvider$default(KSyncBundle.INSTANCE, null, 1, null).queryHistory(LoadCounterRecordListAction.this.isCountUp);
        }
    }

    public LoadCounterRecordListAction(boolean z) {
        this.isCountUp = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CounterRecordModel>> create() {
        Observable<List<CounterRecordModel>> observeOn = Observable.just(this).observeOn(getObserveOn()).map(new C11872a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }
}
