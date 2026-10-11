package com.onyx.android.sdk.universal.editor.action.textinput;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.textinput.HitTestTextShapeRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
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
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u0012\u0006\u0010\u001e\u001a\u00020\u0019¢\u0006\u0004\b7\u00108J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\b\u001a\u00020\u0006H\u0002J\f\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0005\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00103\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010-\u001a\u0004\b3\u0010/\"\u0004\b4\u00101¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;", "m", AbstractLogger.REQUEST, "l", GoogleApiAvailabilityLight.f29016b, "", C4921e.f26528e, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "j", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "setNotePage", "(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getCreateNew", Constants.BOOLEAN_VALUE_SIG, "setCreateNew", "(Z)V", "createNew", "isHitTestSelectedShapes", "setHitTestSelectedShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HitTestTextShapeAction extends RxBaseAppAction<HitTestTextShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean createNew;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isHitTestSelectedShapes;
    public NotePage notePage;
    public Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10219a<T, R> implements Function {
        public C10219a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestTextShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10220b<T> implements Predicate {
        public C10220b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.isCurNoteLayerEnable(HitTestTextShapeAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10221c<T> implements Consumer {
        public C10221c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestTextShapeAction.this.m40439o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10222d<T, R> implements Function {
        public C10222d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestTextShapeRequest> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestTextShapeAction.this.m40437m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10223e<T> implements Consumer {
        public C10223e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestTextShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestTextShapeAction.this.setHitTestSelectedShapes(it2.isHitTestSelectedShapes());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C10224f<T, R> implements Function {
        public C10224f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestTextShapeAction> apply(@NotNull HitTestTextShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestTextShapeAction.this.m40436l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C10225g<T, R> implements Function {
        public C10225g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull HitTestTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestTextShapeAction hitTestTextShapeAction = HitTestTextShapeAction.this;
            return CommonEditorActionsKt.updateVirtualPage(hitTestTextShapeAction, hitTestTextShapeAction.getVirtualBoxInfo().getId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C10226h<T, R> implements Function {
        public C10226h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HitTestTextShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HitTestTextShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C10227i<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ HitTestTextShapeRequest f51120f;

        public C10227i(HitTestTextShapeRequest hitTestTextShapeRequest) {
            this.f51120f = hitTestTextShapeRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestTextShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HitTestTextShapeAction.this.setCreateNew(this.f51120f.getCreateNew());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitTestTextShapeAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.touchPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HitTestTextShapeAction> create() {
        Observable<HitTestTextShapeAction> map = new EnsureNotePageAction(getEditorBundle(), this.virtualBoxInfo).create().filter(new C10220b()).doOnNext(new C10221c()).flatMap(new C10222d()).doOnNext(new C10223e()).flatMap(new C10224f()).flatMap(new C10225g()).map(new C10226h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getCreateNew() {
        return this.createNew;
    }

    @NotNull
    public final NotePage getNotePage() {
        NotePage notePage = this.notePage;
        if (notePage != null) {
            return notePage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("notePage");
        return null;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final Shape getShape() {
        Shape shape = this.shape;
        if (shape != null) {
            return shape;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shape");
        return null;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: isHitTestSelectedShapes, reason: from getter */
    public final boolean getIsHitTestSelectedShapes() {
        return this.isHitTestSelectedShapes;
    }

    /* renamed from: l */
    public final Observable<HitTestTextShapeAction> m40436l(HitTestTextShapeRequest request) {
        setShape(ShapeTypes.INSTANCE.getTargetShape(request.getHitTextShape()));
        Observable map = m40438n().map(new C10219a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<HitTestTextShapeRequest> m40437m(NotePage notePage) {
        HitTestTextShapeRequest hitTestTextShapeRequest = new HitTestTextShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.virtualBoxInfo, notePage, this.touchPoint);
        hitTestTextShapeRequest.setInputConfig(MMKVNote.INSTANCE.getTextInputConfigOption().get());
        hitTestTextShapeRequest.setCreateNew(this.createNew);
        Observable<HitTestTextShapeRequest> doOnNext = RxBaseAppActionKt.submitRequestToNote(this, hitTestTextShapeRequest).doOnNext(new C10227i(hitTestTextShapeRequest));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final Observable<?> m40438n() {
        if (!Intrinsics.areEqual(getNotePage().getPageUniqueId(), getShape().getPageUniqueId())) {
            return RxjavaKt.flatMapIf(ComputeBoxListActionsKt.findVisibleBoxInfoByNotePageId(this, getShape().getPageUniqueId(), true), new Function1<FindVisibleBoxInfoByNotePageIdRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$updateNotePageIfNeed$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.getVirtualPageBoxInfo() != null);
                }
            }, new Function1<FindVisibleBoxInfoByNotePageIdRequest, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$updateNotePageIfNeed$2

                /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction$updateNotePageIfNeed$2$a */
                /* loaded from: classes8.dex */
                public static final class C10228a<T> implements Consumer {

                    /* renamed from: e */
                    public final /* synthetic */ HitTestTextShapeAction f51121e;

                    public C10228a(HitTestTextShapeAction hitTestTextShapeAction) {
                        this.f51121e = hitTestTextShapeAction;
                    }

                    @Override // io.reactivex.rxjava3.functions.Consumer
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final void accept(@NotNull NotePage it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        this.f51121e.m40439o(it2);
                    }
                }

                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Observable<? extends Object> invoke(@NotNull FindVisibleBoxInfoByNotePageIdRequest request) {
                    Intrinsics.checkNotNullParameter(request, "request");
                    EditorBundle editorBundle = HitTestTextShapeAction.this.getEditorBundle();
                    BoxInfo virtualPageBoxInfo = request.getVirtualPageBoxInfo();
                    Intrinsics.checkNotNull(virtualPageBoxInfo);
                    Observable<NotePage> doOnNext = new EnsureNotePageAction(editorBundle, virtualPageBoxInfo).build().doOnNext(new C10228a(HitTestTextShapeAction.this));
                    Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                    return doOnNext;
                }
            });
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: o */
    public final void m40439o(NotePage notePage) {
        setNotePage(notePage);
        this.renderContext.getRenderMeasure().setPageInfo(notePage.getPageInfo());
    }

    public final void setCreateNew(boolean z) {
        this.createNew = z;
    }

    public final void setHitTestSelectedShapes(boolean z) {
        this.isHitTestSelectedShapes = z;
    }

    public final void setNotePage(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<set-?>");
        this.notePage = notePage;
    }

    public final void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }
}
