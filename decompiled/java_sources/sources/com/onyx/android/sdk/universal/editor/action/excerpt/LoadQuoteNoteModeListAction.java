package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.request.excerpt.LoadExcerptCollectionListBySourceShapeIdRequest;
import com.onyx.android.sdk.note.request.excerpt.LoadNoteModelListByIdListRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\"\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "excerptId", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "l", "excerptCollectionList", "m", C6999h.f39688c, Constants.STRING_SIG, "", "i", "Ljava/util/List;", "getExcerptCollectionList", "()Ljava/util/List;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadQuoteNoteModeListAction extends RxBaseAppAction<List<? extends SyncNoteModel>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String excerptId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadQuoteNoteModeListAction$a */
    /* loaded from: classes8.dex */
    public static final class C8797a<T, R> implements Function {
        public C8797a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<ExcerptCollectionModel>> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadQuoteNoteModeListAction.this.m37841l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadQuoteNoteModeListAction$b */
    /* loaded from: classes8.dex */
    public static final class C8798b<T, R> implements Function {
        public C8798b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<SyncNoteModel>> apply(@NotNull List<ExcerptCollectionModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadQuoteNoteModeListAction.this.m37842m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadQuoteNoteModeListAction$c */
    /* loaded from: classes8.dex */
    public static final class C8799c<T> implements Consumer {
        public C8799c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadExcerptCollectionListBySourceShapeIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadQuoteNoteModeListAction.this.getExcerptCollectionList().addAll(it2.getExcerptCollectionList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadQuoteNoteModeListAction$d */
    /* loaded from: classes8.dex */
    public static final class C8800d<T, R> implements Function {
        public C8800d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ExcerptCollectionModel> apply(@NotNull LoadExcerptCollectionListBySourceShapeIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadQuoteNoteModeListAction.this.getExcerptCollectionList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LoadQuoteNoteModeListAction$e */
    /* loaded from: classes8.dex */
    public static final class C8801e<T, R> implements Function {

        /* renamed from: e */
        public static final C8801e<T, R> f48527e = new C8801e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull LoadNoteModelListByIdListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getModelList();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadQuoteNoteModeListAction(@NotNull EditorBundle editorBundle, @NotNull String excerptId) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(excerptId, "excerptId");
        this.excerptId = excerptId;
        this.excerptCollectionList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<SyncNoteModel>> create() {
        Observable<List<SyncNoteModel>> flatMap = Observable.just(this.excerptId).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C8797a()).flatMap(new C8798b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    /* renamed from: l */
    public final Observable<List<ExcerptCollectionModel>> m37841l(String excerptId) {
        Observable<List<ExcerptCollectionModel>> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadExcerptCollectionListBySourceShapeIdRequest(EditorBundleKt.noteBundle(getEditorBundle()), excerptId)).doOnNext(new C8799c()).map(new C8800d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<List<SyncNoteModel>> m37842m(List<ExcerptCollectionModel> excerptCollectionList) {
        Sequence asSequence;
        Sequence map;
        List list;
        asSequence = CollectionsKt___CollectionsKt.asSequence(excerptCollectionList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<ExcerptCollectionModel, String>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.LoadQuoteNoteModeListAction$loadNoteModelList$idList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ExcerptCollectionModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getQuoteDocId();
            }
        });
        list = SequencesKt___SequencesKt.toList(map);
        Observable<List<SyncNoteModel>> map2 = RxBaseAppActionKt.submitRequestToNote(this, new LoadNoteModelListByIdListRequest(EditorBundleKt.noteBundle(getEditorBundle()), list)).map(C8801e.f48527e);
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }
}
