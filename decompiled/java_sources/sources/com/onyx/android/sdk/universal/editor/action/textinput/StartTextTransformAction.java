package com.onyx.android.sdk.universal.editor.action.textinput;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.request.selection.StartTransformRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextTransformAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;", GoogleApiAvailabilityLight.f29016b, "l", "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;", "m", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "j", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "getStartTransformBean", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "startTransformBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartTextTransformAction extends RxBaseAppAction<StartTextTransformAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean startTransformBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.StartTextTransformAction$a */
    /* loaded from: classes8.dex */
    public static final class C10231a<T, R> implements Function {
        public C10231a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartTextTransformAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTextTransformAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.StartTextTransformAction$b */
    /* loaded from: classes8.dex */
    public static final class C10232b<T, R> implements Function {
        public C10232b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull StartTextTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNotePageAction(StartTextTransformAction.this.getEditorBundle(), StartTextTransformAction.this.getVirtualBoxInfo()).create();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.StartTextTransformAction$c */
    /* loaded from: classes8.dex */
    public static final class C10233c<T> implements Predicate {
        public C10233c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Intrinsics.areEqual(StartTextTransformAction.this.m40455m().getActiveProviderName(), ShapeHandlerManager.TEXT_INPUT_PROVIDER);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.StartTextTransformAction$d */
    /* loaded from: classes8.dex */
    public static final class C10234d<T, R> implements Function {
        public C10234d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartTransformRequest> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTextTransformAction.this.m40456n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.textinput.StartTextTransformAction$e */
    /* loaded from: classes8.dex */
    public static final class C10235e<T, R> implements Function {
        public C10235e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartTextTransformAction> apply(@NotNull StartTransformRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartTextTransformAction.this.m40454l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartTextTransformAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull ShapeTransformBean startTransformBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(startTransformBean, "startTransformBean");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.startTransformBean = startTransformBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartTextTransformAction> create() {
        Observable<StartTextTransformAction> flatMap = Observable.just(this).flatMap(new C10232b()).observeOn(getMainUIScheduler()).filter(new C10233c()).flatMap(new C10234d()).flatMap(new C10235e());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final ShapeTransformBean getStartTransformBean() {
        return this.startTransformBean;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: l */
    public final Observable<StartTextTransformAction> m40454l() {
        Observable map = ForceRenderSliceListActionsKt.forceRenderIntersectsNoteDirtyRectToDisplay(this, this.startTransformBean.getTransformShapes()).map(new C10231a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final ShapeHandlerManager m40455m() {
        return getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager();
    }

    /* renamed from: n */
    public final Observable<StartTransformRequest> m40456n(NotePage notePage) {
        this.renderContext.getRenderMeasure().setPageInfo(notePage.getPageInfo());
        this.startTransformBean.setLimitRect(RectFKt.copy(this.virtualBoxInfo.getOriginRectFWithMargin()));
        this.startTransformBean.setExpandSelectionRect(false);
        StartTransformRequest startTransformRequest = new StartTransformRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.renderContext, this.virtualBoxInfo, notePage, this.startTransformBean);
        startTransformRequest.setNeedUpdateSelectionBitmap(false);
        return RxBaseAppActionKt.submitRequestToNote(this, startTransformRequest);
    }
}
