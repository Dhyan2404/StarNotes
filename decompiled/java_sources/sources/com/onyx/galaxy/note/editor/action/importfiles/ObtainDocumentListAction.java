package com.onyx.galaxy.note.editor.action.importfiles;

import android.content.Intent;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.PickerManager;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0011\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/content/Intent;", C6998g.f39679a, "Landroid/content/Intent;", "getData", "()Landroid/content/Intent;", "data", C6999h.f39688c, "Ljava/util/List;", "getDocumentList", "()Ljava/util/List;", "setDocumentList", "(Ljava/util/List;)V", "documentList", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Intent;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ObtainDocumentListAction extends RxBaseNoteAppAction<List<? extends DocumentBean>> {

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public final Intent data;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<DocumentBean> documentList;

    @SourceDebugExtension({"SMAP\nObtainDocumentListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObtainDocumentListAction.kt\ncom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.ObtainDocumentListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11942a<T, R> implements Function {
        public C11942a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<DocumentBean> apply(@NotNull ObtainDocumentListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<DocumentBean> obtainResult = PickerManager.INSTANCE.obtainResult(ObtainDocumentListAction.this.getData());
            ObtainDocumentListAction.this.setDocumentList(obtainResult);
            return obtainResult;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.ObtainDocumentListAction$b */
    /* loaded from: classes9.dex */
    public static final class C11943b<T> implements Predicate {

        /* renamed from: e */
        public static final C11943b<T> f58364e = new C11943b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<DocumentBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    public ObtainDocumentListAction(@Nullable Intent intent) {
        List<DocumentBean> emptyList;
        this.data = intent;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.documentList = emptyList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<DocumentBean>> create() {
        Observable<List<DocumentBean>> filter = Observable.just(this).observeOn(getObserveOn()).map(new C11942a()).filter(C11943b.f58364e);
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        return filter;
    }

    @Nullable
    public final Intent getData() {
        return this.data;
    }

    @NotNull
    public final List<DocumentBean> getDocumentList() {
        return this.documentList;
    }

    public final void setDocumentList(@NotNull List<DocumentBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.documentList = list;
    }
}
