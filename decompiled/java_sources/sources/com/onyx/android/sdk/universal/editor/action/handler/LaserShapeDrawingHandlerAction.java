package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.LowLatencyRenderData;
import com.onyx.android.sdk.note.common.data.shape.LaserShapeAttr;
import com.onyx.android.sdk.note.common.data.shape.LaserShapeType;
import com.onyx.android.sdk.note.common.data.shape.SingleTapTapeShapeArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.extension.PaintKt;
import com.onyx.android.sdk.note.request.SingleTapTapeShapesRequest;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.h6m;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 O2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001OB\u0017\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bM\u0010NJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\f\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001a\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002J*\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u000fH\u0002J\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002J*\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u000fH\u0002J\u0016\u0010 \u001a\u00020\r2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\"\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020!H\u0002J\u0014\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020%H\u0014J\u0006\u0010'\u001a\u00020\u0004J\u0006\u0010(\u001a\u00020\u0004J\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0004J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0003H\u0014J\u0018\u00100\u001a\u00020/2\u0006\u0010+\u001a\u00020\u00032\u0006\u0010.\u001a\u00020-H\u0016R\u0016\u00103\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00106\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u001a\u0010:\u001a\b\u0012\u0004\u0012\u00020!078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010;R\u0014\u0010=\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u001c\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00160D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010ER\u0016\u0010H\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010G¨\u0006P"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "", "onDispose", C4921e.f26528e, "dataList", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "p", "E", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "F", "Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;", "renderData", "", "alpha", "A", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "v", "Landroid/graphics/Path;", "path", "Landroid/graphics/Paint;", "paint", h6m.f71884i, "w", "u", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "s", "r", "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;", "y", "shapeAttr", "z", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "stopRendering", "addCurrentPath", "cancelCurrentPath", "startDismissTimerIf", "touchData", "onTouchDown", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "", "hitNoteInside", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "l", "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;", "laserShapeAttr", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "m", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "shapeAttrOption", "Landroid/graphics/Paint;", "blurPaint", "innerPaint", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "doneDispose", "q", "Landroid/graphics/Path;", "currentPath", "", "Ljava/util/List;", "pathList", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastPoint", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLaserShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaserShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n32#2,5:297\n1855#3,2:302\n*S KotlinDebug\n*F\n+ 1 LaserShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction\n*L\n107#1:297,5\n223#1:302,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LaserShapeDrawingHandlerAction extends BaseShapeHandlerAction<List<? extends TouchData>> {

    /* renamed from: t */
    public static final int f49187t = 3;

    /* renamed from: u */
    public static final float f49188u = 1.5f;

    /* renamed from: v */
    public static final int f49189v = 50;

    /* renamed from: k, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    public LaserShapeAttr laserShapeAttr;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final JSONObjectOption<LaserShapeAttr> shapeAttrOption;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Paint blurPaint;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Paint innerPaint;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public Disposable doneDispose;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public Path currentPath;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public List<Path> pathList;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public TouchPoint lastPoint;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9184a<T, R> implements Function {

        /* renamed from: e */
        public static final C9184a<T, R> f49199e = new C9184a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TouchData> apply(@NotNull TouchData it2) {
            List<TouchData> listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(it2);
            return listOf;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9185b<T> implements Predicate {

        /* renamed from: e */
        public static final C9185b<T> f49200e = new C9185b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9186c<T> implements Consumer {
        public C9186c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LaserShapeDrawingHandlerAction.this.m38480D(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9187d<T> implements Predicate {
        public C9187d() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LaserShapeDrawingHandlerAction.this.isTouchDone(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9188e<T> implements Consumer {
        public C9188e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LaserShapeDrawingHandlerAction.this.m38481E(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9189f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<TouchData> f49204e;

        /* renamed from: f */
        public final /* synthetic */ LaserShapeDrawingHandlerAction f49205f;

        public C9189f(List<TouchData> list, LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction) {
            this.f49204e = list;
            this.f49205f = laserShapeDrawingHandlerAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SingleTapTapeShapesRequest> apply(@NotNull LaserShapeDrawingHandlerAction it2) {
            Object last;
            Intrinsics.checkNotNullParameter(it2, "it");
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.f49204e);
            TouchPoint copy = ((TouchData) last).getTouchPoint().copy();
            LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction = this.f49205f;
            NoteBundle noteBundle = EditorBundleKt.noteBundle(laserShapeDrawingHandlerAction.getEditorBundle());
            BoxInfo boxInfo = this.f49205f.virtualBoxInfo;
            BoxInfo boxInfo2 = null;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            String id = boxInfo.getId();
            LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction2 = this.f49205f;
            BoxInfo boxInfo3 = laserShapeDrawingHandlerAction2.virtualBoxInfo;
            if (boxInfo3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            } else {
                boxInfo2 = boxInfo3;
            }
            return RxBaseAppActionKt.submitRequestToNote(laserShapeDrawingHandlerAction, new SingleTapTapeShapesRequest(noteBundle, new SingleTapTapeShapeArgs(id, laserShapeDrawingHandlerAction2.normalizeTouchPoint(boxInfo2, copy), 0.0f, 4, null)));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9190g<T> implements Consumer {
        public C9190g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LaserShapeDrawingHandlerAction.this.addCurrentPath();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9191h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<TouchData> f49208f;

        public C9191h(List<TouchData> list) {
            this.f49208f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LaserShapeDrawingHandlerAction.this.m38482F(this.f49208f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9192i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ long f49209e;

        public C9192i(long j) {
            this.f49209e = j;
        }

        @NotNull
        /* renamed from: a */
        public final Long m38499a(long j) {
            return Long.valueOf(this.f49209e - j);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38499a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$j */
    /* loaded from: classes8.dex */
    public static final class C9193j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ LowLatencyRenderData f49211f;

        public C9193j(LowLatencyRenderData lowLatencyRenderData) {
            this.f49211f = lowLatencyRenderData;
        }

        /* renamed from: a */
        public final void m38500a(long j) {
            LaserShapeDrawingHandlerAction.this.m38478A(this.f49211f, (int) j);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38500a(((Number) obj).longValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaserShapeDrawingHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.shapeAttrOption = MMKVNote.INSTANCE.getLaserShapeAttrOption();
        this.blurPaint = new Paint();
        this.innerPaint = new Paint();
        this.pathList = new ArrayList();
        this.lastPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
    }

    /* renamed from: B */
    public static /* synthetic */ void m38471B(LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction, LowLatencyRenderData lowLatencyRenderData, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 255;
        }
        laserShapeDrawingHandlerAction.m38478A(lowLatencyRenderData, i);
    }

    /* renamed from: G */
    public static final void m38472G(LaserShapeDrawingHandlerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m38484o();
    }

    /* renamed from: q */
    public static final void m38475q(LaserShapeDrawingHandlerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onDispose();
    }

    /* renamed from: t */
    public static /* synthetic */ void m38476t(LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction, Canvas canvas, TouchPoint touchPoint, Paint paint, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = 3;
        }
        laserShapeDrawingHandlerAction.m38487s(canvas, touchPoint, paint, i);
    }

    /* renamed from: x */
    public static /* synthetic */ void m38477x(LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction, Canvas canvas, Path path, Paint paint, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = 3;
        }
        laserShapeDrawingHandlerAction.m38490w(canvas, path, paint, i);
    }

    /* renamed from: A */
    public final void m38478A(final LowLatencyRenderData renderData, final int alpha) {
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_LASER, new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$lowLatencyRender$1

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes8.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[LaserShapeType.values().length];
                    try {
                        iArr[LaserShapeType.DOT.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
            public void onDraw(@NotNull Canvas canvas) {
                LaserShapeAttr laserShapeAttr;
                List list;
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                int i = alpha;
                if (i <= 50) {
                    list = this.pathList;
                    list.clear();
                    return;
                }
                this.m38483n(i);
                laserShapeAttr = this.laserShapeAttr;
                if (laserShapeAttr == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("laserShapeAttr");
                    laserShapeAttr = null;
                }
                if (WhenMappings.$EnumSwitchMapping$0[laserShapeAttr.getType().ordinal()] == 1) {
                    this.m38488u(canvas, renderData);
                } else {
                    this.m38489v(canvas, renderData);
                }
            }
        }, false, 4, null);
    }

    /* renamed from: C */
    public final void m38479C(List<TouchData> dataList) {
        Observable flatMap = Observable.just(this).flatMap(new C9189f(dataList, this));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<Object> doOnNext = RxjavaKt.flatMapIf(flatMap, new Function1<SingleTapTapeShapesRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$onSingleTapUp$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SingleTapTapeShapesRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.getHitTestTapeShapeList().isEmpty());
            }
        }, new Function1<SingleTapTapeShapesRequest, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$onSingleTapUp$3

            /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$onSingleTapUp$3$a */
            /* loaded from: classes8.dex */
            public static final class C9194a<T, R> implements Function {

                /* renamed from: e */
                public static final C9194a<T, R> f49215e = new C9194a<>();

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.mergeShapeList(true);
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$onSingleTapUp$3$b */
            /* loaded from: classes8.dex */
            public static final class C9195b<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ LaserShapeDrawingHandlerAction f49216e;

                public C9195b(LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction) {
                    this.f49216e = laserShapeDrawingHandlerAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull List<? extends Shape> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return ForceRenderSliceListActionsKt.forceRenderIntersectsNoteDirtyRectToDisplay(this.f49216e, it2);
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction$onSingleTapUp$3$c */
            /* loaded from: classes8.dex */
            public static final class C9196c<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ SingleTapTapeShapesRequest f49217e;

                public C9196c(SingleTapTapeShapesRequest singleTapTapeShapesRequest) {
                    this.f49217e = singleTapTapeShapesRequest;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final SingleTapTapeShapesRequest apply(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return this.f49217e;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull SingleTapTapeShapesRequest request) {
                Intrinsics.checkNotNullParameter(request, "request");
                LaserShapeDrawingHandlerAction.this.cancelCurrentPath();
                Observable<? extends Object> map = new GetReferenceShapeAction(LaserShapeDrawingHandlerAction.this.getEditorBundle(), request.getHitTestTapeShapeList()).build().map(C9194a.f49215e).flatMap(new C9195b(LaserShapeDrawingHandlerAction.this)).map(new C9196c(request));
                Intrinsics.checkNotNullExpressionValue(map, "map(...)");
                return map;
            }
        }).doOnNext(new C9190g()).doOnNext(new C9191h(dataList));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: D */
    public final void m38480D(List<TouchData> dataList) {
        LowLatencyRenderData m38486r = m38486r(dataList);
        LaserShapeAttr laserShapeAttr = this.laserShapeAttr;
        if (laserShapeAttr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("laserShapeAttr");
            laserShapeAttr = null;
        }
        if (laserShapeAttr.getType() != LaserShapeType.DOT) {
            m38485p(CollectionKt.ensureList(m38486r.getTouchDataList()));
        }
        m38471B(this, m38486r, 0, 2, null);
    }

    /* renamed from: E */
    public final void m38481E(List<TouchData> dataList) {
        if (isSingleTapUp(dataList)) {
            m38479C(dataList);
        } else {
            addCurrentPath();
            m38482F(dataList);
        }
    }

    /* renamed from: F */
    public final void m38482F(List<TouchData> dataList) {
        long j = 255 - 50;
        LaserShapeAttr laserShapeAttr = this.laserShapeAttr;
        if (laserShapeAttr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("laserShapeAttr");
            laserShapeAttr = null;
        }
        long duration = laserShapeAttr.getDuration() / j;
        LowLatencyRenderData m38486r = m38486r(dataList);
        Disposable disposable = this.doneDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        this.doneDispose = Observable.intervalRange(1L, j, 0L, duration, TimeUnit.MILLISECONDS).observeOn(getMainUIScheduler()).map(new C9192i(255L)).map(new C9193j(m38486r)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.cvi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LaserShapeDrawingHandlerAction.m38472G(LaserShapeDrawingHandlerAction.this);
            }
        }).subscribe();
    }

    public final void addCurrentPath() {
        Path path = this.currentPath;
        if (path != null) {
            this.pathList.add(path);
            this.currentPath = null;
        }
    }

    public final void cancelCurrentPath() {
        this.currentPath = null;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TouchData>> create() {
        Observable<List<TouchData>> doOnNext = subscribeTouchData().map(C9184a.f49199e).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.bvi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LaserShapeDrawingHandlerAction.m38475q(LaserShapeDrawingHandlerAction.this);
            }
        }).filter(C9185b.f49200e).doOnNext(new C9186c()).filter(new C9187d()).doOnNext(new C9188e());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public boolean hitNoteInside(@NotNull TouchData touchData, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        return true;
    }

    /* renamed from: n */
    public final void m38483n(int alpha) {
        this.blurPaint.setAlpha(alpha);
        this.innerPaint.setAlpha(alpha);
    }

    /* renamed from: o */
    public final void m38484o() {
        this.pathList.clear();
        cancelCurrentPath();
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_LASER, false, 2, null);
    }

    public final void onDispose() {
        stopRendering();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Disposable disposable = this.doneDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        LaserShapeAttr m38491y = m38491y();
        this.laserShapeAttr = m38491y;
        LaserShapeAttr laserShapeAttr = null;
        if (m38491y == null) {
            Intrinsics.throwUninitializedPropertyAccessException("laserShapeAttr");
            m38491y = null;
        }
        if (m38491y.isDotType()) {
            this.pathList.clear();
        }
        LaserShapeAttr laserShapeAttr2 = this.laserShapeAttr;
        if (laserShapeAttr2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("laserShapeAttr");
        } else {
            laserShapeAttr = laserShapeAttr2;
        }
        m38492z(laserShapeAttr);
        this.virtualBoxInfo = touchData.ensureBoxInfo();
    }

    /* renamed from: p */
    public final void m38485p(List<TouchData> dataList) {
        Object first;
        if (dataList.isEmpty()) {
            return;
        }
        if (this.currentPath == null) {
            this.currentPath = new Path();
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) dataList);
            TouchPoint touchPoint = ((TouchData) first).getTouchPoint();
            Path path = this.currentPath;
            Intrinsics.checkNotNull(path);
            path.moveTo(touchPoint.getX(), touchPoint.getY());
            this.lastPoint = touchPoint;
        }
        Path path2 = this.currentPath;
        Intrinsics.checkNotNull(path2);
        for (TouchData touchData : dataList) {
            PathKt.averageQuadTo(path2, this.lastPoint.getX(), this.lastPoint.getY(), touchData.getTouchPoint().getX(), touchData.getTouchPoint().getY());
            this.lastPoint = touchData.getTouchPoint();
        }
    }

    /* renamed from: r */
    public final LowLatencyRenderData m38486r(List<TouchData> dataList) {
        LowLatencyRenderData lowLatencyRenderData = new LowLatencyRenderData();
        lowLatencyRenderData.setTouchDataList(dataList);
        return lowLatencyRenderData;
    }

    /* renamed from: s */
    public final void m38487s(Canvas canvas, TouchPoint touchPoint, Paint paint, int times) {
        if (times < 0) {
            return;
        }
        int i = 0;
        while (true) {
            float x = touchPoint.getX();
            float y = touchPoint.getY();
            LaserShapeAttr laserShapeAttr = this.laserShapeAttr;
            if (laserShapeAttr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("laserShapeAttr");
                laserShapeAttr = null;
            }
            canvas.drawCircle(x, y, laserShapeAttr.getRadius(), paint);
            if (i == times) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void startDismissTimerIf() {
        List<TouchData> emptyList;
        Disposable disposable = this.doneDispose;
        boolean z = false;
        if (disposable != null && disposable.isDisposed()) {
            z = true;
        }
        if (z) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            m38482F(emptyList);
        }
    }

    public final void stopRendering() {
        Disposable disposable = this.doneDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        m38484o();
    }

    /* renamed from: u */
    public final void m38488u(Canvas canvas, LowLatencyRenderData renderData) {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) CollectionKt.ensureList(renderData.getTouchDataList()));
        TouchData touchData = (TouchData) lastOrNull;
        if (touchData == null) {
            return;
        }
        m38476t(this, canvas, touchData.getTouchPoint(), this.blurPaint, 0, 8, null);
        m38487s(canvas, touchData.getTouchPoint(), this.innerPaint, 1);
    }

    /* renamed from: v */
    public final void m38489v(Canvas canvas, LowLatencyRenderData renderData) {
        for (Path path : this.pathList) {
            m38477x(this, canvas, path, this.blurPaint, 0, 8, null);
            m38490w(canvas, path, this.innerPaint, 1);
        }
        Path path2 = this.currentPath;
        if (path2 != null) {
            m38477x(this, canvas, path2, this.blurPaint, 0, 8, null);
            m38490w(canvas, path2, this.innerPaint, 1);
        }
    }

    /* renamed from: w */
    public final void m38490w(Canvas canvas, Path path, Paint paint, int times) {
        if (times < 0) {
            return;
        }
        int i = 0;
        while (true) {
            canvas.drawPath(path, paint);
            if (i == times) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: y */
    public final LaserShapeAttr m38491y() {
        PenArgs penArgs = MMKVNote.INSTANCE.getPenArgsOption(1003).get();
        LaserShapeAttr forceGet = this.shapeAttrOption.forceGet();
        forceGet.setStrokeWidth(penArgs.getWidth());
        forceGet.setColor(penArgs.getColor());
        return forceGet;
    }

    /* renamed from: z */
    public final void m38492z(LaserShapeAttr shapeAttr) {
        PaintKt.updateShapeDrawPaintStyle(this.innerPaint);
        this.innerPaint.setColor(-1);
        this.innerPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.innerPaint.setStrokeWidth(shapeAttr.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String());
        LaserShapeType type = shapeAttr.getType();
        LaserShapeType laserShapeType = LaserShapeType.LINE;
        if (type == laserShapeType) {
            this.innerPaint.setStyle(Paint.Style.STROKE);
        }
        Paint paint = new Paint(this.innerPaint);
        this.blurPaint = paint;
        paint.setColor(shapeAttr.getColor());
        if (shapeAttr.getType() != laserShapeType) {
            this.blurPaint.setStrokeWidth(shapeAttr.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String() * 1.5f);
        }
        this.blurPaint.setMaskFilter(new BlurMaskFilter(shapeAttr.getShadowRadius(), BlurMaskFilter.Blur.OUTER));
    }
}
