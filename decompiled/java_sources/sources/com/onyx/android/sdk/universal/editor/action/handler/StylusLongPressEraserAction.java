package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction;
import com.onyx.android.sdk.universal.editor.events.note.PreparePressureErasingEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartErasingArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "m", "", "l", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "getTouchData", "()Lcom/onyx/android/sdk/geometry/data/TouchData;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/TouchData;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StylusLongPressEraserAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TouchData touchData;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StylusLongPressEraserAction$a */
    /* loaded from: classes8.dex */
    public static final class C9299a<T, R> implements Function {
        public C9299a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StylusLongPressEraserAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StylusLongPressEraserAction.this.m38694n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StylusLongPressEraserAction$b */
    /* loaded from: classes8.dex */
    public static final class C9300b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49410e;

        public C9300b(TouchData touchData) {
            this.f49410e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49410e.setBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StylusLongPressEraserAction$c */
    /* loaded from: classes8.dex */
    public static final class C9301c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectF f49412f;

        public C9301c(RectF rectF) {
            this.f49412f = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyScreenRectToDisplay(StylusLongPressEraserAction.this, it2, this.f49412f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.StylusLongPressEraserAction$d */
    /* loaded from: classes8.dex */
    public static final class C9302d<T> implements Consumer {
        public C9302d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StylusLongPressEraserAction stylusLongPressEraserAction = StylusLongPressEraserAction.this;
            stylusLongPressEraserAction.m38692l(stylusLongPressEraserAction.getTouchData());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StylusLongPressEraserAction(@NotNull EditorBundle editorBundle, @NotNull TouchData touchData) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.touchData = touchData;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> flatMap = Observable.just(this).flatMap(new C9299a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final TouchData getTouchData() {
        return this.touchData;
    }

    /* renamed from: l */
    public final void m38692l(TouchData touchData) {
        if (EditorBundleKt.shapeHandlerManager(getEditorBundle()).isEraserHandler()) {
            return;
        }
        PressureDetectHandlerAction.Args restoreUserProviderDrawingArgs = !EditorBundleKt.shapeHandlerManager(getEditorBundle()).isShapeDrawingHandler() ? PressureDetectHandlerAction.Args.INSTANCE.restoreUserProviderDrawingArgs() : PressureDetectHandlerAction.Args.INSTANCE.shapeDrawingArgs();
        ShapeHandlerManager shapeHandlerManager = EditorBundleKt.shapeHandlerManager(getEditorBundle());
        shapeHandlerManager.activeShapeProvider(ShapeHandlerManager.ERASE_PROVIDER);
        BaseShapeHandler activeHandler = shapeHandlerManager.getActiveHandler();
        if (activeHandler != null) {
            activeHandler.startErasing(new StartErasingArgs(touchData, restoreUserProviderDrawingArgs.getQuitEvent()));
        }
    }

    /* renamed from: m */
    public final Observable<Object> m38693m(TouchData touchData) {
        Object first;
        TouchPointList touchPointList = new TouchPointList();
        touchPointList.add(touchData.getTouchPoint());
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) touchPointList.getPoints());
        NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
        RectF boundingRect = touchPointList.getBoundingRect();
        RectKt.expand(boundingRect, uiDrawingArgs.getEraserWidth(), uiDrawingArgs.getEraserWidth());
        Observable<R> flatMap = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, (TouchPoint) first).doOnNext(new C9300b(touchData)).flatMap(new C9301c(boundingRect));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final Observable<Object> m38694n() {
        EditorBundleKt.postEvent(getEditorBundle(), new PreparePressureErasingEvent());
        Observable<Object> doOnNext = m38693m(this.touchData).doOnNext(new C9302d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
