package com.onyx.android.sdk.universal.editor.action.clone;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.clone.PastePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.GotoPageAction;
import com.onyx.android.sdk.universal.editor.action.page.UpdateVirtualPageAction;
import com.onyx.android.sdk.universal.editor.action.tag.CheckAndUpdateTagPageIndexAction;
import com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelAction;
import com.onyx.android.sdk.universal.editor.bean.PasteState;
import com.onyx.android.sdk.universal.editor.data.PastePagedArgs;
import com.onyx.android.sdk.universal.editor.events.app.PastePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.SelectPastedPageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest;
import com.onyx.android.sdk.universal.editor.request.page.CloseVirtualPolicyRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\r\u001a\u00020\fH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/clone/PastePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "u", C4921e.f26528e, "w", "Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs$PastePageInfo;", "pastePageInfo", "", "q", "t", "", "pastedPageId", "v", "", C6999h.f39688c, "Ljava/util/List;", "pastePageInfos", "", "i", "pastedPageIds", "j", "sortedPastePageInfos", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPastePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PastePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/PastePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1045#2:151\n*S KotlinDebug\n*F\n+ 1 PastePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/PastePageAction\n*L\n49#1:151\n*E\n"})
/* loaded from: classes8.dex */
public final class PastePageAction extends RxBaseAppAction<PastePageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<PastePagedArgs.PastePageInfo> pastePageInfos;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<String> pastedPageIds;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<PastePagedArgs.PastePageInfo> sortedPastePageInfos;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8568a<T, R> implements Function {
        public C8568a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AfterDocumentOpenRequest> apply(@NotNull CloseVirtualPolicyRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PastePageAction pastePageAction = PastePageAction.this;
            return RxBaseAppActionKt.submitRequestToCore(pastePageAction, new AfterDocumentOpenRequest(pastePageAction.getEditorBundle().getWorkBundle(), null, 2, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8569b<T, R> implements Function {
        public C8569b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull AfterDocumentOpenRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PastePageAction.this.m37456w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8570c<T, R> implements Function {
        public C8570c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoPageAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GotoPageAction(PastePageAction.this.getEditorBundle(), ((PastePagedArgs.PastePageInfo) PastePageAction.this.sortedPastePageInfos.get(0)).getDestPageIndex()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8571d<T, R> implements Function {
        public C8571d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PastePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PastePageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$e */
    /* loaded from: classes8.dex */
    public static final class C8572e<T> implements Consumer {
        public C8572e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PastePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(PastePageAction.this.getEditorBundle(), new PastePageEvent(PasteState.InProgress.INSTANCE));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$f */
    /* loaded from: classes8.dex */
    public static final class C8573f<T, R> implements Function {
        public C8573f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull PastePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.saveDocInfo(PastePageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$g */
    /* loaded from: classes8.dex */
    public static final class C8574g<T, R> implements Function {
        public C8574g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PastePagedArgs.PastePageInfo> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(PastePageAction.this.sortedPastePageInfos);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$h */
    /* loaded from: classes8.dex */
    public static final class C8575h<T, R> implements Function {
        public C8575h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull PastePagedArgs.PastePageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PastePageAction.this.m37452q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$i */
    /* loaded from: classes8.dex */
    public static final class C8576i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ReplaySubject<Boolean> f48161e;

        public C8576i(ReplaySubject<Boolean> replaySubject) {
            this.f48161e = replaySubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48161e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$j */
    /* loaded from: classes8.dex */
    public static final class C8577j<T, R> implements Function {
        public C8577j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PastePageAction> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PastePageAction.this.m37455v(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$k */
    /* loaded from: classes8.dex */
    public static final class C8578k<T, R> implements Function {
        public C8578k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateVirtualPageAction> apply(@NotNull PastePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateVirtualPageAction(PastePageAction.this.getEditorBundle(), PastePageAction.this.pastedPageIds).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$l */
    /* loaded from: classes8.dex */
    public static final class C8579l<T, R> implements Function {
        public C8579l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CheckAndUpdateTagPageIndexAction> apply(@NotNull UpdateVirtualPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckAndUpdateTagPageIndexAction(PastePageAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$m */
    /* loaded from: classes8.dex */
    public static final class C8580m<T, R> implements Function {
        public C8580m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PastePageAction apply(@NotNull CheckAndUpdateTagPageIndexAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PastePageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$n */
    /* loaded from: classes8.dex */
    public static final class C8581n<T, R> implements Function {
        public C8581n() {
        }

        /* renamed from: a */
        public final void m37470a(@NotNull PastePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(PastePageAction.this.getEditorBundle(), new SelectPastedPageEvent(PastePageAction.this.pastedPageIds));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m37470a((PastePageAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$o */
    /* loaded from: classes8.dex */
    public static final class C8582o<T, R> implements Function {
        public C8582o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PastePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PastePageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PastePageAction(@NotNull EditorBundle editorBundle, @NotNull List<PastePagedArgs.PastePageInfo> pastePageInfos) {
        super(editorBundle);
        List<PastePagedArgs.PastePageInfo> sortedWith;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pastePageInfos, "pastePageInfos");
        this.pastePageInfos = pastePageInfos;
        this.pastedPageIds = new ArrayList();
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(pastePageInfos, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$special$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((PastePagedArgs.PastePageInfo) t).getDestPageIndex()), Integer.valueOf(((PastePagedArgs.PastePageInfo) t2).getDestPageIndex()));
                return compareValues;
            }
        });
        this.sortedPastePageInfos = sortedWith;
    }

    /* renamed from: p */
    public static final void m37448p(PastePageAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new PastePageEvent(PasteState.Success.INSTANCE));
    }

    /* renamed from: r */
    public static final void m37449r(PastePageAction this$0, PBDataContext pbDataContext, ReplaySubject subject) {
        Map<String, String> pageIdCopyMap;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pbDataContext, "$pbDataContext");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        List<String> list = this$0.pastedPageIds;
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        CollectionKt.safeAddAll(list, (copyNoteArgs == null || (pageIdCopyMap = copyNoteArgs.getPageIdCopyMap()) == null) ? null : pageIdCopyMap.values());
        RxjavaKt.done(subject, Boolean.TRUE);
    }

    /* renamed from: s */
    public static final void m37450s(String str) {
        FileUtils.INSTANCE.deleteFile(str);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PastePageAction> create() {
        Observable concatMap = Observable.just(this).doOnNext(new C8572e()).flatMap(new C8573f()).flatMap(new C8574g()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).concatMap(new C8575h());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<PastePageAction> doFinally = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(RxjavaKt.takeLastOne(concatMap), new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$create$5
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$create$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Observable<? extends Object> m37451o;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37451o = PastePageAction.this.m37451o();
                return m37451o;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$create$7
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!PastePageAction.this.pastedPageIds.isEmpty());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$create$8
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m37453t;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37453t = PastePageAction.this.m37453t();
                return m37453t;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$create$9
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!PastePageAction.this.pastedPageIds.isEmpty());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$create$10
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m37454u;
                Intrinsics.checkNotNullParameter(it2, "it");
                m37454u = PastePageAction.this.m37454u();
                return m37454u;
            }
        }).map(new C8571d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.gzk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PastePageAction.m37448p(PastePageAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: o */
    public final Observable<?> m37451o() {
        Observable<?> flatMap = RxBaseAppActionKt.submitRequestToCore(this, new CloseVirtualPolicyRequest(getEditorBundle().getWorkBundle())).flatMap(new C8568a()).flatMap(new C8569b()).flatMap(new C8570c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: q */
    public final Observable<Boolean> m37452q(PastePagedArgs.PastePageInfo pastePageInfo) {
        String clonePageFilePath = ClonePageAction.INSTANCE.getClonePageFilePath();
        final String path = new File(ResManager.INSTANCE.getAppContext().getCacheDir(), SyncConstant.NOTE_PAGE_CLONE_DIR + File.separator + UUIDUtils.INSTANCE.rawUUID()).getPath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(path);
        ZipUtils.INSTANCE.unZip(new File(clonePageFilePath), path, null);
        String docId = EditorBundleKt.docId(getEditorBundle());
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        Intrinsics.checkNotNull(path);
        if (!fileUtils.isFileExist(syncConstant.docDirFilePath(path, docId))) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CopyNoteArgs copyNoteArgs = new CopyNoteArgs();
        copyNoteArgs.setUserId(AccountDataBundle.INSTANCE.getSyncUserId());
        copyNoteArgs.setSrcDocId(docId);
        copyNoteArgs.setDstDocId(EditorBundleKt.docId(getEditorBundle()));
        copyNoteArgs.setDstParentId(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getParentUniqueId());
        copyNoteArgs.setSrcDirFilePath(path);
        copyNoteArgs.setCopyToPageIndex(Integer.valueOf(pastePageInfo.getDestPageIndex() + this.pastedPageIds.size()));
        copyNoteArgs.setGenerateUniqueContentFile(false);
        final PBDataContext pBDataContext = new PBDataContext(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder(), docId);
        pBDataContext.setCopyNoteArgs(copyNoteArgs);
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        PBFactory.copyPBDataToDBObservable$default(PBFactory.INSTANCE, pBDataContext, null, 2, null).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ezk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PastePageAction.m37449r(PastePageAction.this, pBDataContext, create);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.fzk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PastePageAction.m37450s(path);
            }
        }).doOnError(new C8576i(create)).subscribe();
        return create;
    }

    /* renamed from: t */
    public final Observable<PastePageAction> m37453t() {
        Observable flatMap = Observable.fromIterable(this.pastedPageIds).flatMap(new C8577j());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<PastePageAction> map = RxjavaKt.takeLastOne(flatMap).flatMap(new C8578k()).flatMap(new C8579l()).map(new C8580m());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<?> m37454u() {
        Observable<?> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8581n());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final Observable<PastePageAction> m37455v(final String pastedPageId) {
        Observable map = RxjavaKt.flatMapIf(DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, List<? extends Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$updatePageTag$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull NoteBundle it2) {
                ArrayList arrayList;
                List<Shape> emptyList;
                List<Shape> shapeList;
                Intrinsics.checkNotNullParameter(it2, "it");
                NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(EditorBundleKt.noteBundle(PastePageAction.this.getEditorBundle()).getNoteDoc(), pastedPageId);
                if (notePage != null) {
                    notePage.setDirty(true);
                }
                if (notePage == null || (shapeList = notePage.getShapeList()) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList();
                    for (Object obj : shapeList) {
                        if (ShapeKt.isTagShape((Shape) obj)) {
                            arrayList.add(obj);
                        }
                    }
                }
                if (arrayList != null) {
                    return arrayList;
                }
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        }), new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$updatePageTag$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$updatePageTag$3

            /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$updatePageTag$3$a */
            /* loaded from: classes8.dex */
            public static final class C8583a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ PastePageAction f48168e;

                public C8583a(PastePageAction pastePageAction) {
                    this.f48168e = pastePageAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull Shape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new SavePageTagModelAction(this.f48168e.getEditorBundle(), it2.getPageUniqueId(), ShapeOptions.INSTANCE.getTagBean(it2)).build();
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable concatMap = Observable.fromIterable(it2).concatMap(new C8583a(PastePageAction.this));
                Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
                return RxjavaKt.takeLastOne(concatMap);
            }
        }).map(new C8582o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: w */
    public final Observable<?> m37456w() {
        return DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.PastePageAction$updateValidShapeNotePageIds$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteDocNotePage.INSTANCE.updateValidShapeNotePageIds(it2.getNoteDoc());
            }
        });
    }
}
