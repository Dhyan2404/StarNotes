package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.RectF;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.request.selection.StartTransformRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction;
import com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u0010+\u001a\u00020*\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b,\u0010-J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\f\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;", "s", "p", "q", "", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;", GoogleApiAvailabilityLight.f29016b, "", "t", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "j", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "startTransformBean", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getTransforming", Constants.BOOLEAN_VALUE_SIG, "setTransforming", "(Z)V", "transforming", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "l", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartTransformAction extends RxBaseAppAction<StartTransformAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean startTransformBean;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean transforming;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public NotePage notePage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$a */
    /* loaded from: classes8.dex */
    public static final class C9961a<T> implements Predicate {
        public C9961a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull StartTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTransformAction.this.m40020o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$b */
    /* loaded from: classes8.dex */
    public static final class C9962b<T, R> implements Function {
        public C9962b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StartTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTransformAction.this.m40018m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$c */
    /* loaded from: classes8.dex */
    public static final class C9963c<T, R> implements Function {
        public C9963c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartTransformRequest> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTransformAction.this.m40023s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$d */
    /* loaded from: classes8.dex */
    public static final class C9964d<T> implements Consumer {
        public C9964d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartTransformAction.this.m40024t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$e */
    /* loaded from: classes8.dex */
    public static final class C9965e<T, R> implements Function {
        public C9965e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StartTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTransformAction.this.m40021p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$f */
    /* loaded from: classes8.dex */
    public static final class C9966f<T, R> implements Function {
        public C9966f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartTransformAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTransformAction.this.m40022q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$g */
    /* loaded from: classes8.dex */
    public static final class C9967g<T> implements Consumer {
        public C9967g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(StartTransformAction.this.getEditorBundle()).invalidate();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$h */
    /* loaded from: classes8.dex */
    public static final class C9968h<T, R> implements Function {
        public C9968h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartTransformAction apply(@NotNull StartTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTransformAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$i */
    /* loaded from: classes8.dex */
    public static final class C9969i<T> implements Consumer {
        public C9969i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartTransformAction.this.notePage = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$j */
    /* loaded from: classes8.dex */
    public static final class C9970j<T, R> implements Function {
        public C9970j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartTransformAction apply(@NotNull DrawSelectionRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTransformAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartTransformAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull ShapeTransformBean startTransformBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(startTransformBean, "startTransformBean");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.startTransformBean = startTransformBean;
    }

    /* renamed from: r */
    public static final void m40017r(DrawSelectionRectAction action, StartTransformAction this$0, DrawSelectionRectAction it2) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        action.postEvent(this$0.transforming);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartTransformAction> create() {
        Observable<StartTransformAction> map = Observable.just(this).observeOn(getMainUIScheduler()).filter(new C9961a()).flatMap(new C9962b()).flatMap(new C9963c()).doOnNext(new C9964d()).flatMap(new C9965e()).flatMap(new C9966f()).doOnNext(new C9967g()).map(new C9968h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    public final boolean getTransforming() {
        return this.transforming;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: m */
    public final Observable<?> m40018m() {
        Observable<NotePage> doOnNext = new EnsureNotePageAction(getEditorBundle(), this.virtualBoxInfo).build().doOnNext(new C9969i());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final ShapeHandlerManager m40019n() {
        return getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager();
    }

    /* renamed from: o */
    public final boolean m40020o() {
        return Intrinsics.areEqual(m40019n().getActiveProviderName(), ShapeHandlerManager.TRANSFORM_PROVIDER);
    }

    /* renamed from: p */
    public final Observable<?> m40021p() {
        return new RenderSelectionDirtyRectToDisplayAction(getEditorBundle(), this.startTransformBean, false).build();
    }

    /* renamed from: q */
    public final Observable<StartTransformAction> m40022q() {
        final DrawSelectionRectAction drawSelectionRectAction = new DrawSelectionRectAction(getEditorBundle(), this.renderContext, this.virtualBoxInfo, this.startTransformBean.getTransformShapes(), false);
        if (this.transforming) {
            DrawSelectionRectAction.configureSelectionRender$default(drawSelectionRectAction, false, null, 2, null);
        }
        Observable<StartTransformAction> map = RxjavaKt.doOnNextIf(drawSelectionRectAction.build(), new Function1<DrawSelectionRectAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction$renderSelection$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DrawSelectionRectAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StartTransformAction.this.m40020o());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.yxm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                StartTransformAction.m40017r(DrawSelectionRectAction.this, this, (DrawSelectionRectAction) obj);
            }
        }).map(new C9970j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<StartTransformRequest> m40023s() {
        RenderMeasure renderMeasure = this.renderContext.getRenderMeasure();
        NotePage notePage = this.notePage;
        renderMeasure.setPageInfo(notePage != null ? notePage.getPageInfo() : null);
        RectFKt.copy(this.virtualBoxInfo.getOriginRectFWithMargin());
        this.startTransformBean.setLimitRect(new RectF());
        return RxBaseAppActionKt.submitRequestToNote(this, new StartTransformRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.renderContext, this.virtualBoxInfo, this.notePage, this.startTransformBean));
    }

    public final void setTransforming(boolean z) {
        this.transforming = z;
    }

    /* renamed from: t */
    public final void m40024t() {
        RectF rectF;
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect != null) {
            View editorView = EditorBundleKt.editorView(getEditorBundle());
            if (editorView == null || (rectF = ViewKt.localVisibleRectF(editorView)) == null) {
                rectF = new RectF();
            }
            selectionRect.setVisibleRect(rectF);
            selectionRect.updateRotationPosition(BoxInfoUtils.INSTANCE.renderMatrix(this.virtualBoxInfo));
        }
    }
}
