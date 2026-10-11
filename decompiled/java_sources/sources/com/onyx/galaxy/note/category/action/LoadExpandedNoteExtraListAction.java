package com.onyx.galaxy.note.category.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteExtraModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadExpandedNoteExtraListAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoadExpandedNoteExtraListAction extends BaseNoteManagementAction<List<? extends NoteExtraModel>> {

    /* renamed from: com.onyx.galaxy.note.category.action.LoadExpandedNoteExtraListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10861a<T, R> implements Function {

        /* renamed from: e */
        public static final C10861a<T, R> f53803e = new C10861a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteExtraModel> apply(@NotNull NoteExtraProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.loadExpandedNoteExtraList();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<NoteExtraModel>> create() {
        Observable<List<NoteExtraModel>> observeOn = createNoteExtraProviderObservable().map(C10861a.f53803e).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }
}
