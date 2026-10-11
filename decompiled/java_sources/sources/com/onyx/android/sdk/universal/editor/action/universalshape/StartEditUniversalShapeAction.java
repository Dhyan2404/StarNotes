package com.onyx.android.sdk.universal.editor.action.universalshape;

import android.graphics.Matrix;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.events.note.UniversalShapeEditEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b \u0010!J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002R\u0014\u0010\f\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "m", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", "l", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "", "i", Constants.HASIDCALL_INDEX_SIG, "showMenu", "", "j", Constants.STRING_SIG, "currentHandlerName", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C4921e.f26537n, "Ljava/util/List;", "getReferenceShapes", "()Ljava/util/List;", "setReferenceShapes", "(Ljava/util/List;)V", "referenceShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartEditUniversalShapeAction extends RxBaseAppAction<StartEditUniversalShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final UniversalShape shape;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean showMenu;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String currentHandlerName;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> referenceShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10287a<T> implements Consumer {
        public C10287a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartEditUniversalShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartEditUniversalShapeAction startEditUniversalShapeAction = StartEditUniversalShapeAction.this;
            startEditUniversalShapeAction.currentHandlerName = EditorBundleKt.shapeHandlerManager(startEditUniversalShapeAction.getEditorBundle()).getActiveProviderName();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10288b<T, R> implements Function {
        public C10288b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartUniversalShapeAction> apply(@NotNull StartEditUniversalShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StartUniversalShapeAction(StartEditUniversalShapeAction.this.getEditorBundle(), false).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10289c<T, R> implements Function {
        public C10289c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FindVisibleBoxInfoByNotePageIdRequest> apply(@NotNull StartUniversalShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartEditUniversalShapeAction startEditUniversalShapeAction = StartEditUniversalShapeAction.this;
            return ComputeBoxListActionsKt.findVisibleBoxInfoByNotePageId$default(startEditUniversalShapeAction, startEditUniversalShapeAction.shape.getPageUniqueId(), false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10290d<T> implements Consumer {
        public C10290d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartEditUniversalShapeAction.this.m40552m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10291e<T> implements Consumer {
        public C10291e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartEditUniversalShapeAction.this.m40551l(it2.getVirtualPageBoxInfo());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C10292f<T, R> implements Function {
        public C10292f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartEditUniversalShapeAction apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartEditUniversalShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartEditUniversalShapeAction(@NotNull EditorBundle editorBundle, @NotNull UniversalShape shape, boolean z) {
        super(editorBundle);
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
        this.showMenu = z;
        this.currentHandlerName = "";
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.referenceShapes = emptyList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartEditUniversalShapeAction> create() {
        Observable<StartEditUniversalShapeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10287a()).flatMap(new C10288b()).flatMap(new C10289c()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10290d()).doOnNext(new C10291e()).map(new C10292f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Shape> getReferenceShapes() {
        return this.referenceShapes;
    }

    /* renamed from: l */
    public final void m40551l(BoxInfo virtualPageBoxInfo) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        touchPoint.mapMatrix(this.shape.getShapeMatrix());
        touchPoint.mapMatrix(virtualPageBoxInfo != null ? BoxInfoUtils.INSTANCE.noteRenderMatrix(virtualPageBoxInfo) : null);
        EditorBundleKt.postEvent(getEditorBundle(), new UniversalShapeEditEvent(this.shape, TouchPointKt.toDownTouchData$default(touchPoint, null, null, 3, null), TouchPointKt.toUpTouchData$default(touchPoint, null, null, 3, null), this.showMenu, this.referenceShapes, false));
    }

    /* renamed from: m */
    public final UniversalShape m40552m() {
        Matrix matrix = new Matrix();
        matrix.postConcat(MatrixKt.copy(this.shape.getShapeMatrix()));
        matrix.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(this.shape));
        this.shape.setShapeMatrix(matrix);
        this.shape.updateFeature();
        this.shape.updateShapeRect();
        return this.shape;
    }

    public final void setReferenceShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.referenceShapes = list;
    }
}
