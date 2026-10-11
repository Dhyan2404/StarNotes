package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.LooperKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.PendingAddShapeArgs;
import com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager;
import com.onyx.android.sdk.note.common.event.AddShapesEvent;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.shape.DefaultShapeGuideLineHandler;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.extension.PaintKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.data.FlushShapeReference;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgs;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.extension.CrossPageShapesKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.onyx.android.sdk.universal.editor.helper.EditorDataProxy;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002rsB\u001f\u0012\u0006\u0010m\u001a\u00020l\u0012\u0006\u0010o\u001a\u00020n\u0012\u0006\u0010K\u001a\u00020H¢\u0006\u0004\bp\u0010qJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J*\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001f0$2\u0006\u0010 \u001a\u00020\u001f2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00130\"H\u0002J(\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001f0$2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00132\b\b\u0002\u0010&\u001a\u00020\u0006H\u0002J*\u0010-\u001a\u0006\u0012\u0002\b\u00030$2\u0006\u0010(\u001a\u00020\u001f2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040)2\u0006\u0010,\u001a\u00020+H\u0002J(\u00100\u001a\u0006\u0012\u0002\b\u00030$2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040)2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00040)H\u0002J\b\u00101\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0013H\u0002J\b\u00104\u001a\u000203H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0002J\u0010\u00108\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u000205H\u0002J\u0010\u0010;\u001a\u0002052\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010<\u001a\u00020\u0006H\u0002J\u0010\u0010=\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010?\u001a\u00020>2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00000$H\u0016J\u000e\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00000$H\u0014J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010C\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0006\u0010E\u001a\u00020\u0002J\u0006\u0010F\u001a\u00020\u0002J\u0006\u0010G\u001a\u00020\u0002R\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010\u001c\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010S\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010RR\u001a\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00150T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010UR\u001c\u0010X\u001a\b\u0012\u0004\u0012\u00020W0T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010UR&\u0010\\\u001a\u0012\u0012\u0004\u0012\u0002050Yj\b\u0012\u0004\u0012\u000205`Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010[R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010d\u001a\u00020a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\"\u0010k\u001a\u00020e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010;\u001a\u0004\bg\u0010h\"\u0004\bi\u0010j¨\u0006t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "onDispose", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "J", "w", "v", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "L", "N", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "S", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;", "z", "K", "x", "p", "P", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "virtualBoxInfo", "flushShape", "q", "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "M", "", Constant.MAP_TAG, "Lio/reactivex/rxjava3/core/Observable;", C4921e.f26528e, "addToCmdStack", "r", OcrValues.LANG_ITALIAN, "", "shapeList", "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;", "args", "E", "currentDrawShapeList", "hitTestShapeList", "F", "B", "A", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "H", "", NotificationCompat.CATEGORY_MESSAGE, "log", "Q", "renderKey", "R", "I", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "T", "", "G", PrivilegedApp.f6529f, BaiduYunConstant.CREATE, "onTouchDown", "onTouchMove", "onTouchUp", "clearShapeRenderer", "flushPendingShapes", "clearPendingShapes", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "shapeShaderManager", "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "m", "Lcom/onyx/android/sdk/note/common/shape/Shape;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;", "lowLatencyShapeFlushInfo", "", "Ljava/util/List;", "crossPageLowLatencyShapeFlushInfoList", "Lcom/onyx/android/sdk/note/common/data/shape/PendingAddShapeArgs;", "pendingAddShapeList", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "Ljava/util/HashSet;", "rendererKeySet", "Landroid/graphics/Matrix;", "s", "Landroid/graphics/Matrix;", "noteNormalizeMatrix", "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;", "t", "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;", "shapeGuideLineHandler", "", "u", "getShapeDrawingModel", "()I", "setShapeDrawingModel", "(I)V", "shapeDrawingModel", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V", "Companion", "a", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,505:1\n766#2:506\n857#2,2:507\n766#2:509\n857#2,2:510\n1855#2:512\n1856#2:517\n1855#2,2:518\n1855#2,2:520\n1855#2,2:522\n1855#2,2:524\n1855#2,2:526\n125#3:513\n152#3,3:514\n*S KotlinDebug\n*F\n+ 1 ShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction\n*L\n223#1:506\n223#1:507,2\n230#1:509\n230#1:510,2\n231#1:512\n231#1:517\n243#1:518,2\n258#1:520,2\n427#1:522,2\n462#1:524,2\n466#1:526,2\n233#1:513\n233#1:514,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeDrawingHandlerAction extends BaseShapeHandlerAction<ShapeDrawingHandlerAction> {
    public static final int SHAPE_DRAWING_IGNORE_SINGLE_TAP_MODE = 1;
    public static final int SHAPE_DRAWING_NORMAL_MODE = 0;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final ShapeShaderManager shapeShaderManager;

    /* renamed from: l, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: m, reason: from kotlin metadata */
    public Shape shape;

    /* renamed from: n, reason: from kotlin metadata */
    public RenderContext renderContext;

    /* renamed from: o, reason: from kotlin metadata */
    public ShapeFlushInfo lowLatencyShapeFlushInfo;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final List<ShapeFlushInfo> crossPageLowLatencyShapeFlushInfoList;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public List<PendingAddShapeArgs> pendingAddShapeList;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public HashSet<String> rendererKeySet;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public Matrix noteNormalizeMatrix;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public ShapeGuideLineHandler shapeGuideLineHandler;

    /* renamed from: u, reason: from kotlin metadata */
    public int shapeDrawingModel;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$a */
    /* loaded from: classes8.dex */
    public final class C9281a implements RenderManager.Renderer {

        /* renamed from: e */
        @NotNull
        public final RenderContext f49376e;

        /* renamed from: f */
        @NotNull
        public final Shape f49377f;

        /* renamed from: g */
        public final /* synthetic */ ShapeDrawingHandlerAction f49378g;

        public C9281a(@NotNull ShapeDrawingHandlerAction shapeDrawingHandlerAction, @NotNull RenderContext renderContext, Shape shape) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
            Intrinsics.checkNotNullParameter(shape, "shape");
            this.f49378g = shapeDrawingHandlerAction;
            this.f49376e = renderContext;
            this.f49377f = shape;
        }

        @NotNull
        /* renamed from: a */
        public final RenderContext m38665a() {
            return this.f49376e;
        }

        @NotNull
        /* renamed from: b */
        public final Shape m38666b() {
            return this.f49377f;
        }

        @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
        public void onDraw(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            this.f49376e.updateCanvas(canvas);
            this.f49377f.lowLatencyRender(this.f49376e);
            this.f49378g.shapeGuideLineHandler.render(this.f49376e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9283b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f49381e;

        public C9283b(AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
            this.f49381e = addShapesBackgroundResultBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddShapesBackgroundResultBean apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49381e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9284c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map<Shape, BoxInfo> f49383f;

        public C9284c(Map<Shape, BoxInfo> map) {
            this.f49383f = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShapeDrawingHandlerAction.this.m38657o(it2, this.f49383f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9285d<T> implements Consumer {
        public C9285d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeDrawingHandlerAction.this.m38649M(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9286e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f49386f;

        /* renamed from: g */
        public final /* synthetic */ ForceRenderNoteDirtyArgs f49387g;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$e$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ AddShapesBackgroundResultBean f49388e;

            public a(AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
                this.f49388e = addShapesBackgroundResultBean;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final AddShapesBackgroundResultBean apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49388e;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C9286e(List<? extends Shape> list, ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs) {
            this.f49386f = list;
            this.f49387g = forceRenderNoteDirtyArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull AddShapesBackgroundResultBean result) {
            Intrinsics.checkNotNullParameter(result, "result");
            return ShapeDrawingHandlerAction.this.m38641E(result, this.f49386f, this.f49387g).map(new a(result));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9287f<T> implements Consumer {
        public C9287f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeDrawingHandlerAction.this.m38650N(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9288g<T, R> implements Function {
        public C9288g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShapeDrawingHandlerAction apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShapeDrawingHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9289h<T, R> implements Function {

        /* renamed from: e */
        public static final C9289h<T, R> f49391e = new C9289h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9290i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49392e;

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f49393f;

        /* renamed from: g */
        public final /* synthetic */ ShapeDrawingHandlerAction f49394g;

        /* JADX WARN: Multi-variable type inference failed */
        public C9290i(List<? extends Shape> list, List<? extends Shape> list2, ShapeDrawingHandlerAction shapeDrawingHandlerAction) {
            this.f49392e = list;
            this.f49393f = list2;
            this.f49394g = shapeDrawingHandlerAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<? extends Shape> it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.f49392e);
            List list = mutableList;
            CollectionKt.safeAddAll(list, this.f49393f);
            CollectionKt.safeAddAll(list, it2);
            return ForceRenderSliceListActionsKt.forceRenderIntersectsNoteDirtyRectToDisplay(this.f49394g, mutableList);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeDrawingHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader, @NotNull ShapeShaderManager shapeShaderManager) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        Intrinsics.checkNotNullParameter(shapeShaderManager, "shapeShaderManager");
        this.shapeShaderManager = shapeShaderManager;
        this.crossPageLowLatencyShapeFlushInfoList = new ArrayList();
        this.pendingAddShapeList = new ArrayList();
        this.rendererKeySet = new HashSet<>();
        this.noteNormalizeMatrix = new Matrix();
        this.shapeGuideLineHandler = DefaultShapeGuideLineHandler.INSTANCE;
    }

    /* renamed from: s */
    public static /* synthetic */ Observable m38633s(ShapeDrawingHandlerAction shapeDrawingHandlerAction, Shape shape, BoxInfo boxInfo, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return shapeDrawingHandlerAction.m38660r(shape, boxInfo, z);
    }

    /* renamed from: t */
    public static final void m38634t(ShapeDrawingHandlerAction this$0, List shapeList, AddShapesBackgroundResultBean it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shapeList, "$shapeList");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new AddShapesEvent(shapeList));
    }

    /* renamed from: u */
    public static final void m38635u(ShapeDrawingHandlerAction this$0, Shape shape, ForceRenderNoteDirtyArgs args, AddShapesBackgroundResultBean it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shape, "$shape");
        Intrinsics.checkNotNullParameter(args, "$args");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m38644H().removeVerifyId(shape, args.getVirtualPageBoxInfo());
    }

    /* renamed from: y */
    public static final void m38636y(ShapeDrawingHandlerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onDispose();
    }

    /* renamed from: A */
    public final RenderContext m38637A(BoxInfo virtualBoxInfo) {
        Paint paint = new Paint();
        PaintKt.updateShapeDrawPaintStyle(paint);
        RenderContext renderContext = new RenderContext(paint, BoxInfoUtils.INSTANCE.noteRenderMatrix(virtualBoxInfo));
        renderContext.setShapeShaderManager(this.shapeShaderManager);
        renderContext.getPaint().setColor(EditorBundleKt.uiDrawingArgs(getEditorBundle()).getStrokeColor());
        return renderContext;
    }

    /* renamed from: B */
    public final void m38638B() {
        BoxInfo boxInfo = this.virtualBoxInfo;
        RenderContext renderContext = null;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        RenderContext m38637A = m38637A(boxInfo);
        this.renderContext = m38637A;
        ShapeGuideLineHandler shapeGuideLineHandler = this.shapeGuideLineHandler;
        if (m38637A == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
        } else {
            renderContext = m38637A;
        }
        shapeGuideLineHandler.updateRenderContext(renderContext);
    }

    /* renamed from: C */
    public final void m38639C(TouchData touchData) {
        NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
        TouchEventTransformer rulerTransformHandler = EditorBundleKt.handlerManager(getEditorBundle()).getRulerTransformHandler();
        if (rulerTransformHandler != null) {
            uiDrawingArgs = rulerTransformHandler.processPenArgs(uiDrawingArgs, touchData);
        }
        ShapeUtils shapeUtils = ShapeUtils.INSTANCE;
        RenderContext renderContext = this.renderContext;
        Shape shape = null;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        Shape createFreeShape = shapeUtils.createFreeShape(uiDrawingArgs, renderContext);
        this.shape = createFreeShape;
        if (createFreeShape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            createFreeShape = null;
        }
        createFreeShape.ensureShapeUniqueId();
        Shape shape2 = this.shape;
        if (shape2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape2 = null;
        }
        Shape shape3 = this.shape;
        if (shape3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape3 = null;
        }
        shape2.setStrokeWidth(m38643G(shape3));
        Shape shape4 = this.shape;
        if (shape4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape4 = null;
        }
        ShapeGuideLineHandler createGuideLineHandler = shape4.createGuideLineHandler();
        this.shapeGuideLineHandler = createGuideLineHandler;
        RenderContext renderContext2 = this.renderContext;
        if (renderContext2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext2 = null;
        }
        createGuideLineHandler.updateRenderContext(renderContext2);
        int currentShapeType = uiDrawingArgs.getCurrentShapeType();
        if (currentShapeType != 15) {
            if (currentShapeType != 39) {
                return;
            }
            Shape shape5 = this.shape;
            if (shape5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shape");
                shape5 = null;
            }
            PenArgs penArgs = uiDrawingArgs.getPenArgs();
            int subShapeType = penArgs != null ? penArgs.getSubShapeType() : 7;
            PenArgs penArgs2 = uiDrawingArgs.getPenArgs();
            String tapeFillStyle = penArgs2 != null ? penArgs2.getTapeFillStyle() : null;
            if (tapeFillStyle == null) {
                tapeFillStyle = "";
            }
            ShapePersistOptionsKt.setTapeSubShapeType(shape5, subShapeType, tapeFillStyle);
            return;
        }
        Shape shape6 = this.shape;
        if (shape6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape6 = null;
        }
        PenArgs penArgs3 = uiDrawingArgs.getPenArgs();
        ShapePersistOptionsKt.setRoundCorner(shape6, penArgs3 != null ? penArgs3.getRoundCorner() : true);
        Shape shape7 = this.shape;
        if (shape7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape7 = null;
        }
        EditorBundle editorBundle = getEditorBundle();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        ShapePersistOptionsKt.setUnderContent(shape7, !EditorBundleKt.isCurDarkTheme(editorBundle, boxInfo.getId()));
        Shape shape8 = this.shape;
        if (shape8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape8 = null;
        }
        ShapePersistOptionsKt.setBottom(shape8, true);
        Shape shape9 = this.shape;
        if (shape9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
        } else {
            shape = shape9;
        }
        PenArgs penArgs4 = uiDrawingArgs.getPenArgs();
        ShapePersistOptionsKt.setSubShapeType(shape, penArgs4 != null ? penArgs4.getSubShapeType() : -1);
    }

    /* renamed from: D */
    public final boolean m38640D() {
        return filterByFingerGesture(new Function1<HandlerManager, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$filterByFingerGesture$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HandlerManager it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isLongPress() || it2.hasMultiplePoint());
            }
        });
    }

    /* renamed from: E */
    public final Observable<?> m38641E(AddShapesBackgroundResultBean it2, List<? extends Shape> shapeList, ForceRenderNoteDirtyArgs args) {
        List<? extends Shape> mutableList;
        if (!it2.canAddShape() && it2.getIsSingleTap()) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2.getHitTestSupportSingleTapShapeList());
            mutableList.addAll(shapeList);
            args.setPageDisplayRectF(ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(mutableList, args.getVirtualPageBoxInfo()));
            log("Render, forceRenderNoteDirtyRect111");
            return m38642F(shapeList, it2.getHitTestSupportSingleTapShapeList());
        }
        if (!it2.getHasBottomUnderContentShape() && !it2.getForceRenderNoteDirtyRectToDisplay()) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        log("Render, forceRenderNoteDirtyRect222, " + it2.getHasBottomUnderContentShape() + ", " + it2.getForceRenderNoteDirtyRectToDisplay());
        return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(this, args);
    }

    /* renamed from: F */
    public final Observable<?> m38642F(List<? extends Shape> currentDrawShapeList, List<? extends Shape> hitTestShapeList) {
        Observable<?> flatMap = new GetReferenceShapeAction(getEditorBundle(), hitTestShapeList).build().map(C9289h.f49391e).flatMap(new C9290i(currentDrawShapeList, hitTestShapeList, this));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: G */
    public final float m38643G(Shape shape) {
        EditorDataProxy editorDataProxy = EditorBundleKt.handlerManager(getEditorBundle()).getEditorDataProxy();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        return editorDataProxy.getAdaptiveStrokeWidth(boxInfo, shape.getStrokeWidth());
    }

    /* renamed from: H */
    public final RenderManager m38644H() {
        return EditorBundleKt.renderManager(getEditorBundle());
    }

    /* renamed from: I */
    public final String m38645I(Shape shape) {
        return RenderManager.RENDER_KEY_SHAPE_DRAWING + shape.getShapeUniqueId();
    }

    /* renamed from: J */
    public final boolean m38646J(Shape shape) {
        boolean isStrokeConverted = getEditorBundle().getAiBundle().isStrokeConverted(shape.getDownPoint().getTimestamp());
        if (isStrokeConverted) {
            Debug.INSTANCE.m32035d(ShapeDrawingHandlerAction.class, "is converted", new Object[0]);
        }
        return isStrokeConverted;
    }

    /* renamed from: K */
    public final void m38647K(TouchData touchData) {
        List listOf;
        List listOf2;
        Shape shape = this.shape;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        if (m38656T(shape)) {
            BoxInfo boxInfo = this.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            if (!hitNoteInside(touchData, boxInfo)) {
                List<BoxInfo> visibleBoxList = EditorBundleKt.visibleBoxList(getEditorBundle());
                ArrayList arrayList = new ArrayList();
                for (Object obj : visibleBoxList) {
                    final BoxInfo boxInfo2 = (BoxInfo) obj;
                    if (!CollectionKt.contains(this.crossPageLowLatencyShapeFlushInfoList, new Function1<ShapeFlushInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$lowLatencyFlushToPage$hitBoxList$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull ShapeFlushInfo it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            return Boolean.valueOf(Intrinsics.areEqual(it2.getVirtualPageBoxInfo().getId(), BoxInfo.this.getId()));
                        }
                    })) {
                        arrayList.add(obj);
                    }
                }
                if (CollectionKt.isNonBlank(arrayList)) {
                    Shape shape2 = this.shape;
                    if (shape2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("shape");
                        shape2 = null;
                    }
                    shape2.updateShapeRect();
                    ShapeRectUtils shapeRectUtils = ShapeRectUtils.INSTANCE;
                    Shape shape3 = this.shape;
                    if (shape3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("shape");
                        shape3 = null;
                    }
                    BoxInfo boxInfo3 = this.virtualBoxInfo;
                    if (boxInfo3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                        boxInfo3 = null;
                    }
                    RectF boundingScreenRectWithWidth = shapeRectUtils.getBoundingScreenRectWithWidth(shape3, boxInfo3);
                    ArrayList<BoxInfo> arrayList2 = new ArrayList();
                    for (Object obj2 : arrayList) {
                        if (RectF.intersects(((BoxInfo) obj2).getVisibleRect(), boundingScreenRectWithWidth)) {
                            arrayList2.add(obj2);
                        }
                    }
                    for (BoxInfo boxInfo4 : arrayList2) {
                        Shape shape4 = this.shape;
                        if (shape4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("shape");
                            shape4 = null;
                        }
                        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape4);
                        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(boxInfo4);
                        BoxInfo boxInfo5 = this.virtualBoxInfo;
                        if (boxInfo5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                            boxInfo5 = null;
                        }
                        Map<Shape, BoxInfo> createCrossPageShapeMap = CrossPageShapesKt.createCrossPageShapeMap(listOf, listOf2, boxInfo5);
                        ArrayList arrayList3 = new ArrayList(createCrossPageShapeMap.size());
                        for (Map.Entry<Shape, BoxInfo> entry : createCrossPageShapeMap.entrySet()) {
                            RenderContext m38637A = m38637A(entry.getValue());
                            ShapeFlushInfo shapeFlushInfo = this.lowLatencyShapeFlushInfo;
                            if (shapeFlushInfo == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("lowLatencyShapeFlushInfo");
                                shapeFlushInfo = null;
                            }
                            m38637A.setPaint(com.onyx.android.sdk.base.extension.PaintKt.copy(shapeFlushInfo.getRenderContext().getPaint()));
                            arrayList3.add(m38664z(entry.getKey(), m38637A, entry.getValue()));
                        }
                        CollectionKt.safeAddAll(this.crossPageLowLatencyShapeFlushInfoList, arrayList3);
                    }
                }
            }
            Shape shape5 = this.shape;
            if (shape5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shape");
                shape5 = null;
            }
            if (shape5.readyToLowLatencyFlush()) {
                Iterator<T> it2 = this.crossPageLowLatencyShapeFlushInfoList.iterator();
                while (it2.hasNext()) {
                    m38644H().lowLatencyFlushToPage((ShapeFlushInfo) it2.next(), false);
                }
                RenderManager m38644H = m38644H();
                ShapeFlushInfo shapeFlushInfo2 = this.lowLatencyShapeFlushInfo;
                if (shapeFlushInfo2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lowLatencyShapeFlushInfo");
                    shapeFlushInfo2 = null;
                }
                RenderManager.lowLatencyFlushToPage$default(m38644H, shapeFlushInfo2, false, 2, null);
            }
        }
    }

    /* renamed from: L */
    public final TouchPoint m38648L(TouchData touchData) {
        TouchPoint copy = touchData.getTouchPoint().copy();
        copy.applyMatrix(this.noteNormalizeMatrix);
        return copy;
    }

    /* renamed from: M */
    public final void m38649M(AddShapesBackgroundResultBean result) {
        UndoRedoCommand undoRedoCommand = result.getUndoRedoCommand();
        if (undoRedoCommand != null) {
            EditorBundleKt.noteBundle(getEditorBundle()).postEvent(new CommandEvent(undoRedoCommand));
        }
    }

    /* renamed from: N */
    public final void m38650N(TouchData touchData) {
        if (m38640D()) {
            clearShapeRenderer();
            return;
        }
        m38647K(touchData);
        m38658p(touchData);
        m38644H().invalidate();
    }

    /* renamed from: O */
    public final void m38651O(TouchData touchData) {
        Shape shape = this.shape;
        BoxInfo boxInfo = null;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        shape.resetConnection();
        Shape shape2 = this.shape;
        if (shape2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape2 = null;
        }
        if (m38646J(shape2)) {
            clearShapeRenderer();
            return;
        }
        if (touchData.isFingerToolType()) {
            m38661v(shape2);
            return;
        }
        flushPendingShapes();
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo = boxInfo2;
        }
        m38659q(renderContext, boxInfo.copy(), shape2);
    }

    /* renamed from: P */
    public final void m38652P(TouchData touchData) {
        if (!EditorShapesActionsKt.isSingleTapEvent$default(getDown(), touchData, null, 0L, 12, null)) {
            m38651O(touchData);
            return;
        }
        Shape shape = this.shape;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        m38653Q(shape);
    }

    /* renamed from: Q */
    public final void m38653Q(Shape shape) {
        m38654R(m38645I(shape));
    }

    /* renamed from: R */
    public final void m38654R(String renderKey) {
        RenderManager.removeRenderer$default(m38644H(), renderKey, false, 2, null);
        this.rendererKeySet.remove(renderKey);
    }

    /* renamed from: S */
    public final void m38655S() {
        Shape shape = this.shape;
        BoxInfo boxInfo = null;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo = boxInfo2;
        }
        this.lowLatencyShapeFlushInfo = m38664z(shape, renderContext, boxInfo);
        this.crossPageLowLatencyShapeFlushInfoList.clear();
    }

    /* renamed from: T */
    public final boolean m38656T(Shape shape) {
        return shape.useLowLatencyFlush();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShapeDrawingHandlerAction> build() {
        return LooperKt.isMainThread() ? buildFast() : super.build();
    }

    public final void clearPendingShapes() {
        Iterator it2 = CollectionKt.safelyDetachList$default(this.pendingAddShapeList, 0, 0, 3, null).iterator();
        while (it2.hasNext()) {
            m38653Q(((PendingAddShapeArgs) it2.next()).getShape());
        }
        clearShapeRenderer();
    }

    public final void clearShapeRenderer() {
        List list;
        m38663x();
        list = CollectionsKt___CollectionsKt.toList(this.rendererKeySet);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            m38654R((String) it2.next());
        }
        if (CollectionKt.isNonBlank(this.rendererKeySet)) {
            LogUtils.m8166w(AnyKt.toSimpleNameString(this), "expect clearing all ShapeDrawing renderer but keySet is not empty:" + this.rendererKeySet);
            LogUtils.m8166w(AnyKt.toSimpleNameString(this), "ShapeDrawing render touchMode:" + EditorBundleKt.handlerManager(getEditorBundle()).getTouchMode());
        }
        int rendererSize = m38644H().getOtherRenderListHandler().rendererSize();
        if (rendererSize <= 0 || this.shape == null) {
            return;
        }
        EditorTouchMode touchMode = EditorBundleKt.handlerManager(getEditorBundle()).getTouchMode();
        LogUtils.m8166w(AnyKt.toSimpleNameString(this), "expect clearing all ShapeDrawing renderer but rendererList is not empty:" + rendererSize);
        LogUtils.m8166w(AnyKt.toSimpleNameString(this), "expect clearing all ShapeDrawing renderer info :" + m38644H().getOtherRenderListHandler().getDisplayDebugString());
        Object[] objArr = new Object[2];
        objArr[0] = AnyKt.toSimpleNameString(this);
        StringBuilder sb = new StringBuilder();
        sb.append("expect clearing all ShapeDrawing renderer last shapeId is:");
        Shape shape = this.shape;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        sb.append(shape.getShapeUniqueId());
        objArr[1] = sb.toString();
        LogUtils.m8166w(objArr);
        LogUtils.m8166w(AnyKt.toSimpleNameString(this), "ShapeDrawing render touchMode:" + touchMode);
        m38644H().getOtherRenderListHandler().clearRenderer();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ShapeDrawingHandlerAction> create() {
        Observable map = subscribeTouchData().doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.amm
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ShapeDrawingHandlerAction.m38636y(ShapeDrawingHandlerAction.this);
            }
        }).doOnNext(new C9287f()).map(new C9288g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void flushPendingShapes() {
        if (CollectionKt.getSize(this.pendingAddShapeList) <= 0) {
            return;
        }
        for (PendingAddShapeArgs pendingAddShapeArgs : CollectionKt.safelyDetachList$default(this.pendingAddShapeList, 0, 0, 3, null)) {
            m38659q(pendingAddShapeArgs.getRenderContext(), pendingAddShapeArgs.getVirtualPageBoxInfo(), pendingAddShapeArgs.getShape());
        }
    }

    public final int getShapeDrawingModel() {
        return this.shapeDrawingModel;
    }

    public final void log(String msg) {
    }

    /* renamed from: o */
    public final Observable<AddShapesBackgroundResultBean> m38657o(AddShapesBackgroundResultBean result, Map<Shape, BoxInfo> map) {
        if (!result.canAddShape() || CollectionKt.isNullOrEmpty(map)) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(map.entrySet()).concatMap(new ShapeDrawingHandlerAction$addCrossPageShapes$1(this, result));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<AddShapesBackgroundResultBean> map2 = RxjavaKt.takeLastOne(concatMap).map(new C9283b(result));
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    public final void onDispose() {
        clearShapeRenderer();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        BoxInfo ensureBoxInfo = touchData.ensureBoxInfo();
        this.virtualBoxInfo = ensureBoxInfo;
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        Shape shape = null;
        if (ensureBoxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            ensureBoxInfo = null;
        }
        this.noteNormalizeMatrix = boxInfoUtils.noteNormalizeMatrix(ensureBoxInfo);
        m38638B();
        m38639C(touchData);
        m38655S();
        TouchPoint m38648L = m38648L(touchData);
        this.shapeGuideLineHandler.onDown(m38648L);
        Shape shape2 = this.shape;
        if (shape2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape2 = null;
        }
        shape2.onDown(m38648L, m38648L);
        Shape shape3 = this.shape;
        if (shape3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape3 = null;
        }
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        shape3.onLowLatencyTouchData(renderContext, touchData);
        Shape shape4 = this.shape;
        if (shape4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
        } else {
            shape = shape4;
        }
        m38662w(shape);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        TouchPoint onMove = this.shapeGuideLineHandler.onMove(m38648L(touchData));
        Shape shape = this.shape;
        RenderContext renderContext = null;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        shape.onMove(onMove, onMove);
        Shape shape2 = this.shape;
        if (shape2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape2 = null;
        }
        RenderContext renderContext2 = this.renderContext;
        if (renderContext2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
        } else {
            renderContext = renderContext2;
        }
        shape2.onLowLatencyTouchData(renderContext, touchData);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        TouchPoint onMove = this.shapeGuideLineHandler.onMove(m38648L(touchData));
        Shape shape = this.shape;
        RenderContext renderContext = null;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        shape.onUp(onMove, onMove);
        this.shapeGuideLineHandler.onUp(onMove);
        Shape shape2 = this.shape;
        if (shape2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape2 = null;
        }
        RenderContext renderContext2 = this.renderContext;
        if (renderContext2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
        } else {
            renderContext = renderContext2;
        }
        shape2.onLowLatencyTouchData(renderContext, touchData);
    }

    /* renamed from: p */
    public final void m38658p(TouchData touchData) {
        if (isTouchDone(touchData)) {
            if (this.shapeDrawingModel == 1) {
                m38652P(touchData);
            } else {
                m38651O(touchData);
            }
            this.shapeDrawingModel = 0;
        }
    }

    /* renamed from: q */
    public final void m38659q(RenderContext renderContext, BoxInfo virtualBoxInfo, Shape flushShape) {
        List listOf;
        flushShape.updatePoints();
        flushShape.ensureShapeUniqueId();
        FlushShapeReference flushShapeReference = new FlushShapeReference(flushShape, 0, 2, null);
        Shape deepCopy = ShapeCopyUtils.INSTANCE.deepCopy(flushShape);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(deepCopy);
        Map<Shape, BoxInfo> createCrossPageShapeMap = CrossPageShapesKt.createCrossPageShapeMap(listOf, EditorBundleKt.visibleBoxList(getEditorBundle()), virtualBoxInfo);
        for (Map.Entry<Shape, BoxInfo> entry : createCrossPageShapeMap.entrySet()) {
            flushShapeReference.setFlushPageCount(flushShapeReference.getFlushPageCount() + 1);
            m38644H().flushShapeToPage(new ShapeFlushInfo(flushShapeReference, renderContext, entry.getValue().copy()));
        }
        m38644H().flushShapeToPage(new ShapeFlushInfo(flushShapeReference, renderContext, virtualBoxInfo.copy()));
        m38653Q(flushShape);
        m38644H().invalidate();
        m38633s(this, deepCopy, virtualBoxInfo, false, 4, null).flatMap(new C9284c(createCrossPageShapeMap)).doOnNext(new C9285d()).subscribe();
    }

    /* renamed from: r */
    public final Observable<AddShapesBackgroundResultBean> m38660r(final Shape shape, BoxInfo virtualBoxInfo, boolean addToCmdStack) {
        final List<? extends Shape> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        final ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs = new ForceRenderNoteDirtyArgs(virtualBoxInfo.copy(), ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(listOf, virtualBoxInfo), true, true, false, false, 16, null);
        Observable<AddShapesBackgroundResultBean> flatMap = RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(EditorShapesActionsKt.addShapes(this, virtualBoxInfo, listOf, addToCmdStack), new Function1<AddShapesBackgroundResultBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$addShapeObservable$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.canAddShape());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.ylm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ShapeDrawingHandlerAction.m38634t(ShapeDrawingHandlerAction.this, listOf, (AddShapesBackgroundResultBean) obj);
            }
        }), new Function1<AddShapesBackgroundResultBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$addShapeObservable$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.canAddShape());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.zlm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ShapeDrawingHandlerAction.m38635u(ShapeDrawingHandlerAction.this, shape, forceRenderNoteDirtyArgs, (AddShapesBackgroundResultBean) obj);
            }
        }).flatMap(new C9286e(listOf, forceRenderNoteDirtyArgs));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void setShapeDrawingModel(int i) {
        this.shapeDrawingModel = i;
    }

    /* renamed from: v */
    public final void m38661v(Shape shape) {
        List<PendingAddShapeArgs> list = this.pendingAddShapeList;
        RenderContext renderContext = this.renderContext;
        BoxInfo boxInfo = null;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo = boxInfo2;
        }
        list.add(new PendingAddShapeArgs(renderContext, boxInfo.copy(), shape));
    }

    /* renamed from: w */
    public final void m38662w(Shape shape) {
        String m38645I = m38645I(shape);
        this.rendererKeySet.add(m38645I);
        RenderManager m38644H = m38644H();
        RenderContext renderContext = this.renderContext;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        RenderManager.addRenderer$default(m38644H, m38645I, new C9281a(this, renderContext, shape), false, 4, null);
    }

    /* renamed from: x */
    public final void m38663x() {
        if (this.rendererKeySet.isEmpty()) {
            return;
        }
        Shape shape = this.shape;
        BoxInfo boxInfo = null;
        if (shape == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shape");
            shape = null;
        }
        if (m38656T(shape)) {
            Shape shape2 = this.shape;
            if (shape2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shape");
                shape2 = null;
            }
            shape2.updateShapeRect();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Shape shape3 = this.shape;
            if (shape3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shape");
                shape3 = null;
            }
            BoxInfo boxInfo2 = this.virtualBoxInfo;
            if (boxInfo2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            } else {
                boxInfo = boxInfo2;
            }
            linkedHashMap.put(shape3, boxInfo);
            for (ShapeFlushInfo shapeFlushInfo : this.crossPageLowLatencyShapeFlushInfoList) {
                shapeFlushInfo.getShapeReference().getShape().updateShapeRect();
                linkedHashMap.put(shapeFlushInfo.getShapeReference().getShape(), shapeFlushInfo.getVirtualPageBoxInfo());
            }
            ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(this, linkedHashMap).subscribe();
            this.crossPageLowLatencyShapeFlushInfoList.clear();
        }
    }

    /* renamed from: z */
    public final ShapeFlushInfo m38664z(Shape shape, RenderContext renderContext, BoxInfo boxInfo) {
        ShapeFlushInfo shapeFlushInfo = new ShapeFlushInfo(new FlushShapeReference(shape, 0, 2, null), renderContext, boxInfo.copy());
        shapeFlushInfo.setAddVerifyId(false);
        shapeFlushInfo.setSegmentStash(true);
        return shapeFlushInfo;
    }
}
