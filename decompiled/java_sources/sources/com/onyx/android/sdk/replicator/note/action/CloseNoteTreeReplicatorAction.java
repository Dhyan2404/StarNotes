package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/CloseNoteTreeReplicatorAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "getReplicator", "()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseNoteTreeReplicatorAction extends BaseNoteSyncAction<CloseNoteTreeReplicatorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BaseReplicator replicator;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CloseNoteTreeReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7674a<T, R> implements Function {
        public C7674a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseReplicator apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseNoteTreeReplicatorAction.this.getReplicator().closeReplicator();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CloseNoteTreeReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7675b<T, R> implements Function {
        public C7675b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseNoteTreeReplicatorAction apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseNoteTreeReplicatorAction.this;
        }
    }

    public CloseNoteTreeReplicatorAction(@NotNull BaseReplicator replicator) {
        Intrinsics.checkNotNullParameter(replicator, "replicator");
        this.replicator = replicator;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseNoteTreeReplicatorAction> create() {
        Observable<CloseNoteTreeReplicatorAction> map = this.replicator.createBaseObservable().map(new C7674a()).map(new C7675b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final BaseReplicator getReplicator() {
        return this.replicator;
    }
}
