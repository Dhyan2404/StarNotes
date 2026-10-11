package com.onyx.android.sdk.universal.editor.action.link;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.CreateLinkShapeRequest;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0014\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0007H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "q", "boxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", C4921e.f26528e, "notePage", "Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;", "m", AbstractLogger.REQUEST, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "p", "", "l", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateLinkShapeAction extends RxBaseAppAction<CreateLinkShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ShapeLinkBean linkBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint startPoint;

    /* renamed from: j, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9615a<T, R> implements Function {
        public C9615a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull CreateLinkShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateLinkShapeAction.this.m39380q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9616b<T, R> implements Function {
        public C9616b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateLinkShapeAction.this.m39378o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C9618d<T, R> implements Function {
        public C9618d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateLinkShapeRequest> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateLinkShapeAction.this.m39376m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C9619e<T, R> implements Function {
        public C9619e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CreateLinkShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateLinkShapeAction.this.m39377n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C9620f<T, R> implements Function {
        public C9620f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateLinkShapeAction createLinkShapeAction = CreateLinkShapeAction.this;
            BoxInfo boxInfo = createLinkShapeAction.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            return CommonEditorActionsKt.updateVirtualPage(createLinkShapeAction, boxInfo.getId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C9621g<T, R> implements Function {
        public C9621g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateLinkShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateLinkShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C9622h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CreateLinkShapeRequest f50060f;

        public C9622h(CreateLinkShapeRequest createLinkShapeRequest) {
            this.f50060f = createLinkShapeRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CreateLinkShapeRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateLinkShapeAction createLinkShapeAction = CreateLinkShapeAction.this;
            BoxInfo boxInfo = createLinkShapeAction.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(createLinkShapeAction, boxInfo, this.f50060f.getLinkShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C9623i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CreateLinkShapeRequest f50061e;

        public C9623i(CreateLinkShapeRequest createLinkShapeRequest) {
            this.f50061e = createLinkShapeRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateLinkShapeRequest apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50061e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$j */
    /* loaded from: classes8.dex */
    public static final class C9624j<T, R> implements Function {
        public C9624j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(CreateLinkShapeAction.this, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction$k */
    /* loaded from: classes8.dex */
    public static final class C9625k<T> implements Consumer {
        public C9625k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateLinkShapeAction.this.virtualBoxInfo = it2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateLinkShapeAction(@NotNull EditorBundle editorBundle, @NotNull ShapeLinkBean linkBean, @NotNull TouchPoint startPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        this.linkBean = linkBean;
        this.startPoint = startPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateLinkShapeAction> create() {
        Observable<CreateLinkShapeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C9615a()).flatMap(new C9616b()).filter(new Predicate() { // from class: com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction.c
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull NotePage p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return CreateLinkShapeAction.this.m39375l(p0);
            }
        }).flatMap(new C9618d()).flatMap(new C9619e()).flatMap(new C9620f()).map(new C9621g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m39375l(NotePage notePage) {
        if (!this.linkBean.isLinkAudioType()) {
            return true;
        }
        LinkDocBean docBean = this.linkBean.getDocBean();
        boolean areEqual = Intrinsics.areEqual(docBean != null ? docBean.getDocumentId() : null, notePage.getDocumentUniqueId());
        if (!areEqual) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.can_note_paste_audio_link, false, 2, (Object) null);
        }
        return areEqual;
    }

    /* renamed from: m */
    public final Observable<CreateLinkShapeRequest> m39376m(NotePage notePage) {
        TouchPoint touchPoint = new TouchPoint(this.startPoint);
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualBoxInfo;
        BoxInfo boxInfo2 = null;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        touchPoint.applyMatrix(boxInfoUtils.noteNormalizeMatrix(boxInfo));
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        BoxInfo boxInfo3 = this.virtualBoxInfo;
        if (boxInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo2 = boxInfo3;
        }
        CreateLinkShapeRequest createLinkShapeRequest = new CreateLinkShapeRequest(noteBundle, m39379p(boxInfo2), notePage, touchPoint, this.linkBean);
        Observable<CreateLinkShapeRequest> map = RxBaseAppActionKt.submitRequestToNote(this, createLinkShapeRequest).flatMap(new C9622h(createLinkShapeRequest)).map(new C9623i(createLinkShapeRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<?> m39377n(CreateLinkShapeRequest request) {
        List listOf;
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(request.getLinkShape());
        Observable flatMap = EditorShapesActionsKt.addCrossPageShapes(this, boxInfo, listOf, request.getCompositeCommand()).flatMap(new C9624j());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final Observable<NotePage> m39378o(BoxInfo boxInfo) {
        return new EnsureNotePageAction(getEditorBundle(), boxInfo).build();
    }

    /* renamed from: p */
    public final RenderContext m39379p(BoxInfo boxInfo) {
        RenderContext renderContext = new RenderContext(new Paint(), new Matrix());
        renderContext.getRenderMeasure().setViewPortRect(boxInfo.getOriginRectFWithMargin());
        return renderContext;
    }

    /* renamed from: q */
    public final Observable<BoxInfo> m39380q() {
        Observable<BoxInfo> doOnNext = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, this.startPoint).doOnNext(new C9625k());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
