package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NoteTabDataProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SaveNoteTabListAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", C6998g.f39679a, "Ljava/util/List;", "tabList", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "clearAll", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SaveNoteTabListAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<NoteTabData> tabList;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean clearAll;

    /* renamed from: com.onyx.galaxy.note.category.action.SaveNoteTabListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10964a<T> implements Consumer {
        public C10964a() {
        }

        /* renamed from: a */
        public final void m42500a(boolean z) {
            SaveNoteTabListAction.this.m42499l();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42500a(((Boolean) obj).booleanValue());
        }
    }

    public /* synthetic */ SaveNoteTabListAction(List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnNext = Observable.just(Boolean.TRUE).observeOn(getObserveOn()).doOnNext(new C10964a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m42499l() {
        NoteTabDataProvider userNoteTabProvider = KSyncBundle.INSTANCE.getUserNoteTabProvider();
        if (this.clearAll) {
            userNoteTabProvider.clearTabData();
        }
        userNoteTabProvider.saveTabData(this.tabList);
    }

    public SaveNoteTabListAction(@NotNull List<NoteTabData> tabList, boolean z) {
        Intrinsics.checkNotNullParameter(tabList, "tabList");
        this.tabList = tabList;
        this.clearAll = z;
    }
}
