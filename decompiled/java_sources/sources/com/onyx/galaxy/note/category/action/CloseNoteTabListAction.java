package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NoteTabDataProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/CloseNoteTabListAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", C6998g.f39679a, "Ljava/util/List;", "list", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CloseNoteTabListAction extends RxBaseNoteAppAction<List<? extends NoteTabData>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<NoteTabData> list;

    /* renamed from: com.onyx.galaxy.note.category.action.CloseNoteTabListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10769a<T, R> implements Function {
        public C10769a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteTabData>> apply(@NotNull CloseNoteTabListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseNoteTabListAction.this.m42133l();
        }
    }

    public CloseNoteTabListAction(@NotNull List<NoteTabData> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<NoteTabData>> create() {
        Observable<List<NoteTabData>> flatMap = Observable.just(this).observeOn(getObserveOn()).flatMap(new C10769a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<NoteTabData>> m42133l() {
        NoteTabDataProvider userNoteTabProvider = KSyncBundle.INSTANCE.getUserNoteTabProvider();
        userNoteTabProvider.deleteTabData(this.list);
        Observable<List<NoteTabData>> just = Observable.just(userNoteTabProvider.loadTabDataList());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
