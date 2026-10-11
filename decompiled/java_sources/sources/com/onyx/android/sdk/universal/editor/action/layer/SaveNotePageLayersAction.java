package com.onyx.android.sdk.universal.editor.action.layer;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.document.doc.NoteDocSave;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerUpdatedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;", "virtualDocPolicy", "", C4921e.f26528e, C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "", "i", Constants.HASIDCALL_INDEX_SIG, "getPostChangedEvent", Constants.BOOLEAN_VALUE_SIG, "setPostChangedEvent", "(Z)V", "postChangedEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveNotePageLayersAction extends RxBaseAppAction<PageInfo> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public PageInfo pageInfo;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean postChangedEvent;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction$a */
    /* loaded from: classes8.dex */
    public static final class C9598a<T, R> implements Function {
        public C9598a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PageInfo apply(@NotNull SaveNotePageLayersAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveNotePageLayersAction.this.m39342n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction$b */
    /* loaded from: classes8.dex */
    public static final class C9599b<T, R> implements Function {
        public C9599b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RedrawNoteAction> apply(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RedrawNoteAction(SaveNotePageLayersAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction$c */
    /* loaded from: classes8.dex */
    public static final class C9600c<T> implements Consumer {
        public C9600c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RedrawNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WorkBundleKt.postVirtualDocViewInfo$default(SaveNotePageLayersAction.this.getEditorBundle().getWorkBundle(), null, 1, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction$d */
    /* loaded from: classes8.dex */
    public static final class C9601d<T, R> implements Function {
        public C9601d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PageInfo apply(@NotNull RedrawNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveNotePageLayersAction.this.pageInfo;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveNotePageLayersAction(@NotNull EditorBundle editorBundle, @NotNull PageInfo pageInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        this.pageInfo = pageInfo;
        this.postChangedEvent = true;
    }

    /* renamed from: m */
    public static final void m39341m(SaveNotePageLayersAction this$0, PageInfo it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new NoteLayerUpdatedEvent(this$0.pageInfo.m72357clone()));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PageInfo> create() {
        Observable map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9598a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<PageInfo> map2 = RxjavaKt.doOnNextIf(map, new Function1<PageInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PageInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SaveNotePageLayersAction.this.getPostChangedEvent());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.w0m
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SaveNotePageLayersAction.m39341m(SaveNotePageLayersAction.this, (PageInfo) obj);
            }
        }).flatMap(new C9599b()).doOnNext(new C9600c()).map(new C9601d());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    public final boolean getPostChangedEvent() {
        return this.postChangedEvent;
    }

    /* renamed from: n */
    public final PageInfo m39342n() {
        m39343o(getEditorBundle().getWorkBundle().getVirtualPolicy());
        NoteDocSave.INSTANCE.saveNoteModel(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc());
        return this.pageInfo;
    }

    /* renamed from: o */
    public final void m39343o(VirtualDocPolicy virtualDocPolicy) {
        NotePage ensureGlobalNotePage = virtualDocPolicy.ensureGlobalNotePage();
        ensureGlobalNotePage.getPageInfo().setLayerList(this.pageInfo.getLayerList());
        ensureGlobalNotePage.getPageInfo().setCurrentLayerId(this.pageInfo.getCurrentLayerId());
    }

    public final void setPostChangedEvent(boolean z) {
        this.postChangedEvent = z;
    }
}
