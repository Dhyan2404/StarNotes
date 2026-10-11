package com.onyx.android.sdk.universal.editor.action.page;

import android.graphics.Rect;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.note.common.data.render.NoteRenderArgs;
import com.onyx.android.sdk.note.common.data.render.NoteSliceRenderInfo;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.RenderNotePageRequest;
import com.onyx.android.sdk.note.request.page.PrepareRenderNotePageRequest;
import com.onyx.android.sdk.note.request.page.SplitNotePageRenderShapesRequest;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010 \u001a\u00020\u0019¢\u0006\u0004\bC\u0010DJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J(\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00040\u00040\u000b2\u0006\u0010\n\u001a\u00020\u0005H\u0002J,\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\b2\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00040\u00040\u000bH\u0002J\"\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0010\u001a\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\f0\u0004H\u0002J\f\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\bH\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\u0006\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00000\bH\u0014J\u000e\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001e\u0010)\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R(\u00100\u001a\b\u0012\u0004\u0012\u00020*0%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010(\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R(\u00104\u001a\b\u0012\u0004\u0012\u00020*0%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010(\u001a\u0004\b2\u0010-\"\u0004\b3\u0010/R$\u00109\u001a\u0002052\u0006\u00106\u001a\u0002058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0017\u0010@\u001a\u00020;8\u0006¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?¨\u0006E"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "z", "", "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;", "q", "list", "Lio/reactivex/rxjava3/core/Observable;", "v", PrivilegedApp.f6532i, "Lkotlin/Pair;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "A", "pair", "r", "noteSliceRenderInfo", "s", "w", "onDispose", "setAbort", BaiduYunConstant.CREATE, "", NotificationCompat.CATEGORY_MESSAGE, "log", "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "getNoteRenderArgs", "()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "setNoteRenderArgs", "(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V", "noteRenderArgs", "Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;", "i", "Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;", "renderRequest", "", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "j", "Ljava/util/List;", "requestList", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", C4921e.f26537n, "getSuccessList", "()Ljava/util/List;", "setSuccessList", "(Ljava/util/List;)V", "successList", "l", "getFailList", "setFailList", "failList", "", "<set-?>", "m", Constants.HASIDCALL_INDEX_SIG, "isAbort", Constants.BOOLEAN_VALUE_SIG, "Ljava/util/concurrent/atomic/AtomicBoolean;", GoogleApiAvailabilityLight.f29016b, "Ljava/util/concurrent/atomic/AtomicBoolean;", "getRunning", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "running", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderNotePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,151:1\n1855#2,2:152\n344#3,3:154\n*S KotlinDebug\n*F\n+ 1 RenderNotePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction\n*L\n51#1:152,2\n94#1:154,3\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderNotePageAction extends RxBaseAppAction<RenderNotePageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public NoteRenderArgs noteRenderArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public RenderNotePageRequest renderRequest;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<RxBaseRequest<?>> requestList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<SliceInfo> successList;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<SliceInfo> failList;

    /* renamed from: m, reason: from kotlin metadata */
    public volatile boolean isAbort;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean running;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9716a<T> implements Consumer {
        public C9716a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderNotePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderNotePageAction.this.m39555z();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9717b<T, R> implements Function {
        public C9717b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSliceRenderInfo> apply(@NotNull RenderNotePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageAction.this.m39550q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$c */
    /* loaded from: classes8.dex */
    public static final class C9718c<T, R> implements Function {
        public C9718c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<NoteSliceRenderInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageAction.this.m39553v(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$d */
    /* loaded from: classes8.dex */
    public static final class C9719d<T, R> implements Function {
        public C9719d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderNotePageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$e */
    /* loaded from: classes8.dex */
    public static final class C9720e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Pair<NoteSliceRenderInfo, List<List<Shape>>> f50222f;

        /* JADX WARN: Multi-variable type inference failed */
        public C9720e(Pair<NoteSliceRenderInfo, ? extends List<? extends List<? extends Shape>>> pair) {
            this.f50222f = pair;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageAction.this.m39552s(this.f50222f.getFirst(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$f */
    /* loaded from: classes8.dex */
    public static final class C9721f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteSliceRenderInfo f50224f;

        public C9721f(NoteSliceRenderInfo noteSliceRenderInfo) {
            this.f50224f = noteSliceRenderInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PrepareRenderNotePageRequest apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new PrepareRenderNotePageRequest(EditorBundleKt.noteBundle(RenderNotePageAction.this.getEditorBundle()), this.f50224f.getNoteRenderSlice(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$g */
    /* loaded from: classes8.dex */
    public static final class C9722g<T> implements Consumer {
        public C9722g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PrepareRenderNotePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderNotePageAction.this.requestList.add(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$h */
    /* loaded from: classes8.dex */
    public static final class C9723h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<NoteSliceRenderInfo> f50227f;

        public C9723h(List<NoteSliceRenderInfo> list) {
            this.f50227f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<NoteSliceRenderInfo, List<List<Shape>>> apply(@NotNull RenderNotePageAction it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderNotePageAction renderNotePageAction = RenderNotePageAction.this;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.f50227f);
            return renderNotePageAction.m39549A((NoteSliceRenderInfo) first);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$i */
    /* loaded from: classes8.dex */
    public static final class C9724i<T, R> implements Function {
        public C9724i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Pair<NoteSliceRenderInfo, ? extends List<? extends List<? extends Shape>>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageAction.this.m39551r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$j */
    /* loaded from: classes8.dex */
    public static final class C9725j<T, R> implements Function {
        public C9725j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageAction.this.m39554w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$k */
    /* loaded from: classes8.dex */
    public static final class C9726k<T, R> implements Function {
        public C9726k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RenderNotePageRequest apply(@NotNull RenderNotePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenderNotePageAction.this.renderRequest;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$l */
    /* loaded from: classes8.dex */
    public static final class C9727l<T> implements Consumer {
        public C9727l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderNotePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderNotePageAction.this.requestList.add(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$m */
    /* loaded from: classes8.dex */
    public static final class C9728m<T> implements Consumer {
        public C9728m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderNotePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAddAll(RenderNotePageAction.this.getSuccessList(), it2.getSuccessList());
            CollectionKt.safeAddAll(RenderNotePageAction.this.getFailList(), it2.getFailList());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderNotePageAction(@NotNull EditorBundle editorBundle, @NotNull NoteRenderArgs noteRenderArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteRenderArgs, "noteRenderArgs");
        this.noteRenderArgs = noteRenderArgs;
        this.renderRequest = new RenderNotePageRequest(EditorBundleKt.noteBundle(editorBundle), this.noteRenderArgs);
        this.requestList = new ArrayList();
        this.successList = new ArrayList();
        this.failList = new ArrayList();
        this.running = new AtomicBoolean(false);
    }

    /* renamed from: t */
    public static final void m39545t(PrepareRenderNotePageRequest it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        it2.setAbort();
    }

    /* renamed from: u */
    public static final void m39546u(RenderNotePageAction this$0, PrepareRenderNotePageRequest it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.log("2. prepareRenderShapes execute, thread = " + Thread.currentThread().getName());
        it2.execute2();
    }

    /* renamed from: x */
    public static final void m39547x(RenderNotePageRequest it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        it2.setAbort();
    }

    /* renamed from: y */
    public static final void m39548y(RenderNotePageAction this$0, RenderNotePageRequest it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.log("3. renderShapes execute, thread = " + Thread.currentThread().getName());
        it2.disableThrowException();
        it2.execute2();
    }

    /* renamed from: A */
    public final Pair<NoteSliceRenderInfo, List<List<Shape>>> m39549A(NoteSliceRenderInfo info) {
        List emptyList;
        NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), info.getNoteRenderSlice().getBoxInfo().getId());
        if (notePage == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return new Pair<>(info, emptyList);
        }
        PageInfo pageInfo = notePage.getPageInfo();
        RectF originRectFWithMargin = this.noteRenderArgs.getVirtualPageBoxInfo().getOriginRectFWithMargin();
        Rect rect = new Rect();
        originRectFWithMargin.roundOut(rect);
        pageInfo.setPageRect(rect);
        SplitNotePageRenderShapesRequest splitNotePageRenderShapesRequest = new SplitNotePageRenderShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), notePage.getShapeList());
        if (!this.isAbort) {
            splitNotePageRenderShapesRequest.execute2();
        }
        return new Pair<>(info, splitNotePageRenderShapesRequest.getBatchShapeList());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RenderNotePageAction> create() {
        Observable<RenderNotePageAction> doOnDispose = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9716a()).map(new C9717b()).flatMap(new C9718c()).map(new C9719d()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.ikl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RenderNotePageAction.this.onDispose();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    @NotNull
    public final List<SliceInfo> getFailList() {
        return this.failList;
    }

    @NotNull
    public final NoteRenderArgs getNoteRenderArgs() {
        return this.noteRenderArgs;
    }

    @NotNull
    public final AtomicBoolean getRunning() {
        return this.running;
    }

    @NotNull
    public final List<SliceInfo> getSuccessList() {
        return this.successList;
    }

    /* renamed from: isAbort, reason: from getter */
    public final boolean getIsAbort() {
        return this.isAbort;
    }

    public final void log(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.renderRequest.log(AnyKt.toSimpleNameString(this) + ": " + msg);
    }

    public final void onDispose() {
        setAbort();
    }

    /* renamed from: q */
    public final List<NoteSliceRenderInfo> m39550q() {
        Sequence asSequence;
        Sequence filter;
        List<NoteSliceRenderInfo> list;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.noteRenderArgs.getSliceRenderInfoList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<NoteSliceRenderInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$filterRenderingSliceInfoList$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteSliceRenderInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getNoteRenderSlice().isRendering() && !RenderNotePageAction.this.getIsAbort());
            }
        });
        list = SequencesKt___SequencesKt.toList(filter);
        return list;
    }

    /* renamed from: r */
    public final Observable<?> m39551r(Pair<NoteSliceRenderInfo, ? extends List<? extends List<? extends Shape>>> pair) {
        if (CollectionKt.isNullOrEmpty(pair.getSecond())) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = Observable.fromIterable(pair.getSecond()).flatMap(new C9720e(pair));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.takeLastOne(flatMap);
    }

    /* renamed from: s */
    public final Observable<?> m39552s(NoteSliceRenderInfo noteSliceRenderInfo, List<? extends Shape> list) {
        Observable map = Observable.just(list).observeOn(getMainUIScheduler()).map(new C9721f(noteSliceRenderInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable observeOn = RxjavaKt.doOnNextIf(map, new Function1<PrepareRenderNotePageRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$prepareRenderShapes$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PrepareRenderNotePageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(RenderNotePageAction.this.getIsAbort());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.lkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenderNotePageAction.m39545t((PrepareRenderNotePageRequest) obj);
            }
        }).doOnNext(new C9722g()).observeOn(EditorBundleKt.subNoteScheduler(getEditorBundle()));
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return RxjavaKt.doOnNextIf(observeOn, new Function1<PrepareRenderNotePageRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$prepareRenderShapes$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PrepareRenderNotePageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!RenderNotePageAction.this.getIsAbort());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.mkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenderNotePageAction.m39546u(RenderNotePageAction.this, (PrepareRenderNotePageRequest) obj);
            }
        });
    }

    public final void setAbort() {
        this.isAbort = true;
        Iterator it2 = CollectionKt.copy(this.requestList).iterator();
        while (it2.hasNext()) {
            ((RxBaseRequest) it2.next()).setAbort();
        }
        log("setAbort, thread = " + Thread.currentThread().getName() + ", requestList = " + this.requestList.size() + ", running = " + this.running.get());
    }

    public final void setFailList(@NotNull List<SliceInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.failList = list;
    }

    public final void setNoteRenderArgs(@NotNull NoteRenderArgs noteRenderArgs) {
        Intrinsics.checkNotNullParameter(noteRenderArgs, "<set-?>");
        this.noteRenderArgs = noteRenderArgs;
    }

    public final void setSuccessList(@NotNull List<SliceInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.successList = list;
    }

    /* renamed from: v */
    public final Observable<?> m39553v(List<NoteSliceRenderInfo> list) {
        if (CollectionKt.isNullOrEmpty(list)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> flatMap = Observable.just(this).map(new C9723h(list)).flatMap(new C9724i()).flatMap(new C9725j());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: w */
    public final Observable<?> m39554w() {
        Observable map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C9726k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable observeOn = RxjavaKt.doOnNextIf(map, new Function1<RenderNotePageRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$renderShapes$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RenderNotePageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(RenderNotePageAction.this.getIsAbort());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.jkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenderNotePageAction.m39547x((RenderNotePageRequest) obj);
            }
        }).doOnNext(new C9727l()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle()));
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<?> doOnNext = RxjavaKt.doOnNextIf(observeOn, new Function1<RenderNotePageRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction$renderShapes$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RenderNotePageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!RenderNotePageAction.this.getIsAbort());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.kkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RenderNotePageAction.m39548y(RenderNotePageAction.this, (RenderNotePageRequest) obj);
            }
        }).observeOn(getMainUIScheduler()).doOnNext(new C9728m());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: z */
    public final void m39555z() {
        this.running.set(true);
        log("1. running = true, thread = " + Thread.currentThread().getName());
    }
}
