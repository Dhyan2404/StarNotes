package com.onyx.galaxy.note.editor.action.counter;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;", "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "e", "Ljava/util/List;", "list", "", C6997f.f39671c, Constants.STRING_SIG, Constant.TAG_USER_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SaveCounterRecordAction extends RxCounterBaseAction<SaveCounterRecordAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<CounterRecordModel> list;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String userId;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.SaveCounterRecordAction$a */
    /* loaded from: classes9.dex */
    public static final class C11879a<T> implements Consumer {
        public C11879a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveCounterRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            KSyncBundle.INSTANCE.getUserCounterProvider(SaveCounterRecordAction.this.userId).saveHistory(SaveCounterRecordAction.this.list);
        }
    }

    public SaveCounterRecordAction(@NotNull List<CounterRecordModel> list, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.list = list;
        this.userId = userId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveCounterRecordAction> create() {
        Observable<SaveCounterRecordAction> observeOn = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C11879a()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public /* synthetic */ SaveCounterRecordAction(List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? AccountDataBundle.INSTANCE.getSyncUserId() : str);
    }
}
