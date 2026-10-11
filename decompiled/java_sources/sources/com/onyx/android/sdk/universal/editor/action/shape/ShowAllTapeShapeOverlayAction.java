package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.pen.TapeShape;
import com.onyx.android.sdk.note.request.tape.ShowAllTapeShapeOverlayRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/ShowAllTapeShapeOverlayAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "show", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowAllTapeShapeOverlayAction extends RxBaseAppAction<ShowAllTapeShapeOverlayAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean show;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$a */
    /* loaded from: classes8.dex */
    public static final class C10137a<T, R> implements Function {

        /* renamed from: e */
        public static final C10137a<T, R> f50989e = new C10137a<>();

        /* renamed from: a */
        public final void m40313a(@NotNull ShowAllTapeShapeOverlayRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40313a((ShowAllTapeShapeOverlayRequest) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$b */
    /* loaded from: classes8.dex */
    public static final class C10138b<T> implements Consumer {
        public C10138b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShowAllTapeShapeOverlayAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TapeShape.INSTANCE.setAllTapeClose(ShowAllTapeShapeOverlayAction.this.show);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$c */
    /* loaded from: classes8.dex */
    public static final class C10139c<T, R> implements Function {
        public C10139c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull ShowAllTapeShapeOverlayAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowAllTapeShapeOverlayAction.this.m40311l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$d */
    /* loaded from: classes8.dex */
    public static final class C10140d<T, R> implements Function {
        public C10140d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowAllTapeShapeOverlayAction.this.m40312m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$e */
    /* loaded from: classes8.dex */
    public static final class C10141e<T> implements Consumer {
        public C10141e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WorkBundleKt.postVirtualDocViewInfo$default(ShowAllTapeShapeOverlayAction.this.getEditorBundle().getWorkBundle(), null, 1, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$f */
    /* loaded from: classes8.dex */
    public static final class C10142f<T, R> implements Function {
        public C10142f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShowAllTapeShapeOverlayAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowAllTapeShapeOverlayAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$g */
    /* loaded from: classes8.dex */
    public static final class C10143g<T, R> implements Function {
        public C10143g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(ShowAllTapeShapeOverlayAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction$h */
    /* loaded from: classes8.dex */
    public static final class C10144h<T, R> implements Function {

        /* renamed from: e */
        public static final C10144h<T, R> f50996e = new C10144h<>();

        /* renamed from: a */
        public final void m40320a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40320a(obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowAllTapeShapeOverlayAction(@NotNull EditorBundle editorBundle, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.show = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShowAllTapeShapeOverlayAction> create() {
        Observable<ShowAllTapeShapeOverlayAction> map = Observable.just(this).doOnNext(new C10138b()).flatMap(new C10139c()).flatMap(new C10140d()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C10141e()).map(new C10142f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<Unit> m40311l() {
        Observable<Unit> map = RxBaseAppActionKt.submitRequestToNote(this, new ShowAllTapeShapeOverlayRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.show)).map(C10137a.f50989e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<Unit> m40312m() {
        Observable<Unit> map = RenderRequestManagerKt.safeClearAllNoteSliceCache(this).flatMap(new C10143g()).map(C10144h.f50996e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
