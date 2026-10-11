package com.onyx.galaxy.note.settings.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/MoveNoteToDustbinAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "providerInfo", "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6998g.f39679a, "Ljava/util/List;", "getList", "()Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MoveNoteToDustbinAction extends RxBaseNoteAppAction<Unit> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> list;

    /* renamed from: com.onyx.galaxy.note.settings.action.MoveNoteToDustbinAction$a */
    /* loaded from: classes9.dex */
    public static final class C12643a<T, R> implements Function {

        /* renamed from: e */
        public static final C12643a<T, R> f61431e = new C12643a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull MoveNoteToDustbinAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.MoveNoteToDustbinAction$b */
    /* loaded from: classes9.dex */
    public static final class C12644b<T, R> implements Function {

        /* renamed from: e */
        public static final C12644b<T, R> f61432e = new C12644b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProviderInfo apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.MoveNoteToDustbinAction$c */
    /* loaded from: classes9.dex */
    public static final class C12645c<T, R> implements Function {
        public C12645c() {
        }

        /* renamed from: a */
        public final void m50655a(@NotNull ProviderInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveNoteToDustbinAction.this.m50652l(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50655a((ProviderInfo) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MoveNoteToDustbinAction(@NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<Unit> map = Observable.just(this).observeOn(getObserveOn()).flatMap(C12643a.f61431e).observeOn(getObserveOn()).map(C12644b.f61432e).map(new C12645c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<SyncNoteModel> getList() {
        return this.list;
    }

    /* renamed from: l */
    public final void m50652l(ProviderInfo providerInfo) {
        NoteModelProviderKt.removeNoteList(KSyncBundle.INSTANCE.getDbProviderBundle().getNoteProvider(providerInfo), this.list);
    }
}
