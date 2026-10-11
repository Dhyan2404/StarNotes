package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.render.LowLatencyRenderData;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.AddShapesBackgroundArgs;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesAction;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import com.onyx.android.sdk.universal.editor.data.FlushShapeReference;
import com.onyx.android.sdk.universal.editor.data.ShapeFlushInfo;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.note.AppendShapeDownPointEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnablePressureEraserEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideUniversalShapeSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowUniversalShapeSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.UniversalShapeEditEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.helper.UniversalShapeEditor;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u00020\u0004B\u0017\u0012\u0006\u0010{\u001a\u00020z\u0012\u0006\u0010}\u001a\u00020|¢\u0006\u0004\b~\u0010\u007fJ\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J \u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u001e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0003H\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0002J\b\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0014H\u0002J\b\u0010!\u001a\u00020\u0006H\u0002J\b\u0010\"\u001a\u00020\u0006H\u0002J\b\u0010#\u001a\u00020\u0006H\u0002J\b\u0010$\u001a\u00020\u0006H\u0002J\b\u0010%\u001a\u00020\u0006H\u0002J\u0010\u0010'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u000bH\u0002J \u0010-\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010,\u001a\u00020+H\u0002J\u001c\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0\u00020\u000f2\u0006\u0010/\u001a\u00020.H\u0002J.\u00105\u001a\b\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u00102\u001a\u0002012\u000e\b\u0002\u00104\u001a\b\u0012\u0004\u0012\u00020(03H\u0002J,\u00107\u001a\b\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u00102\u001a\u0002012\f\u00106\u001a\b\u0012\u0004\u0012\u00020(03H\u0002J*\u0010:\u001a\u0006\u0012\u0002\b\u00030\u000f2\u0006\u00109\u001a\u0002082\u0006\u00102\u001a\u0002012\f\u00106\u001a\b\u0012\u0004\u0012\u00020(03H\u0002J\u0014\u0010<\u001a\u0006\u0012\u0002\b\u00030\u000f2\u0006\u0010;\u001a\u000208H\u0002J2\u0010@\u001a\b\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00102\b\b\u0002\u0010>\u001a\u00020=2\b\b\u0002\u0010?\u001a\u00020\u000bH\u0002J \u0010C\u001a\b\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010B\u001a\u00020A2\b\b\u0002\u0010>\u001a\u00020=H\u0002J\u001e\u0010E\u001a\u00020A2\u0006\u0010*\u001a\u00020\u00102\f\u0010D\u001a\b\u0012\u0004\u0012\u00020(0\u0002H\u0002J\u0010\u0010F\u001a\u00020\u00062\u0006\u00102\u001a\u000201H\u0002J\b\u0010H\u001a\u00020GH\u0002J \u0010L\u001a\u00020\u00062\u0006\u0010I\u001a\u00020G2\u0006\u0010J\u001a\u00020\u00102\u0006\u0010K\u001a\u00020+H\u0002J\u0012\u0010N\u001a\u00020\u00062\b\b\u0002\u0010M\u001a\u00020\u000bH\u0002J\u0014\u0010O\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u000fH\u0014J\u000e\u0010R\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020PJ\u0018\u0010S\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0010H\u0016J\b\u0010T\u001a\u00020\u0006H\u0016J\u0018\u0010U\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0010H\u0016J\u0010\u0010V\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003H\u0014J\u0006\u0010W\u001a\u00020\u000bJ\u0006\u0010X\u001a\u00020\u000bJ\u0006\u0010Y\u001a\u00020\u000bJ\u000e\u0010[\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020ZJ\u000e\u0010^\u001a\u00020\u00062\u0006\u0010]\u001a\u00020\\J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u000bJ\u0010\u0010a\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003H\u0014J\u0006\u0010b\u001a\u00020\u0006J\u001a\u0010c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0\u00020\u000f2\u0006\u0010&\u001a\u00020\u000bJ\u0006\u0010d\u001a\u00020\u0010J\u0006\u0010e\u001a\u00020\u0006J\u0010\u0010h\u001a\u00020\u00062\u0006\u0010g\u001a\u00020fH\u0016J\u0006\u0010i\u001a\u00020\u0006R\u0016\u0010I\u001a\u00020G8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010n\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0016\u0010q\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010v\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\b7\u0010FR\u0014\u0010w\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\b:\u0010FR\u0014\u0010x\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\b0\u0010FR\u0014\u0010y\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0006\n\u0004\bC\u0010F¨\u0006\u0080\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;", "dataList", "", "H", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "universalShape", "upTouchData", "", "editImmediately", "E", "touchData", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "B", "T", "A", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPointInPage", "isStylus", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "touchPoint", "F", "isSingleTapUp", "G", "", "S", "K", "downPointInRender", "U", "x", "N", "J", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "w", "switchProvider", "L", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "virtualBoxInfo", "Landroid/graphics/Matrix;", "boxMatrix", "z", "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;", "snapshot", "q", "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "removedShapeList", "Q", "addedShapeList", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;", "crossPageShapeAction", "p", "action", "W", "Landroid/graphics/RectF;", "shapeRectF", "addToCmdStack", "s", "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;", "addShapeArgs", "r", "shapeList", "y", "I", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "createRenderContext", "renderContext", "virtualPageBoxInfo", "shapeEditorBoxMatrix", "X", "invalidate", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, BaiduYunConstant.CREATE, "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "onInterceptTouchDown", "dispose", "onTouchContentOutside", "onTouchMove", "isEditMode", "isUndefinedMode", "isUndefinedTransformAction", "Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;", "onShapeEdit", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "attr", "updateShapeAttr", "showMenu", "setShowMenu", "onTouchDown", "cancelEdit", "quitEditObservable", "getPageBoxInfo", "updateRenderContext", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "onThemeUpdated", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "l", "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;", "shapeEditor", "m", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isEnabledShowMenu", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", GoogleApiAvailabilityLight.f29016b, "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "CONTINUE_EDIT", "CREATE_FIRST", "CREATE_NEXT", "EXIT_EDIT", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUniversalShapeEditAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeEditAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,571:1\n2634#2:572\n288#2,2:574\n1#3:573\n1#3:581\n32#4,5:576\n*S KotlinDebug\n*F\n+ 1 UniversalShapeEditAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction\n*L\n110#1:572\n183#1:574,2\n110#1:573\n410#1:576,5\n*E\n"})
/* loaded from: classes8.dex */
public final class UniversalShapeEditAction extends BaseShapeHandlerAction<List<? extends TouchData>> implements RenderManager.Renderer {

    /* renamed from: k, reason: from kotlin metadata */
    public RenderContext renderContext;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public UniversalShapeEditor shapeEditor;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isEnabledShowMenu;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: o, reason: from kotlin metadata */
    public final int CONTINUE_EDIT;

    /* renamed from: p, reason: from kotlin metadata */
    public final int CREATE_FIRST;

    /* renamed from: q, reason: from kotlin metadata */
    public final int CREATE_NEXT;

    /* renamed from: r, reason: from kotlin metadata */
    public final int EXIT_EDIT;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$a */
    /* loaded from: classes8.dex */
    public static final class C9350a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UpdateCrossPageShapesAction f49520e;

        public C9350a(UpdateCrossPageShapesAction updateCrossPageShapesAction) {
            this.f49520e = updateCrossPageShapesAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateCrossPageShapesAction apply(@NotNull Map<Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49520e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$a0 */
    /* loaded from: classes8.dex */
    public static final class C9351a0<T> implements Consumer {
        public C9351a0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.m38801A();
            UniversalShapeEditAction.this.isEnabledShowMenu = false;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$b */
    /* loaded from: classes8.dex */
    public static final class C9352b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ AddShapesBackgroundResultBean f49523f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f49524g;

        public C9352b(AddShapesBackgroundResultBean addShapesBackgroundResultBean, List<Shape> list) {
            this.f49523f = addShapesBackgroundResultBean;
            this.f49524g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull UpdateCrossPageShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UniversalShapeEditAction.this.m38822p(it2, this.f49523f, this.f49524g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$b0 */
    /* loaded from: classes8.dex */
    public static final class C9353b0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49525e;

        public C9353b0(List<Shape> list) {
            this.f49525e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.addIfNotContains((Collection) this.f49525e, (Collection) it2.getReferenceShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$c */
    /* loaded from: classes8.dex */
    public static final class C9354c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f49526e;

        public C9354c(AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
            this.f49526e = addShapesBackgroundResultBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddShapesBackgroundResultBean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49526e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$c0 */
    /* loaded from: classes8.dex */
    public static final class C9355c0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f49527e;

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f49528f;

        public C9355c0(AddShapesBackgroundResultBean addShapesBackgroundResultBean, List<Shape> list) {
            this.f49527e = addShapesBackgroundResultBean;
            this.f49528f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UndoRedoCommand undoRedoCommand = this.f49527e.getUndoRedoCommand();
            if (undoRedoCommand != null) {
                undoRedoCommand.removeShapes(this.f49528f);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$d */
    /* loaded from: classes8.dex */
    public static final class C9356d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Map<Shape, BoxInfo> f49529e;

        public C9356d(Map<Shape, BoxInfo> map) {
            this.f49529e = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map.Entry<Shape, BoxInfo>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(this.f49529e.entrySet());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$d0 */
    /* loaded from: classes8.dex */
    public static final class C9357d0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ AddShapesBackgroundResultBean f49530e;

        public C9357d0(AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
            this.f49530e = addShapesBackgroundResultBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddShapesBackgroundResultBean apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49530e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$e */
    /* loaded from: classes8.dex */
    public static final class C9358e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f49532f;

        /* renamed from: g */
        public final /* synthetic */ AddShapesBackgroundResultBean f49533g;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$e$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f49534e;

            /* renamed from: f */
            public final /* synthetic */ Map.Entry<Shape, BoxInfo> f49535f;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<Shape> list, Map.Entry<? extends Shape, BoxInfo> entry) {
                this.f49534e = list;
                this.f49535f = entry;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f49534e.add(this.f49535f.getKey());
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$e$b */
        /* loaded from: classes8.dex */
        public static final class b<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ AddShapesBackgroundResultBean f49536e;

            /* renamed from: f */
            public final /* synthetic */ Map.Entry<Shape, BoxInfo> f49537f;

            /* JADX WARN: Multi-variable type inference failed */
            public b(AddShapesBackgroundResultBean addShapesBackgroundResultBean, Map.Entry<? extends Shape, BoxInfo> entry) {
                this.f49536e = addShapesBackgroundResultBean;
                this.f49537f = entry;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                UndoRedoCommand undoRedoCommand = this.f49536e.getUndoRedoCommand();
                if (undoRedoCommand != null) {
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f49537f.getKey());
                    undoRedoCommand.addShapes(listOf);
                }
            }
        }

        public C9358e(List<Shape> list, AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
            this.f49532f = list;
            this.f49533g = addShapesBackgroundResultBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull Map.Entry<? extends Shape, BoxInfo> entry) {
            List listOf;
            Intrinsics.checkNotNullParameter(entry, "entry");
            UniversalShapeEditAction universalShapeEditAction = UniversalShapeEditAction.this;
            BoxInfo value = entry.getValue();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(entry.getKey());
            return UniversalShapeEditAction.m38798t(universalShapeEditAction, universalShapeEditAction.m38828y(value, listOf), null, 2, null).doOnNext(new a(this.f49532f, entry)).doOnNext(new b(this.f49533g, entry));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$f */
    /* loaded from: classes8.dex */
    public static final class C9359f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Shape f49539f;

        /* renamed from: g */
        public final /* synthetic */ RectF f49540g;

        public C9359f(Shape shape, RectF rectF) {
            this.f49539f = shape;
            this.f49540g = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction universalShapeEditAction = UniversalShapeEditAction.this;
            Shape shape = this.f49539f;
            RectF rectF = this.f49540g;
            if (rectF == null) {
                rectF = new RectF();
            }
            return UniversalShapeEditAction.m38799u(universalShapeEditAction, shape, it2, rectF, false, 8, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$g */
    /* loaded from: classes8.dex */
    public static final class C9360g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49541e;

        /* renamed from: f */
        public final /* synthetic */ Shape f49542f;

        public C9360g(List<Shape> list, Shape shape) {
            this.f49541e = list;
            this.f49542f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49541e.add(this.f49542f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$h */
    /* loaded from: classes8.dex */
    public static final class C9361h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ UniversalShape f49544f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f49545g;

        public C9361h(UniversalShape universalShape, List<Shape> list) {
            this.f49544f = universalShape;
            this.f49545g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UniversalShapeEditAction.this.m38815Q(this.f49544f, it2, this.f49545g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$i */
    /* loaded from: classes8.dex */
    public static final class C9362i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Shape f49547f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f49548g;

        public C9362i(Shape shape, List<Shape> list) {
            this.f49547f = shape;
            this.f49548g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UniversalShapeEditAction.this.m38821o(this.f49547f, it2, this.f49548g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$j */
    /* loaded from: classes8.dex */
    public static final class C9363j<T> implements Consumer {
        public C9363j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.m38809I(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$k */
    /* loaded from: classes8.dex */
    public static final class C9364k<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f49550e;

        public C9364k(List<Shape> list) {
            this.f49550e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull AddShapesBackgroundResultBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49550e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$l */
    /* loaded from: classes8.dex */
    public static final class C9365l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49552f;

        /* renamed from: g */
        public final /* synthetic */ RectF f49553g;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$l$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ AddShapesBackgroundResultBean f49554e;

            public a(AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
                this.f49554e = addShapesBackgroundResultBean;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final AddShapesBackgroundResultBean apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49554e;
            }
        }

        public C9365l(BoxInfo boxInfo, RectF rectF) {
            this.f49552f = boxInfo;
            this.f49553g = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull AddShapesBackgroundResultBean result) {
            Intrinsics.checkNotNullParameter(result, "result");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(UniversalShapeEditAction.this, this.f49552f, this.f49553g).map(new a(result));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$m */
    /* loaded from: classes8.dex */
    public static final class C9366m<T> implements Predicate {

        /* renamed from: e */
        public static final C9366m<T> f49555e = new C9366m<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$n */
    /* loaded from: classes8.dex */
    public static final class C9367n<T> implements Consumer {
        public C9367n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.m38808H(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$o */
    /* loaded from: classes8.dex */
    public static final class C9368o<T, R> implements Function {

        /* renamed from: e */
        public static final C9368o<T, R> f49557e = new C9368o<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            Intrinsics.checkNotNull(virtualPageBoxInfo);
            return virtualPageBoxInfo;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$p */
    /* loaded from: classes8.dex */
    public static final class C9369p<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TouchData f49559f;

        public C9369p(TouchData touchData) {
            this.f49559f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CommonEditorActionsKt.hitTestVisibleBoxObservable(UniversalShapeEditAction.this, this.f49559f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$q */
    /* loaded from: classes8.dex */
    public static final class C9370q<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ UniversalShapeEditEvent f49561f;

        public C9370q(UniversalShapeEditEvent universalShapeEditEvent) {
            this.f49561f = universalShapeEditEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UniversalShapeEditAction.this.m38802B(this.f49561f.getUniversalShape(), this.f49561f.getDownTouchData());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$r */
    /* loaded from: classes8.dex */
    public static final class C9371r<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ UniversalShapeEditEvent f49562e;

        /* renamed from: f */
        public final /* synthetic */ UniversalShapeEditAction f49563f;

        public C9371r(UniversalShapeEditEvent universalShapeEditEvent, UniversalShapeEditAction universalShapeEditAction) {
            this.f49562e = universalShapeEditEvent;
            this.f49563f = universalShapeEditAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49562e.getUpTouchData().setBoxInfo(it2);
            this.f49563f.onTouchDown(this.f49562e.getUpTouchData());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$s */
    /* loaded from: classes8.dex */
    public static final class C9372s<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ UniversalShapeEditEvent f49565f;

        public C9372s(UniversalShapeEditEvent universalShapeEditEvent) {
            this.f49565f = universalShapeEditEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.shapeEditor.setReferenceShapes(this.f49565f.getReferenceShapes());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$t */
    /* loaded from: classes8.dex */
    public static final class C9373t<T> implements Consumer {
        public C9373t() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.shapeEditor.updateVirtualBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$u */
    /* loaded from: classes8.dex */
    public static final class C9374u<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ UniversalShapeEditEvent f49567e;

        /* renamed from: f */
        public final /* synthetic */ UniversalShapeEditAction f49568f;

        public C9374u(UniversalShapeEditEvent universalShapeEditEvent, UniversalShapeEditAction universalShapeEditAction) {
            this.f49567e = universalShapeEditEvent;
            this.f49568f = universalShapeEditAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49567e.getUpTouchData().getTouchPoint().applyMatrix(this.f49568f.shapeEditor.getBoxMatrix());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$v */
    /* loaded from: classes8.dex */
    public static final class C9375v<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ UniversalShapeEditEvent f49570f;

        public C9375v(UniversalShapeEditEvent universalShapeEditEvent) {
            this.f49570f = universalShapeEditEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.m38805E(this.f49570f.getUniversalShape(), this.f49570f.getUpTouchData(), this.f49570f.getEditImmediately());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$w */
    /* loaded from: classes8.dex */
    public static final class C9376w<T> implements Consumer {
        public C9376w() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.m38803C();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$x */
    /* loaded from: classes8.dex */
    public static final class C9377x<T> implements Consumer {
        public C9377x() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.m38817T();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$y */
    /* loaded from: classes8.dex */
    public static final class C9378y<T> implements Consumer {
        public C9378y() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<Guideline> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeEditAction.this.shapeEditor.setGuidelines(it2);
            UniversalShapeEditAction.this.m38803C();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$z */
    /* loaded from: classes8.dex */
    public static final class C9379z<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ UniversalShapeEditor f49575f;

        public C9379z(UniversalShapeEditor universalShapeEditor) {
            this.f49575f = universalShapeEditor;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UniversalShapeEditAction.this.m38823q(this.f49575f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalShapeEditAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.shapeEditor = new UniversalShapeEditor(editorBundle);
        this.compositeDisposable = new CompositeDisposable();
        this.CONTINUE_EDIT = 1;
        this.CREATE_FIRST = 2;
        this.CREATE_NEXT = 3;
        this.EXIT_EDIT = 4;
    }

    /* renamed from: M */
    public static final void m38791M(UniversalShapeEditAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.shapeHandlerManager(this$0.getEditorBundle()).restoreUserProvider();
    }

    /* renamed from: P */
    public static /* synthetic */ void m38792P(UniversalShapeEditAction universalShapeEditAction, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        universalShapeEditAction.m38814O(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: R */
    public static /* synthetic */ Observable m38793R(UniversalShapeEditAction universalShapeEditAction, Shape shape, AddShapesBackgroundResultBean addShapesBackgroundResultBean, List list, int i, Object obj) {
        if ((i & 4) != 0) {
            list = new ArrayList();
        }
        return universalShapeEditAction.m38815Q(shape, addShapesBackgroundResultBean, list);
    }

    /* renamed from: V */
    public static final void m38794V(UniversalShapeEditAction this$0, AppendShapeDownPointEvent downEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(downEvent, "$downEvent");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), downEvent);
    }

    /* renamed from: t */
    public static /* synthetic */ Observable m38798t(UniversalShapeEditAction universalShapeEditAction, AddShapesBackgroundArgs addShapesBackgroundArgs, RectF rectF, int i, Object obj) {
        if ((i & 2) != 0) {
            rectF = new RectF();
        }
        return universalShapeEditAction.m38824r(addShapesBackgroundArgs, rectF);
    }

    /* renamed from: u */
    public static /* synthetic */ Observable m38799u(UniversalShapeEditAction universalShapeEditAction, Shape shape, BoxInfo boxInfo, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            rectF = new RectF();
        }
        if ((i & 8) != 0) {
            z = true;
        }
        return universalShapeEditAction.m38825s(shape, boxInfo, rectF, z);
    }

    /* renamed from: v */
    public static final void m38800v(RectF shapeRectF, AddShapesBackgroundArgs addShapeArgs, BoxInfo virtualBoxInfo, AddShapesBackgroundResultBean it2) {
        Intrinsics.checkNotNullParameter(shapeRectF, "$shapeRectF");
        Intrinsics.checkNotNullParameter(addShapeArgs, "$addShapeArgs");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "$virtualBoxInfo");
        Intrinsics.checkNotNullParameter(it2, "it");
        shapeRectF.set(ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(addShapeArgs.getShapes(), virtualBoxInfo));
    }

    /* renamed from: A */
    public final void m38801A() {
        if (this.isEnabledShowMenu) {
            EditorBundleKt.postEvent(getEditorBundle(), new HideUniversalShapeSelectionEvent());
        }
    }

    /* renamed from: B */
    public final Observable<BoxInfo> m38802B(UniversalShape universalShape, TouchData touchData) {
        Object obj;
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(universalShape.getPageUniqueId(), ((BoxInfo) obj).getId())) {
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo != null) {
            Observable<BoxInfo> just = Observable.just(boxInfo);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (StringKt.isEmpty(universalShape.getPageUniqueId())) {
            return CommonEditorActionsKt.hitTestVisibleBoxObservable(this, touchData);
        }
        Observable<BoxInfo> onErrorResumeNext = ComputeBoxListActionsKt.findVisibleBoxInfoByNotePageId(this, universalShape.getPageUniqueId(), true).map(C9368o.f49557e).onErrorResumeNext(new C9369p(touchData));
        Intrinsics.checkNotNullExpressionValue(onErrorResumeNext, "onErrorResumeNext(...)");
        return onErrorResumeNext;
    }

    /* renamed from: C */
    public final void m38803C() {
        if (getHitTestBoxInfo() == null || this.shapeEditor.getShape() == null) {
            return;
        }
        EditorBundleKt.renderManager(getEditorBundle()).invalidate();
    }

    /* renamed from: D */
    public final void m38804D(TouchPoint touchPointInPage, boolean isStylus) {
        TouchPoint convertTouchPointFromPageToRender = this.shapeEditor.convertTouchPointFromPageToRender(touchPointInPage);
        int m38816S = m38816S(touchPointInPage, isStylus);
        if (m38816S == this.EXIT_EDIT || m38816S == this.CREATE_NEXT) {
            m38811K(convertTouchPointFromPageToRender, isStylus);
        }
        if (m38816S == this.EXIT_EDIT) {
            return;
        }
        if (m38816S != this.CONTINUE_EDIT) {
            m38813N();
        }
        if (this.shapeEditor.isUndefinedMode()) {
            this.shapeEditor.updateVirtualBoxInfo(getHitTestBoxInfo());
        }
        updateRenderContext();
        if (m38816S == this.CREATE_NEXT) {
            touchPointInPage = this.shapeEditor.convertTouchPointFromRenderToPage(convertTouchPointFromPageToRender);
        }
        this.shapeEditor.onShapeDown(touchPointInPage);
        m38826w();
    }

    /* renamed from: E */
    public final void m38805E(UniversalShape universalShape, TouchData upTouchData, boolean editImmediately) {
        m38813N();
        updateRenderContext();
        this.shapeEditor.onShapeEdit(universalShape, upTouchData, editImmediately);
        m38826w();
        EditorBundleKt.postEvent(getEditorBundle(), new EnablePressureEraserEvent(false));
    }

    /* renamed from: F */
    public final void m38806F(TouchPoint touchPoint) {
        this.shapeEditor.onShapeMove(touchPoint);
    }

    /* renamed from: G */
    public final void m38807G(TouchPoint touchPoint, boolean isSingleTapUp) {
        boolean z;
        if (isSingleTapUp && this.shapeEditor.isAddMode()) {
            m38827x();
            return;
        }
        this.shapeEditor.onShapeUp(touchPoint);
        if (isUndefinedMode()) {
            z = true;
            m38812L(true);
        } else {
            z = false;
        }
        if (!z && isEditMode()) {
            m38817T();
        }
        EditorBundleKt.postEvent(getEditorBundle(), new EnablePressureEraserEvent(z));
    }

    /* renamed from: H */
    public final void m38808H(List<TouchData> dataList) {
        for (TouchData touchData : dataList) {
            BoxInfo pageBoxInfo = getPageBoxInfo();
            TouchPoint touchPoint = new TouchPoint(touchData.getTouchPoint());
            touchPoint.applyMatrix(noteNormalizeMatrix(pageBoxInfo));
            int action = touchData.getAction();
            if (action == 0) {
                m38804D(touchPoint, touchData.isStylusToolType());
            } else if (action == 1) {
                m38807G(touchPoint, isSingleTapUp(dataList));
            } else if (action == 2) {
                m38806F(touchPoint);
            }
        }
        m38803C();
    }

    /* renamed from: I */
    public final void m38809I(AddShapesBackgroundResultBean result) {
        UndoRedoCommand undoRedoCommand = result.getUndoRedoCommand();
        if (undoRedoCommand != null) {
            EditorBundleKt.postEvent(getEditorBundle(), new CommandEvent(undoRedoCommand));
        }
    }

    /* renamed from: J */
    public final void m38810J() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<List<? extends Guideline>> doOnNext = new ShapeGuidelinesQueryAction(getEditorBundle()).build().observeOn(AndroidSchedulers.mainThread()).doOnNext(new C9378y());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.compositeDisposable.add(OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null));
    }

    /* renamed from: K */
    public final void m38811K(TouchPoint touchPoint, boolean isStylus) {
        boolean z = this.shapeEditor.getShape() != null;
        m38812L(false);
        if (z) {
            EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
            if (isStylus || EditorBundleKt.handlerManager(getEditorBundle()).isSupportFingerTouchEdit()) {
                m38818U(touchPoint);
            }
        }
    }

    /* renamed from: L */
    public final void m38812L(boolean switchProvider) {
        quitEditObservable(switchProvider).subscribe();
        this.shapeEditor.clear();
    }

    /* renamed from: N */
    public final void m38813N() {
        this.shapeEditor.clearGuideLine();
        this.compositeDisposable.clear();
        m38810J();
    }

    /* renamed from: O */
    public final void m38814O(boolean invalidate) {
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderer(RenderManager.RENDER_KEY_UNIVERSAL, invalidate);
    }

    /* renamed from: Q */
    public final Observable<AddShapesBackgroundResultBean> m38815Q(Shape shape, AddShapesBackgroundResultBean result, List<Shape> removedShapeList) {
        if (StringKt.isEmpty(shape.getPageUniqueId())) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CollectionKt.safeAdd(removedShapeList, 0, shape);
        Observable map = new GetReferenceShapeAction(getEditorBundle(), removedShapeList).build().doOnNext(new C9353b0(removedShapeList)).doOnNext(new C9355c0(result, removedShapeList)).map(new C9357d0(result));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: S */
    public final int m38816S(TouchPoint touchPointInPage, boolean isStylus) {
        if (!this.shapeEditor.isEditMode()) {
            return this.CREATE_FIRST;
        }
        if (this.shapeEditor.hitTestByPriority(touchPointInPage, true)) {
            return this.CONTINUE_EDIT;
        }
        if (!EditorBundleKt.shapeHandlerManager(getEditorBundle()).isProviderChanged() && isStylus) {
            return this.CREATE_NEXT;
        }
        return this.EXIT_EDIT;
    }

    /* renamed from: T */
    public final void m38817T() {
        UniversalShape shape;
        BoxInfo boxInfo;
        List listOf;
        if (!this.isEnabledShowMenu || (shape = this.shapeEditor.getShape()) == null || (boxInfo = this.shapeEditor.getBoxInfo()) == null) {
            return;
        }
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        EditorBundleKt.postEvent(editorBundle, new ShowUniversalShapeSelectionEvent(boxInfo, listOf, this.shapeEditor.getShapeRectInPage()));
    }

    /* renamed from: U */
    public final void m38818U(TouchPoint downPointInRender) {
        final AppendShapeDownPointEvent appendShapeDownPointEvent = new AppendShapeDownPointEvent(new TouchData(0, 0, downPointInRender, null, null, 0L, 58, null));
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.btn
            @Override // java.lang.Runnable
            public final void run() {
                UniversalShapeEditAction.m38794V(UniversalShapeEditAction.this, appendShapeDownPointEvent);
            }
        });
    }

    /* renamed from: W */
    public final Observable<?> m38819W(UpdateCrossPageShapesAction action) {
        return m38798t(this, m38828y(action.getVirtualBoxInfo(), action.getChangedShapeBean().getAddShapeList()), null, 2, null);
    }

    /* renamed from: X */
    public final void m38820X(RenderContext renderContext, BoxInfo virtualPageBoxInfo, Matrix shapeEditorBoxMatrix) {
        Matrix invertMatrix = MatrixKt.invertMatrix(shapeEditorBoxMatrix);
        RectF copy = RectFKt.copy(virtualPageBoxInfo.getVisibleRect());
        RectFKt.unionOrCopy(copy, virtualPageBoxInfo.getOriginRectFWithMargin());
        renderContext.setClipRect(copy);
        renderContext.setMatrix(invertMatrix);
    }

    public final void cancelEdit() {
        quitEditObservable(false).subscribe();
        m38792P(this, false, 1, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TouchData>> create() {
        Observable<List<TouchData>> doOnNext = RxjavaKt.touchBuffer$default(subscribeTouchData(), 0L, 0, touchDataScheduler(), 3, null).filter(C9366m.f49555e).doOnNext(new C9367n());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final RenderContext createRenderContext() {
        LowLatencyRenderData lowLatencyRenderData = new LowLatencyRenderData();
        RenderContext renderContext = new RenderContext(lowLatencyRenderData.getPaint(), new Matrix());
        renderContext.setShapeShaderManager(EditorBundleKt.noteBundle(getEditorBundle()).getShapeShaderManager());
        renderContext.setLowLatencyRenderData(lowLatencyRenderData);
        return renderContext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        m38812L(false);
        super.dispose();
        m38792P(this, false, 1, null);
        this.compositeDisposable.clear();
    }

    @NotNull
    public final BoxInfo getPageBoxInfo() {
        BoxInfo boxInfo = this.shapeEditor.getBoxInfo();
        if (boxInfo != null) {
            return boxInfo;
        }
        BoxInfo hitTestBoxInfo = getHitTestBoxInfo();
        return hitTestBoxInfo == null ? new BoxInfo() : hitTestBoxInfo;
    }

    public final boolean isEditMode() {
        return this.shapeEditor.isEditMode();
    }

    public final boolean isUndefinedMode() {
        return this.shapeEditor.isUndefinedMode();
    }

    public final boolean isUndefinedTransformAction() {
        return this.shapeEditor.isUndefinedTransformAction();
    }

    /* renamed from: o */
    public final Observable<AddShapesBackgroundResultBean> m38821o(Shape shape, AddShapesBackgroundResultBean result, List<Shape> addedShapeList) {
        List listOf;
        BoxInfo virtualPageBoxInfo = result.getVirtualPageBoxInfo();
        if (virtualPageBoxInfo == null) {
            Observable<AddShapesBackgroundResultBean> just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        UpdateCrossPageShapesAction updateCrossPageShapesAction = new UpdateCrossPageShapesAction(editorBundle, new TransformShapeContext(virtualPageBoxInfo, listOf, null, false, 12, null));
        Observable<AddShapesBackgroundResultBean> map = updateCrossPageShapesAction.build().map(new C9350a(updateCrossPageShapesAction)).flatMap(new C9352b(result, addedShapeList)).map(new C9354c(result));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        updateRenderContext();
        canvas.save();
        RenderContext renderContext = this.renderContext;
        RenderContext renderContext2 = null;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        renderContext.updateCanvas(canvas);
        UniversalShapeEditor universalShapeEditor = this.shapeEditor;
        RenderContext renderContext3 = this.renderContext;
        if (renderContext3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext3 = null;
        }
        universalShapeEditor.drawAngles(canvas, renderContext3.getMatrix());
        UniversalShapeEditor universalShapeEditor2 = this.shapeEditor;
        RenderContext renderContext4 = this.renderContext;
        if (renderContext4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext4 = null;
        }
        universalShapeEditor2.drawExtraShapeContent(canvas, renderContext4.getMatrix());
        UniversalShape shape = this.shapeEditor.getShape();
        if (shape != null) {
            RenderContext renderContext5 = this.renderContext;
            if (renderContext5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("renderContext");
                renderContext5 = null;
            }
            shape.lowLatencyRender(renderContext5);
        }
        this.shapeEditor.drawGuidelines(canvas);
        UniversalShapeEditor universalShapeEditor3 = this.shapeEditor;
        RenderContext renderContext6 = this.renderContext;
        if (renderContext6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
        } else {
            renderContext2 = renderContext6;
        }
        universalShapeEditor3.drawSelectionPoints(canvas, renderContext2.getMatrix());
        this.shapeEditor.drawRotationHandle(canvas);
        canvas.restore();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public boolean onInterceptTouchDown(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        if (this.shapeEditor.onInterceptTouchDown(touchData.getTouchPoint())) {
            return true;
        }
        return super.onInterceptTouchDown(touchData, virtualBoxInfo);
    }

    @NotNull
    public final UniversalShapeEditAction onShapeEdit(@NotNull UniversalShapeEditEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable doOnNext = quitEditObservable(false).flatMap(new C9370q(event)).doOnNext(new C9371r(event, this)).doOnNext(new C9372s(event)).doOnNext(new C9373t()).doOnNext(new C9374u(event, this)).observeOn(touchDataScheduler()).doOnNext(new C9375v(event)).doOnNext(new C9376w()).doOnNext(new C9377x());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
        return this;
    }

    public final void onThemeUpdated() {
        this.shapeEditor.onThemeUpdated();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        super.onTouchContentOutside(touchData, virtualBoxInfo);
        m38812L(true);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        setHitTestBoxInfo(touchData.ensureBoxInfo());
        this.renderContext = createRenderContext();
    }

    public final void onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.shapeEditor.onTouchEvent(event);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchMove(touchData);
        m38801A();
    }

    /* renamed from: p */
    public final Observable<?> m38822p(UpdateCrossPageShapesAction crossPageShapeAction, AddShapesBackgroundResultBean result, List<Shape> addedShapeList) {
        Map<Shape, BoxInfo> crossPageShapeMap = crossPageShapeAction.getCrossPageShapeMap();
        if (crossPageShapeMap.isEmpty()) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = m38819W(crossPageShapeAction).flatMap(new C9356d(crossPageShapeMap)).concatMap(new C9358e(addedShapeList, result));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.takeLastOne(concatMap);
    }

    /* renamed from: q */
    public final Observable<List<Shape>> m38823q(UniversalShapeEditor snapshot) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        UniversalShape shape = snapshot.getShape();
        if (shape == null) {
            Observable<List<Shape>> just = Observable.just(arrayList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        shape.ensureShapeUniqueId();
        String featureCollectionStr = snapshot.getFeatureCollectionStr();
        if (featureCollectionStr == null) {
            featureCollectionStr = "";
        }
        Matrix featureMatrix = snapshot.getFeatureMatrix();
        BoxInfo boxInfo = snapshot.getBoxInfo();
        if (boxInfo == null) {
            Observable<List<Shape>> just2 = Observable.just(arrayList);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Matrix copy = MatrixKt.copy(snapshot.getBoxMatrix());
        Matrix notePageRenderMatrix = BoxInfoUtils.INSTANCE.notePageRenderMatrix(snapshot.getBoxInfo());
        RectF shapeRectFWithWidth = snapshot.getShapeRectFWithWidth();
        if (shapeRectFWithWidth != null) {
            notePageRenderMatrix.mapRect(shapeRectFWithWidth);
        } else {
            shapeRectFWithWidth = null;
        }
        shape.updateFeature();
        ShapeCopyUtils shapeCopyUtils = ShapeCopyUtils.INSTANCE;
        Shape clone = shapeCopyUtils.clone(shape);
        m38829z(clone, boxInfo, copy);
        shape.setShapeMatrix(featureMatrix);
        shape.updateFeature(featureCollectionStr);
        CollectionKt.safeAddAll(arrayList2, snapshot.getReferenceShapes());
        Shape deepCopy = shapeCopyUtils.deepCopy(clone);
        if (!Intrinsics.areEqual(noteNormalizeMatrix(boxInfo), copy)) {
            deepCopy.postConcat(notePageRenderMatrix);
            deepCopy.postConcat(noteNormalizeMatrix(boxInfo));
        }
        Matrix shapeMatrix = deepCopy.getShapeMatrix();
        if (shapeMatrix != null) {
            MatrixKt.validateScaleLimit(shapeMatrix);
        }
        Observable<List<Shape>> map = Observable.just(boxInfo).flatMap(new C9359f(deepCopy, shapeRectFWithWidth)).doOnNext(new C9360g(arrayList, deepCopy)).flatMap(new C9361h(shape, arrayList2)).flatMap(new C9362i(deepCopy, arrayList)).doOnNext(new C9363j()).map(new C9364k(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<List<Shape>> quitEditObservable(final boolean switchProvider) {
        List emptyList;
        EditorBundleKt.postEvent(getEditorBundle(), new EnablePressureEraserEvent(true));
        UniversalShapeEditor universalShapeEditor = this.shapeEditor;
        this.shapeEditor = new UniversalShapeEditor(getEditorBundle());
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<List<Shape>> doOnNext = Observable.just(emptyList).doOnNext(new C9351a0());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        if (universalShapeEditor.isUndefinedMode() || universalShapeEditor.isEditMode()) {
            doOnNext = doOnNext.flatMap(new C9379z(universalShapeEditor));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "flatMap(...)");
        }
        return universalShapeEditor.getShape() != null ? RxjavaKt.doOnNextIf(doOnNext, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$quitEditObservable$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(switchProvider);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.dtn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                UniversalShapeEditAction.m38791M(UniversalShapeEditAction.this, (List) obj);
            }
        }) : doOnNext;
    }

    /* renamed from: r */
    public final Observable<AddShapesBackgroundResultBean> m38824r(final AddShapesBackgroundArgs addShapeArgs, final RectF shapeRectF) {
        final BoxInfo virtualPageBoxInfo = addShapeArgs.getVirtualPageBoxInfo();
        Observable<AddShapesBackgroundResultBean> flatMap = RxjavaKt.doOnNextIf(EditorShapesActionsKt.addShapes(this, addShapeArgs), new Function1<AddShapesBackgroundResultBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction$addShapeImpl$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(RectKt.isNullOrEmpty(shapeRectF));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.ctn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                UniversalShapeEditAction.m38800v(shapeRectF, addShapeArgs, virtualPageBoxInfo, (AddShapesBackgroundResultBean) obj);
            }
        }).flatMap(new C9365l(virtualPageBoxInfo, shapeRectF));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: s */
    public final Observable<AddShapesBackgroundResultBean> m38825s(Shape shape, BoxInfo virtualBoxInfo, RectF shapeRectF, boolean addToCmdStack) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        AddShapesBackgroundArgs addShapesBackgroundArgs = new AddShapesBackgroundArgs(virtualBoxInfo.getId(), virtualBoxInfo, listOf, false);
        addShapesBackgroundArgs.setAddToCmdStack(addToCmdStack);
        return m38824r(addShapesBackgroundArgs, shapeRectF);
    }

    @NotNull
    public final UniversalShapeEditAction setShowMenu(boolean showMenu) {
        this.isEnabledShowMenu = showMenu;
        return this;
    }

    public final void updateRenderContext() {
        BoxInfo pageBoxInfo = getPageBoxInfo();
        if (pageBoxInfo.getNoteInfo() == null) {
            return;
        }
        RenderContext renderContext = this.renderContext;
        RenderContext renderContext2 = null;
        if (renderContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
            renderContext = null;
        }
        m38820X(renderContext, pageBoxInfo, this.shapeEditor.getBoxMatrix());
        UniversalShapeEditor universalShapeEditor = this.shapeEditor;
        RenderContext renderContext3 = this.renderContext;
        if (renderContext3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderContext");
        } else {
            renderContext2 = renderContext3;
        }
        universalShapeEditor.updateRenderContext(renderContext2);
    }

    public final void updateShapeAttr(@NotNull ShapeAttributesBean attr) {
        Intrinsics.checkNotNullParameter(attr, "attr");
        this.shapeEditor.updateShapeAttr(attr);
        m38803C();
    }

    /* renamed from: w */
    public final void m38826w() {
        if (this.shapeEditor.getShape() == null) {
            return;
        }
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_UNIVERSAL, this, false, 4, null);
    }

    /* renamed from: x */
    public final void m38827x() {
        this.shapeEditor.clear();
        m38812L(false);
        m38814O(true);
    }

    /* renamed from: y */
    public final AddShapesBackgroundArgs m38828y(BoxInfo virtualBoxInfo, List<? extends Shape> shapeList) {
        AddShapesBackgroundArgs addShapesBackgroundArgs = new AddShapesBackgroundArgs(virtualBoxInfo.getId(), virtualBoxInfo, shapeList, false);
        addShapesBackgroundArgs.setAddToCmdStack(false);
        addShapesBackgroundArgs.setSetZOrder(false);
        return addShapesBackgroundArgs;
    }

    /* renamed from: z */
    public final void m38829z(Shape shape, BoxInfo virtualBoxInfo, Matrix boxMatrix) {
        FlushShapeReference flushShapeReference = new FlushShapeReference(shape, 0, 2, null);
        RenderContext createRenderContext = createRenderContext();
        m38820X(createRenderContext, virtualBoxInfo, boxMatrix);
        EditorBundleKt.renderManager(getEditorBundle()).flushShapeToPage(new ShapeFlushInfo(flushShapeReference, createRenderContext, virtualBoxInfo.copy()));
        if (this.shapeEditor.getShape() == null) {
            m38792P(this, false, 1, null);
        }
    }
}
