package com.onyx.galaxy.note.editor.handler;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.Size;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.base.lite.utils.MathUtils;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.IdentifyRectF;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.event.AddShapesEvent;
import com.onyx.android.sdk.note.common.event.StashShapeEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.ScaleAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.LocateShapeRectInPageAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction;
import com.onyx.android.sdk.universal.editor.action.magnifier.ResetScaleAndGotoPageAction;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.display.EditorView;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.events.app.ContentViewSizeUpdateDoneEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentClosedEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.DraftCellAddedEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorBundleChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.HideRulerEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierAutoForwardMoveEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierCheckEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierToolEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoGesturesEvent;
import com.onyx.android.sdk.universal.editor.events.app.RulerEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScalingResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollingEvent;
import com.onyx.android.sdk.universal.editor.events.app.SingleClickEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.ActivateShapeHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertTagEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapeToolTypeChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.helper.DefaultEditorDataProxy;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewDownListener;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction;
import com.onyx.galaxy.note.databinding.EditorViewDragLayoutBinding;
import com.onyx.galaxy.note.databinding.MagnifierEditorLayoutBinding;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.handler.MagnifierEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierNewLineAreaView;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportContainer;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000¢\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r*\u0002\u008a\u0001\u0018\u0000 \u009b\u00012\u00020\u00012\u00020\u0002:\u0004\u009b\u0001\u009c\u0001B,\u0012\u0006\u0010d\u001a\u00020_\u0012\u0006\u0010h\u001a\u00020e\u0012\u0006\u0010l\u001a\u00020i\u0012\t\b\u0002\u0010\u0098\u0001\u001a\u00020i¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\b\u0010\u0004\u001a\u00020\u0003H\u0003J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J8\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u00112\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00030\u0013H\u0002J\b\u0010\u0016\u001a\u00020\u0003H\u0002J\u0012\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\tH\u0002J\b\u0010\u0019\u001a\u00020\u0003H\u0002J\b\u0010\u001a\u001a\u00020\u0003H\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u0003H\u0002J\u0018\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0 2\b\b\u0002\u0010\u001f\u001a\u00020\u001eH\u0002J\u001a\u0010&\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\"2\b\b\u0002\u0010%\u001a\u00020$H\u0002J\u001e\u0010'\u001a\u0006\u0012\u0002\b\u00030 2\u0006\u0010#\u001a\u00020\"2\b\b\u0002\u0010%\u001a\u00020$H\u0002J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000f0 2\u0006\u0010(\u001a\u00020\u000fH\u0002J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000f0 2\u0006\u0010#\u001a\u00020\"H\u0002J\b\u0010+\u001a\u00020\u0003H\u0002J\b\u0010,\u001a\u00020\u0003H\u0002J\f\u0010-\u001a\u0006\u0012\u0002\b\u00030 H\u0002J\b\u0010.\u001a\u00020\u0003H\u0002J\b\u0010/\u001a\u00020\u0003H\u0002J\b\u00100\u001a\u00020\u0003H\u0002J\b\u00101\u001a\u00020\u0003H\u0002J\u0012\u00103\u001a\u00020\u00032\b\b\u0002\u00102\u001a\u00020$H\u0002J\b\u00104\u001a\u00020\u0003H\u0002J\u0010\u00106\u001a\u00020\u00032\u0006\u00105\u001a\u00020\tH\u0002J\b\u00107\u001a\u00020\tH\u0002J\b\u00108\u001a\u00020\u0003H\u0002J\b\u00109\u001a\u00020$H\u0002J\b\u0010:\u001a\u00020$H\u0002J\b\u0010;\u001a\u00020$H\u0002J\u0010\u0010>\u001a\u00020\r2\u0006\u0010=\u001a\u00020<H\u0002J\b\u0010?\u001a\u00020\u0003H\u0002J\u0010\u0010A\u001a\u00020\u00032\u0006\u0010@\u001a\u00020$H\u0002J\b\u0010B\u001a\u00020\u0003H\u0016J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010D\u001a\u00020CH\u0016J\u0010\u0010H\u001a\u00020\u00032\u0006\u0010G\u001a\u00020FH\u0007J\u0010\u0010J\u001a\u00020\u00032\u0006\u0010G\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010G\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00032\u0006\u0010G\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010G\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010G\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010G\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00032\u0006\u0010G\u001a\u00020UH\u0007J\u0010\u0010X\u001a\u00020\u00032\u0006\u0010G\u001a\u00020WH\u0007J\u0010\u0010Z\u001a\u00020\u00032\u0006\u0010G\u001a\u00020YH\u0007J\u0010\u0010\\\u001a\u00020\u00032\u0006\u0010G\u001a\u00020[H\u0007J\u0010\u0010^\u001a\u00020\u00032\u0006\u0010G\u001a\u00020]H\u0007R\u0017\u0010d\u001a\u00020_8\u0006¢\u0006\f\n\u0004\b`\u0010a\u001a\u0004\bb\u0010cR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010kR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR\u0014\u0010t\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010x\u001a\u00020u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u0010|\u001a\u00020y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0017\u0010\u0080\u0001\u001a\u00020}8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0019\u0010\u0083\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b4\u0010\u0082\u0001R\u0019\u0010\u0086\u0001\u001a\u00030\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b,\u0010\u0085\u0001R\u0017\u0010\u0089\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b+\u0010\u0088\u0001R\u0017\u0010\u008c\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b6\u0010\u008b\u0001R\u001d\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00020\t0\u008d\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b3\u0010\u008e\u0001RB\u0010\u0094\u0001\u001a+\u0012\r\u0012\u000b \u0091\u0001*\u0004\u0018\u00010\t0\t \u0091\u0001*\u0014\u0012\r\u0012\u000b \u0091\u0001*\u0004\u0018\u00010\t0\t\u0018\u00010\u0090\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0018\u0010\u0096\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b*\u0010\u0095\u0001R\u0017\u0010\u0097\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u00100¨\u0006\u009d\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "", "x", "h0", "i0", "j0", "k0", "", "offsetX", "offsetY", "Y", "Landroid/graphics/RectF;", "shapeRectF", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "currentBoxInfo", "", "offsetStep", "Lkotlin/Function1;", "onNext", "Q", "n0", "dy", "o0", "l0", "m0", "Landroid/util/Size;", "f0", "T", "Landroid/graphics/Matrix;", "displayMatrix", "Lio/reactivex/rxjava3/core/Observable;", "M", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "virtualDocViewInfo", "", "forceCollectVirtualDocViewInfo", "K", "N", "boxInfo", "u", "t", "p", C4921e.f26528e, "X", "a0", "b0", Constants.HASIDCALL_INDEX_SIG, "W", "force", "r", GoogleApiAvailabilityLight.f29016b, "newLineOffset", "q", "v", "g0", "I", "H", "J", "Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;", "idRectF", "w", "e0", "status", "d0", "destroy", "", "id", "onDown", "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierEvent;", NotificationCompat.CATEGORY_EVENT, "onMagniferEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierCheckEvent;", "onMagnifierCheckEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierAutoForwardMoveEvent;", "onMagnifierAutoForwardMoveEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", "onDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;", "onShapeToolTypeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;", "onSingleClickEvent", "Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;", "onAddShapesEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;", "onEditorBundleChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "onChangeTouchModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;", "onRulerEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeUpdateDoneEvent;", "onContentViewSizeUpdateDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "getFragment", "()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "fragment", "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;", C6998g.f39679a, "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;", "focusEditorViewContainerBiding", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "focusEditorBundle", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "i", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", "Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;", "j", "Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;", "magnifierRootLayout", "Landroid/widget/LinearLayout;", C4921e.f26537n, "Landroid/widget/LinearLayout;", "magnifierEditorContainer", "Lcom/onyx/android/sdk/universal/editor/display/EditorView;", "l", "Lcom/onyx/android/sdk/universal/editor/display/EditorView;", "magnifierEditorView", "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;", "m", "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;", "magnifierActionContainer", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;", "magnifierViewportContainer", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;", "magnifierViewportView", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;", "magnifierViewportStateChangedListener", "com/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1", "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1;", "editorViewHandler", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "hitTestNewLineFilter", "Lorg/apache/commons/lang3/Range;", "kotlin.jvm.PlatformType", "s", "Lorg/apache/commons/lang3/Range;", "scalePage", "F", "focusEditorStandardMinScale", "focusEditorScrolling", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Companion", "b", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,1041:1\n256#2,2:1042\n310#2:1045\n326#2,4:1046\n311#2:1050\n277#2,2:1054\n256#2,2:1056\n256#2,2:1058\n256#2,2:1060\n277#2,2:1062\n277#2,2:1064\n256#2,2:1066\n277#2,2:1068\n254#2:1070\n1#3:1044\n288#4,2:1051\n288#4,2:1071\n337#5:1053\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler\n*L\n266#1:1042,2\n499#1:1045\n499#1:1046,4\n499#1:1050\n654#1:1054,2\n856#1:1056,2\n857#1:1058,2\n858#1:1060,2\n875#1:1062,2\n876#1:1064,2\n877#1:1066,2\n878#1:1068,2\n927#1:1070\n587#1:1051,2\n945#1:1071,2\n590#1:1053\n*E\n"})
/* loaded from: classes9.dex */
public final class MagnifierEventHandler extends BaseEventHandler implements EditorViewDownListener {
    public static final float HEIGHT_RADIO = 0.45f;
    public static final float INIT_RADIO = 5.0f;
    public static final float SCROLL_BY_DELTA = 10.0f;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment fragment;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorViewDragLayoutBinding focusEditorViewContainerBiding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle focusEditorBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager editorBundleManager;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MagnifierEditorLayoutBinding magnifierRootLayout;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public LinearLayout magnifierEditorContainer;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public EditorView magnifierEditorView;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public TintLinearLayout magnifierActionContainer;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public MagnifierViewportContainer magnifierViewportContainer;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public MagnifierViewportView magnifierViewportView;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final MagnifierViewportStateChangedListener magnifierViewportStateChangedListener;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final MagnifierEventHandler$editorViewHandler$1 editorViewHandler;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<Float> hitTestNewLineFilter;

    /* renamed from: s, reason: from kotlin metadata */
    public Range<Float> scalePage;

    /* renamed from: t, reason: from kotlin metadata */
    public float focusEditorStandardMinScale;

    /* renamed from: u, reason: from kotlin metadata */
    public boolean focusEditorScrolling;

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$a0 */
    /* loaded from: classes9.dex */
    public static final class C12056a0<T> implements Consumer {
        public C12056a0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler magnifierEventHandler = MagnifierEventHandler.this;
            magnifierEventHandler.m46138K(EditorBundleKt.virtualDocViewInfo(magnifierEventHandler.getEditorBundle()), true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$b0 */
    /* loaded from: classes9.dex */
    public static final class C12058b0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<RectF> f58746e;

        /* renamed from: f */
        public final /* synthetic */ MagnifierEventHandler f58747f;

        public C12058b0(Ref.ObjectRef<RectF> objectRef, MagnifierEventHandler magnifierEventHandler) {
            this.f58746e = objectRef;
            this.f58747f = magnifierEventHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull View it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58746e.element = (T) this.f58747f.magnifierViewportView.getLocationRect();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12059c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f58749f;

        /* renamed from: g */
        public final /* synthetic */ String f58750g;

        public C12059c(String str, String str2) {
            this.f58749f = str;
            this.f58750g = str2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(MagnifierEventHandler.this.getEditorBundle(), new StartActivateDocumentEvent(this.f58749f, this.f58750g, false, null, false, 12, null));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$c0 */
    /* loaded from: classes9.dex */
    public static final class C12060c0<T> implements Consumer {
        public C12060c0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull View it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.m46147a0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$d */
    /* loaded from: classes9.dex */
    public static final class C12061d<T, R> implements Function {

        /* renamed from: e */
        public static final C12061d<T, R> f58752e = new C12061d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            return virtualPageBoxInfo == null ? new BoxInfo() : virtualPageBoxInfo;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$d0 */
    /* loaded from: classes9.dex */
    public static final class C12062d0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f58754f;

        /* renamed from: g */
        public final /* synthetic */ RectF f58755g;

        public C12062d0(String str, RectF rectF) {
            this.f58754f = str;
            this.f58755g = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ResetScaleAndGotoPageAction> apply(@NotNull View it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            float m46168v = MagnifierEventHandler.this.m46168v() * EditorBundleKt.actualScale(MagnifierEventHandler.this.focusEditorBundle);
            return new ResetScaleAndGotoPageAction(MagnifierEventHandler.this.getEditorBundle(), this.f58754f, m46168v, (-this.f58755g.centerX()) * m46168v, (-this.f58755g.centerY()) * m46168v).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$e */
    /* loaded from: classes9.dex */
    public static final class C12063e<T, R> implements Function {

        /* renamed from: e */
        public static final C12063e<T, R> f58756e = new C12063e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            return virtualPageBoxInfo == null ? new BoxInfo() : virtualPageBoxInfo;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$e0 */
    /* loaded from: classes9.dex */
    public static final class C12064e0<T, R> implements Function {
        public C12064e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScaleAction> apply(@NotNull ResetScaleAndGotoPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ScaleAction(MagnifierEventHandler.this.getEditorBundle(), EditorBundleKt.actualScale(MagnifierEventHandler.this.getEditorBundle()), 0.0f, 0.0f, 12, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$f */
    /* loaded from: classes9.dex */
    public static final class C12065f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<RectF> f58758e;

        public C12065f(Ref.ObjectRef<RectF> objectRef) {
            this.f58758e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RectF apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BoxInfoUtils.INSTANCE.mapToScreenRectF(this.f58758e.element, it2);
        }
    }

    @SourceDebugExtension({"SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$7\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1041:1\n256#2,2:1042\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$7\n*L\n815#1:1042,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$f0 */
    /* loaded from: classes9.dex */
    public static final class C12066f0<T> implements Consumer {
        public C12066f0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.magnifierViewportView.setVisibility(0);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$g */
    /* loaded from: classes9.dex */
    public static final class C12067g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Matrix f58760e;

        public C12067g(Matrix matrix) {
            this.f58760e = matrix;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RectF it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58760e.mapRect(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$g0 */
    /* loaded from: classes9.dex */
    public static final class C12068g0<T> implements Consumer {
        public C12068g0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler magnifierEventHandler = MagnifierEventHandler.this;
            MagnifierEventHandler.m46110L(magnifierEventHandler, EditorBundleKt.virtualDocViewInfo(magnifierEventHandler.getEditorBundle()), false, 2, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$h */
    /* loaded from: classes9.dex */
    public static final class C12069h<T> implements Consumer {
        public C12069h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RectF it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.magnifierViewportView.moveToWithoutLimit(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$h0 */
    /* loaded from: classes9.dex */
    public static final class C12070h0<T> implements Predicate {

        /* renamed from: e */
        public static final C12070h0<T> f58763e = new C12070h0<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !RectKt.isNullOrEmpty(it2.getBox());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$i */
    /* loaded from: classes9.dex */
    public static final class C12071i<T> implements Predicate {

        /* renamed from: e */
        public static final C12071i<T> f58764e = new C12071i<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !RectKt.isNullOrEmpty(it2.getBox());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$i0 */
    /* loaded from: classes9.dex */
    public static final class C12072i0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RectF f58765e;

        /* renamed from: f */
        public final /* synthetic */ MagnifierEventHandler f58766f;

        /* renamed from: g */
        public final /* synthetic */ String f58767g;

        public C12072i0(RectF rectF, MagnifierEventHandler magnifierEventHandler, String str) {
            this.f58765e = rectF;
            this.f58766f = magnifierEventHandler;
            this.f58767g = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectF mapToShapeRect = BoxInfoUtils.INSTANCE.mapToShapeRect(this.f58765e, it2);
            Debug.INSTANCE.m32059w(this.f58766f.getClass(), "save boxInfoxx:" + new IdentifyRectF(it2.getId(), mapToShapeRect) + ':' + this.f58765e, new Object[0]);
            this.f58766f.getFragment().getViewModel().updateMagnifierViewport(this.f58767g, new IdentifyRectF(it2.getId(), mapToShapeRect));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$j */
    /* loaded from: classes9.dex */
    public static final class C12073j<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.FloatRef f58768e;

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<RectF> f58769f;

        /* renamed from: g */
        public final /* synthetic */ MagnifierEventHandler f58770g;

        /* renamed from: h */
        public final /* synthetic */ float f58771h;

        public C12073j(Ref.FloatRef floatRef, Ref.ObjectRef<RectF> objectRef, MagnifierEventHandler magnifierEventHandler, float f) {
            this.f58768e = floatRef;
            this.f58769f = objectRef;
            this.f58770g = magnifierEventHandler;
            this.f58771h = f;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58768e.element = this.f58769f.element.width() / (((Number) this.f58770g.scalePage.getMinimum()).floatValue() * this.f58771h);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$j0 */
    /* loaded from: classes9.dex */
    public static final class C12074j0<T> implements Consumer {
        public C12074j0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.m46154i0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$k */
    /* loaded from: classes9.dex */
    public static final class C12075k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.FloatRef f58773e;

        /* renamed from: f */
        public final /* synthetic */ Ref.ObjectRef<RectF> f58774f;

        /* renamed from: g */
        public final /* synthetic */ MagnifierEventHandler f58775g;

        /* renamed from: h */
        public final /* synthetic */ float f58776h;

        public C12075k(Ref.FloatRef floatRef, Ref.ObjectRef<RectF> objectRef, MagnifierEventHandler magnifierEventHandler, float f) {
            this.f58773e = floatRef;
            this.f58774f = objectRef;
            this.f58775g = magnifierEventHandler;
            this.f58776h = f;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58773e.element = this.f58774f.element.width() / (((Number) this.f58775g.scalePage.getMaximum()).floatValue() * this.f58776h);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$k0 */
    /* loaded from: classes9.dex */
    public static final class C12076k0<T> implements Consumer {
        public C12076k0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.m46156k0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$l */
    /* loaded from: classes9.dex */
    public static final class C12077l<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<RectF> f58778e;

        public C12077l(Ref.ObjectRef<RectF> objectRef) {
            this.f58778e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Ref.ObjectRef<RectF> objectRef = this.f58778e;
            objectRef.element = (T) BoxInfoUtils.INSTANCE.mapToShapeRect(objectRef.element, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$l0 */
    /* loaded from: classes9.dex */
    public static final class C12078l0<T> implements Consumer {
        public C12078l0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.m46158m0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$m */
    /* loaded from: classes9.dex */
    public static final class C12085m<T, R> implements Function {
        public C12085m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MagnifierEventHandler.this.m46167u(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$m0 */
    /* loaded from: classes9.dex */
    public static final class C12086m0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ float f58787f;

        public C12086m0(float f) {
            this.f58787f = f;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.m46162o0(this.f58787f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$n */
    /* loaded from: classes9.dex */
    public static final class C12087n<T> implements Predicate {

        /* renamed from: e */
        public static final C12087n<T> f58788e = new C12087n<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !RectKt.isNullOrEmpty(it2.getBox());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$o */
    /* loaded from: classes9.dex */
    public static final class C12088o<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.FloatRef f58789e;

        public C12088o(Ref.FloatRef floatRef) {
            this.f58789e = floatRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58789e.element *= it2.getActualScale();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$p */
    /* loaded from: classes9.dex */
    public static final class C12089p<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.FloatRef f58790e;

        public C12089p(Ref.FloatRef floatRef) {
            this.f58790e = floatRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58790e.element *= it2.getActualScale();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$q */
    /* loaded from: classes9.dex */
    public static final class C12090q<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Ref.FloatRef f58792f;

        /* renamed from: g */
        public final /* synthetic */ Ref.FloatRef f58793g;

        public C12090q(Ref.FloatRef floatRef, Ref.FloatRef floatRef2) {
            this.f58792f = floatRef;
            this.f58793g = floatRef2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierViewportView magnifierViewportView = MagnifierEventHandler.this.magnifierViewportView;
            Range<Float> between = Range.between(Float.valueOf(this.f58792f.element), Float.valueOf(this.f58793g.element));
            Intrinsics.checkNotNullExpressionValue(between, "between(...)");
            magnifierViewportView.setWidthLimitRange(between);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$r */
    /* loaded from: classes9.dex */
    public static final class C12091r<T> implements Predicate {

        /* renamed from: e */
        public static final C12091r<T> f58794e = new C12091r<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull AtomicReference<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.get() != null;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$s */
    /* loaded from: classes9.dex */
    public static final class C12092s<T, R> implements Function {

        /* renamed from: e */
        public static final C12092s<T, R> f58795e = new C12092s<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull AtomicReference<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo boxInfo = it2.get();
            Intrinsics.checkNotNull(boxInfo);
            return boxInfo;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$t */
    /* loaded from: classes9.dex */
    public static final class C12093t<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Function1<BoxInfo, Unit> f58796e;

        /* JADX WARN: Multi-variable type inference failed */
        public C12093t(Function1<? super BoxInfo, Unit> function1) {
            this.f58796e = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58796e.invoke(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$u */
    /* loaded from: classes9.dex */
    public static final class C12094u<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectF f58798f;

        public C12094u(RectF rectF) {
            this.f58798f = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LocateShapeRectInPageAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LocateShapeRectInPageAction(MagnifierEventHandler.this.getEditorBundle(), it2.getId(), this.f58798f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$v */
    /* loaded from: classes9.dex */
    public static final class C12095v<T> implements Consumer {
        public C12095v() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MagnifierEventHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.m46148b0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$w */
    /* loaded from: classes9.dex */
    public static final class C12096w<T, R> implements Function {
        public C12096w() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends View> apply(@NotNull MagnifierEventHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FrameLayout magnifierLayout = MagnifierEventHandler.this.magnifierRootLayout.magnifierLayout;
            Intrinsics.checkNotNullExpressionValue(magnifierLayout, "magnifierLayout");
            return ViewKt.post(magnifierLayout);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$x */
    /* loaded from: classes9.dex */
    public static final class C12097x<T, R> implements Function {
        public C12097x() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull View it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.postVirtualDocViewInfo(MagnifierEventHandler.this.focusEditorBundle);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$y */
    /* loaded from: classes9.dex */
    public static final class C12098y<T> implements Consumer {
        public C12098y() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MagnifierEventHandler.this.m46147a0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$z */
    /* loaded from: classes9.dex */
    public static final class C12099z<T, R> implements Function {
        public C12099z() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScaleAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ScaleAction(MagnifierEventHandler.this.getEditorBundle(), EditorBundleKt.actualScale(MagnifierEventHandler.this.getEditorBundle()), 0.0f, 0.0f, 12, null).build();
        }
    }

    public /* synthetic */ MagnifierEventHandler(NoteScribbleFragment noteScribbleFragment, EditorViewDragLayoutBinding editorViewDragLayoutBinding, EditorBundle editorBundle, EditorBundle editorBundle2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(noteScribbleFragment, editorViewDragLayoutBinding, editorBundle, (i & 8) != 0 ? EditorBundle.INSTANCE.createInstance() : editorBundle2);
    }

    /* renamed from: A */
    public static final void m46103A(MagnifierEventHandler this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46155j0();
    }

    /* renamed from: B */
    public static final void m46104B(MagnifierEventHandler this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.magnifierViewportView.moveUp(-10.0f);
    }

    /* renamed from: C */
    public static final void m46105C(MagnifierEventHandler this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.magnifierViewportView.moveDown(10.0f);
    }

    /* renamed from: D */
    public static final void m46106D(MagnifierEventHandler this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46157l0();
    }

    /* renamed from: E */
    public static final void m46107E(MagnifierEventHandler this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m46132s(this$0, false, 1, null);
    }

    /* renamed from: F */
    public static final boolean m46108F(MagnifierEventHandler this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hitTestNewLineFilter.onNext(Float.valueOf(-1.0f));
        return false;
    }

    /* renamed from: G */
    public static final void m46109G(MagnifierEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46151f0();
    }

    /* renamed from: L */
    public static /* synthetic */ void m46110L(MagnifierEventHandler magnifierEventHandler, VirtualDocViewInfo virtualDocViewInfo, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        magnifierEventHandler.m46138K(virtualDocViewInfo, z);
    }

    /* renamed from: O */
    public static /* synthetic */ Observable m46111O(MagnifierEventHandler magnifierEventHandler, Matrix matrix, int i, Object obj) {
        if ((i & 1) != 0) {
            matrix = MathUtils.INSTANCE.getEMPTY_MATRIX();
        }
        return magnifierEventHandler.m46139M(matrix);
    }

    /* renamed from: P */
    public static /* synthetic */ Observable m46112P(MagnifierEventHandler magnifierEventHandler, VirtualDocViewInfo virtualDocViewInfo, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return magnifierEventHandler.m46140N(virtualDocViewInfo, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: R */
    public static /* synthetic */ void m46113R(MagnifierEventHandler magnifierEventHandler, final RectF rectF, BoxInfo boxInfo, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 1;
        }
        if ((i2 & 8) != 0) {
            function1 = new Function1<BoxInfo, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateToNextPage$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(BoxInfo boxInfo2) {
                    invoke2(boxInfo2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull BoxInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    rectF.offsetTo(it2.getOriginRectFWithMargin().left, it2.getOriginRectFWithMargin().top);
                }
            };
        }
        magnifierEventHandler.m46141Q(rectF, boxInfo, i, function1);
    }

    /* renamed from: S */
    public static final void m46114S(MagnifierEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46163p();
        this$0.m46144X().subscribe();
    }

    /* renamed from: U */
    public static final void m46115U(MagnifierEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46143W();
    }

    /* renamed from: V */
    public static final void m46116V(MagnifierEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.m46136I()) {
            if (this$0.m46135H()) {
                this$0.m46152g0();
            } else {
                m46132s(this$0, false, 1, null);
            }
        }
    }

    /* renamed from: c0 */
    public static final void m46120c0(final MagnifierEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RelativeLayout editorViewContainer = this$0.focusEditorViewContainerBiding.editorViewContainer;
        Intrinsics.checkNotNullExpressionValue(editorViewContainer, "editorViewContainer");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutMargin(editorViewContainer, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$updateMagnifierLayoutSize$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                LinearLayout linearLayout;
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                linearLayout = MagnifierEventHandler.this.magnifierEditorContainer;
                setLayoutMargin.bottomMargin = linearLayout.getHeight();
            }
        });
    }

    /* renamed from: p0 */
    public static /* synthetic */ void m46131p0(MagnifierEventHandler magnifierEventHandler, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = magnifierEventHandler.magnifierViewportView.getNewLineOffset();
        }
        magnifierEventHandler.m46162o0(f);
    }

    /* renamed from: s */
    public static /* synthetic */ void m46132s(MagnifierEventHandler magnifierEventHandler, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        magnifierEventHandler.m46165r(z);
    }

    /* renamed from: y */
    public static final boolean m46133y(View view, MotionEvent motionEvent) {
        return true;
    }

    /* renamed from: z */
    public static final void m46134z(MagnifierEventHandler this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46153h0();
    }

    /* renamed from: H */
    public final boolean m46135H() {
        if (this.fragment.getPenViewModel$note_overseasRelease().isPenDrawing()) {
            return true;
        }
        ShapeToolType value = this.fragment.getPenViewModel$note_overseasRelease().getPenType().getValue();
        return value == ShapeToolType.ERASER || value == ShapeToolType.GRAPH_PEN;
    }

    /* renamed from: I */
    public final boolean m46136I() {
        return this.magnifierEditorContainer.getVisibility() == 0;
    }

    /* renamed from: J */
    public final boolean m46137J() {
        return SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(this.magnifierViewportContainer)).contains(this.magnifierViewportView.getLocationRect());
    }

    /* renamed from: K */
    public final void m46138K(VirtualDocViewInfo virtualDocViewInfo, boolean forceCollectVirtualDocViewInfo) {
        m46140N(virtualDocViewInfo, forceCollectVirtualDocViewInfo).subscribe();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.graphics.RectF, T] */
    /* renamed from: M */
    public final Observable<RectF> m46139M(Matrix displayMatrix) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = RectFKt.copy(SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(this.magnifierEditorView)));
        Ref.FloatRef floatRef = new Ref.FloatRef();
        floatRef.element = ((RectF) objectRef.element).width();
        Ref.FloatRef floatRef2 = new Ref.FloatRef();
        floatRef2.element = floatRef.element;
        float currentMinScale = EditorBundleKt.currentMinScale(getEditorBundle());
        Observable<RectF> doOnNext = m46166t(EditorBundleKt.virtualDocViewInfo(getEditorBundle())).filter(C12071i.f58764e).doOnNext(new C12073j(floatRef, objectRef, this, currentMinScale)).doOnNext(new C12075k(floatRef2, objectRef, this, currentMinScale)).doOnNext(new C12077l(objectRef)).flatMap(new C12085m()).filter(C12087n.f58788e).doOnNext(new C12088o(floatRef2)).doOnNext(new C12089p(floatRef)).doOnNext(new C12090q(floatRef, floatRef2)).map(new C12065f(objectRef)).doOnNext(new C12067g(displayMatrix)).doOnNext(new C12069h());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: N */
    public final Observable<?> m46140N(VirtualDocViewInfo virtualDocViewInfo, final boolean forceCollectVirtualDocViewInfo) {
        if (!com.onyx.android.sdk.base.extension.ViewKt.isVisible(this.magnifierViewportView) || this.magnifierViewportStateChangedListener.isProcessing() || this.focusEditorScrolling) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundleKt.updateVirtualDocViewInfo(getEditorBundle(), virtualDocViewInfo);
        final RectF copy = RectFKt.copy(SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(this.magnifierViewportContainer)));
        return RxjavaKt.flatMapIf(m46111O(this, null, 1, null), new Function1<RectF, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$13
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!RectKt.expand(RectFKt.copy(copy), 1.0f).contains(it2));
            }
        }, new Function1<RectF, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14

            /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a */
            /* loaded from: classes9.dex */
            public static final class C12083a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ MagnifierEventHandler f58781e;

                /* renamed from: f */
                public final /* synthetic */ Ref.ObjectRef<BoxInfo> f58782f;

                /* renamed from: g */
                public final /* synthetic */ RectF f58783g;

                public C12083a(MagnifierEventHandler magnifierEventHandler, Ref.ObjectRef<BoxInfo> objectRef, RectF rectF) {
                    this.f58781e = magnifierEventHandler;
                    this.f58782f = objectRef;
                    this.f58783g = rectF;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends LocateShapeRectInPageAction> apply(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new LocateShapeRectInPageAction(this.f58781e.focusEditorBundle, this.f58782f.element.getId(), this.f58783g).build();
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14$b */
            /* loaded from: classes9.dex */
            public static final class C12084b<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ MagnifierEventHandler f58784e;

                public C12084b(MagnifierEventHandler magnifierEventHandler) {
                    this.f58784e = magnifierEventHandler;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends RectF> apply(@NotNull RxBaseAppAction<?> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return MagnifierEventHandler.m46111O(this.f58784e, null, 1, null);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v18, types: [T, com.onyx.android.sdk.geometry.data.BoxInfo] */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull RectF viewportRectF) {
                EditorView editorView;
                Observable<LocateSrcViewRectInTargetPageAction> build;
                Intrinsics.checkNotNullParameter(viewportRectF, "viewportRectF");
                if (viewportRectF.width() <= copy.width() && viewportRectF.height() <= copy.height()) {
                    PointF calculateOffsetToViewport = com.onyx.android.sdk.geometry.extension.RectFKt.calculateOffsetToViewport(viewportRectF, copy);
                    copy.offset(calculateOffsetToViewport.x, calculateOffsetToViewport.y);
                    final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    ?? ensureFirstVisibleBoxInfo = EditorBundleKt.ensureFirstVisibleBoxInfo(this.focusEditorBundle);
                    objectRef.element = ensureFirstVisibleBoxInfo;
                    final RectF mapToShapeRect = BoxInfoUtils.INSTANCE.mapToShapeRect(copy, ensureFirstVisibleBoxInfo);
                    Observable just2 = Observable.just(this);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
                    final MagnifierEventHandler magnifierEventHandler = this;
                    Function1<MagnifierEventHandler, Boolean> function1 = new Function1<MagnifierEventHandler, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14.2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull MagnifierEventHandler it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            return Boolean.valueOf(!DocOptionsActionsKt.isEnabledContinuousPage(MagnifierEventHandler.this.focusEditorBundle));
                        }
                    };
                    final MagnifierEventHandler magnifierEventHandler2 = this;
                    build = RxjavaKt.flatMapIf(just2, function1, new Function1<MagnifierEventHandler, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14.3

                        /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$a */
                        /* loaded from: classes9.dex */
                        public static final class a<T> implements Consumer {

                            /* renamed from: e */
                            public final /* synthetic */ Ref.ObjectRef<BoxInfo> f58780e;

                            public a(Ref.ObjectRef<BoxInfo> objectRef) {
                                this.f58780e = objectRef;
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // io.reactivex.rxjava3.functions.Consumer
                            /* renamed from: a, reason: merged with bridge method [inline-methods] */
                            public final void accept(@NotNull BoxInfo it2) {
                                Intrinsics.checkNotNullParameter(it2, "it");
                                this.f58780e.element = it2;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Observable<? extends Object> invoke(@NotNull MagnifierEventHandler it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            EditorBundle editorBundle = MagnifierEventHandler.this.focusEditorBundle;
                            final RectF rectF = mapToShapeRect;
                            final Ref.ObjectRef<BoxInfo> objectRef2 = objectRef;
                            Observable<? extends Object> doOnNext = DocCommonActionsKt.createCoreObservable(editorBundle, new Function1<WorkBundle, BoxInfo>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler.locateFocusEditorViewRectObservable.14.3.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                @NotNull
                                public final BoxInfo invoke(@NotNull WorkBundle workBundle) {
                                    Object obj;
                                    Intrinsics.checkNotNullParameter(workBundle, "workBundle");
                                    List<BoxInfo> collectIntersectsVisibleBoxList = WorkBundleKt.collectIntersectsVisibleBoxList(workBundle, rectF, objectRef2.element);
                                    Ref.ObjectRef<BoxInfo> objectRef3 = objectRef2;
                                    Iterator<T> it3 = collectIntersectsVisibleBoxList.iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            obj = null;
                                            break;
                                        }
                                        obj = it3.next();
                                        if (!Intrinsics.areEqual(((BoxInfo) obj).getId(), objectRef3.element.getId())) {
                                            break;
                                        }
                                    }
                                    BoxInfo boxInfo = (BoxInfo) obj;
                                    return boxInfo == null ? objectRef2.element : boxInfo;
                                }
                            }).doOnNext(new a(objectRef));
                            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                            return doOnNext;
                        }
                    }).flatMap(new C12083a(this, objectRef, mapToShapeRect));
                } else {
                    EditorBundle editorBundle = this.getEditorBundle();
                    EditorBundle editorBundle2 = this.focusEditorBundle;
                    editorView = this.magnifierEditorView;
                    build = new LocateSrcViewRectInTargetPageAction(editorBundle, editorBundle2, SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(editorView)), null, 8, null).build();
                }
                Observable<R> flatMap = build.flatMap(new C12084b(this));
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                final boolean z = forceCollectVirtualDocViewInfo;
                Function1<RectF, Boolean> function12 = new Function1<RectF, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14.6
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull RectF it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(z);
                    }
                };
                final MagnifierEventHandler magnifierEventHandler3 = this;
                return RxjavaKt.flatMapIf(flatMap, function12, new Function1<RectF, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateFocusEditorViewRectObservable$14.7
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Observable<? extends Object> invoke(@NotNull RectF it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return DocCommonActionsKt.postVirtualDocViewInfo(MagnifierEventHandler.this.getEditorBundle());
                    }
                });
            }
        });
    }

    /* renamed from: Q */
    public final void m46141Q(RectF shapeRectF, final BoxInfo currentBoxInfo, final int offsetStep, Function1<? super BoxInfo, Unit> onNext) {
        DocCommonActionsKt.createCoreObservable(this.focusEditorBundle, new Function1<WorkBundle, AtomicReference<BoxInfo>>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$locateToNextPage$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final AtomicReference<BoxInfo> invoke(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new AtomicReference<>(WorkBundleKt.obtainBoxManager(it2).getBoxInfoByIndex(WorkBundleKt.obtainBoxManager(it2).indexOf(BoxInfo.this.getId()) + offsetStep));
            }
        }).filter(C12091r.f58794e).map(C12092s.f58795e).doOnNext(new C12093t(onNext)).flatMap(new C12094u(shapeRectF)).subscribe();
    }

    /* renamed from: T */
    public final void m46142T() {
        if (Intrinsics.areEqual(EditorBundleKt.docId(this.focusEditorBundle), EditorBundleKt.docId(getEditorBundle()))) {
            return;
        }
        m46150e0();
        if (!this.fragment.getViewModel().getMagnifierStatus(EditorBundleKt.docId(this.focusEditorBundle))) {
            m46165r(true);
        } else {
            this.magnifierViewportView.setVisibility(4);
            DocCommonActionsKt.ensureCloseDoc(getEditorBundle()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.p6j
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    MagnifierEventHandler.m46115U(MagnifierEventHandler.this);
                }
            }).subscribe();
        }
    }

    /* renamed from: W */
    public final void m46143W() {
        this.focusEditorStandardMinScale = EditorBundleKt.currentMinScale(this.focusEditorBundle);
        this.magnifierRootLayout.magnifierNewLineAreaView.onLayoutChanged();
        this.magnifierEditorContainer.setVisibility(0);
        this.magnifierActionContainer.setVisibility(0);
        this.magnifierViewportContainer.setVisibility(0);
        m46148b0();
        m46151f0();
        EditorBundleKt.postEvent(this.focusEditorBundle, new HideRulerEvent());
        EditorBundleKt.touchStateInfo(this.focusEditorBundle).setShapeTouchEnabled(false);
        EditorBundleKt.touchStateInfo(this.focusEditorBundle).setTextSelectionTouchEnabled(false);
        EditorBundleKt.handlerManager(this.focusEditorBundle).setEnabledLongPress(false);
        EditorBundleKt.handlerManager(this.focusEditorBundle).setEnabledStylusTouchProcess(true);
        m46149d0(true);
        m46152g0();
        m46159n();
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [android.graphics.RectF, T] */
    /* renamed from: X */
    public final Observable<?> m46144X() {
        String id = EditorBundleKt.currentVisibleBoxInfo(this.focusEditorBundle).getId();
        RectF viewportRect = EditorBundleKt.viewportRect(getEditorBundle());
        final IdentifyRectF magnifierViewport = this.fragment.getViewModel().getMagnifierViewport(EditorBundleKt.docId(getEditorBundle()));
        RectF m46169w = m46169w(magnifierViewport);
        if (!(!m46169w.isEmpty())) {
            m46169w = null;
        }
        RectF rectF = (RectF) AnyKt.getOrElse(m46169w, new Function0<RectF>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$resetToMagnifierViewportArea$viewRectF$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RectF invoke() {
                Size m46151f0;
                m46151f0 = MagnifierEventHandler.this.m46151f0();
                return SizeKt.toRectF(m46151f0);
            }
        });
        RectF rectF2 = SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(this.magnifierViewportContainer));
        RectF visibleBoundingRect = EditorBundleKt.visibleBoundingRect(this.focusEditorBundle);
        if (!RectF.intersects(rectF2, rectF)) {
            float f = 2;
            rectF.offsetTo(rectF2.centerX() - (rectF.width() / f), rectF2.centerY() - (rectF.height() / f));
        } else if (!RectF.intersects(visibleBoundingRect, rectF)) {
            rectF.offsetTo(visibleBoundingRect.left, visibleBoundingRect.top);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new RectF();
        MagnifierViewportView.moveTo$default(this.magnifierViewportView, rectF, false, 2, null);
        Observable observeOn = ViewKt.post(this.magnifierViewportView).doOnNext(new C12058b0(objectRef, this)).doOnNext(new C12060c0()).flatMap(new C12062d0(id, viewportRect)).flatMap(new C12064e0()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<?> doOnNext = RxjavaKt.flatMapIf(observeOn, new Function1<ScaleAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$resetToMagnifierViewportArea$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ScaleAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!objectRef.element.isEmpty());
            }
        }, new Function1<ScaleAction, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$resetToMagnifierViewportArea$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ScaleAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new LocateSrcViewRectInTargetPageAction(MagnifierEventHandler.this.focusEditorBundle, MagnifierEventHandler.this.getEditorBundle(), objectRef.element, magnifierViewport.getId()).build();
            }
        }).doOnNext(new C12066f0()).doOnNext(new C12068g0());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: Y */
    public final void m46145Y(float offsetX, float offsetY) {
        EditorBundle editorBundle = getEditorBundle();
        EditorBundleKt.postEvent(editorBundle, new ScrollBeginEvent(0.0f, 0.0f));
        EditorBundleKt.postEvent(editorBundle, new ScrollingEvent(offsetX * m46168v(), offsetY * m46168v(), 0, 4, null));
    }

    /* renamed from: Z */
    public final void m46146Z() {
        if (com.onyx.android.sdk.base.extension.ViewKt.isVisible(this.magnifierEditorContainer)) {
            m46132s(this, false, 1, null);
        } else {
            m46143W();
        }
    }

    /* renamed from: a0 */
    public final void m46147a0() {
        Range<Float> between;
        if (EditorBundleKt.getUiFeature(this.focusEditorBundle).limitShapeRectInCurrentPage()) {
            between = Range.between(Float.valueOf(EditorBundleKt.currentToViewportWidthScale(getEditorBundle()) / EditorBundleKt.currentMinScale(getEditorBundle())), ScaleConfig.INSTANCE.getPageScaleRange().getMaximum());
        } else {
            Range<Float> draftNoteScaleRange = ScaleConfig.INSTANCE.getDraftNoteScaleRange();
            between = Range.between(Float.valueOf(draftNoteScaleRange.getMinimum().floatValue() * 2.0f), Float.valueOf(draftNoteScaleRange.getMaximum().floatValue() / 4.0f));
        }
        this.scalePage = between;
        getEditorBundle().getWorkBundle().setCustomScaleRange(between);
    }

    /* renamed from: b0 */
    public final void m46148b0() {
        FrameLayout magnifierLayout = this.magnifierRootLayout.magnifierLayout;
        Intrinsics.checkNotNullExpressionValue(magnifierLayout, "magnifierLayout");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutHeight(magnifierLayout, Float.valueOf(this.focusEditorViewContainerBiding.getRoot().getHeight() * 0.45f));
        this.magnifierRootLayout.magnifierLayout.post(new Runnable() { // from class: com.sunia.HTREnginev2.m6j
            @Override // java.lang.Runnable
            public final void run() {
                MagnifierEventHandler.m46120c0(MagnifierEventHandler.this);
            }
        });
    }

    /* renamed from: d0 */
    public final void m46149d0(boolean status) {
        this.fragment.getViewModel().updateMagnifierStatus(EditorBundleKt.docId(this.focusEditorBundle), status);
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        this.hitTestNewLineFilter.dispose();
        GlobalBundle.INSTANCE.unregister(this);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        m46165r(true);
        this.editorBundleManager.unregisterEditorBundle(getEditorBundle());
        this.magnifierViewportStateChangedListener.destroy();
        super.destroy();
    }

    /* renamed from: e0 */
    public final void m46150e0() {
        if (m46136I()) {
            m46166t(EditorBundleKt.virtualDocViewInfo(getEditorBundle())).filter(C12070h0.f58763e).doOnNext(new C12072i0(RectFKt.copy(SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(this.magnifierEditorView))), this, EditorBundleKt.docId(getEditorBundle()))).subscribe();
        }
    }

    /* renamed from: f0 */
    public final Size m46151f0() {
        FrameLayout magnifierLayout = this.magnifierRootLayout.magnifierLayout;
        Intrinsics.checkNotNullExpressionValue(magnifierLayout, "magnifierLayout");
        int measuredWidth = (int) (magnifierLayout.getMeasuredWidth() / 5.0f);
        int measuredHeight = (int) (magnifierLayout.getMeasuredHeight() / 5.0f);
        MagnifierViewportView magnifierViewportView = this.magnifierViewportView;
        ViewGroup.LayoutParams layoutParams = magnifierViewportView.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.width = measuredWidth;
        layoutParams.height = measuredHeight;
        magnifierViewportView.setLayoutParams(layoutParams);
        return new Size(measuredWidth, measuredHeight);
    }

    /* renamed from: g0 */
    public final void m46152g0() {
        GlobalBundle.INSTANCE.postEvent(new MagnifierToolEvent(m46136I()));
    }

    @NotNull
    public final NoteScribbleFragment getFragment() {
        return this.fragment;
    }

    /* renamed from: h0 */
    public final void m46153h0() {
        (!m46137J() ? m46112P(this, EditorBundleKt.virtualDocViewInfo(getEditorBundle()), false, 2, null) : Observable.just(this)).doOnNext(new C12074j0()).subscribe();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.graphics.RectF, T] */
    /* JADX WARN: Type inference failed for: r7v4, types: [android.graphics.RectF, T] */
    /* renamed from: i0 */
    public final void m46154i0() {
        Object firstOrNull;
        if (!EditorBundleKt.getUiFeature(this.focusEditorBundle).limitShapeRectInCurrentPage()) {
            MagnifierViewportView.moveLeft$default(this.magnifierViewportView, 0.0f, 0.0f, 3, null);
            return;
        }
        RectF locationRect = this.magnifierViewportView.getLocationRect();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) EditorBundleKt.findIntersectsVisibleBoxList(this.focusEditorBundle, locationRect));
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo == null) {
            this.magnifierViewportView.moveDefaultLeft();
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        ?? mapToShapeRect = boxInfoUtils.mapToShapeRect(locationRect, boxInfo);
        objectRef.element = mapToShapeRect;
        if (((RectF) mapToShapeRect).left - boxInfo.getOriginRectFWithMargin().left < 5.0f) {
            if (((RectF) objectRef.element).top - boxInfo.getOriginRectFWithMargin().top < 5.0f) {
                m46141Q((RectF) objectRef.element, boxInfo, -1, new Function1<BoxInfo, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$viewportMoveLeftImpl$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(BoxInfo boxInfo2) {
                        invoke2(boxInfo2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull BoxInfo it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        objectRef.element.offsetTo(it2.getOriginRectFWithMargin().right - objectRef.element.width(), it2.getOriginRectFWithMargin().bottom - objectRef.element.height());
                    }
                });
                return;
            } else {
                m46160n0();
                return;
            }
        }
        RectF rectF = SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(this.magnifierViewportContainer));
        float f = locationRect.left - rectF.left;
        locationRect.offset(-this.magnifierViewportView.getDefaultXOffset(), 0.0f);
        ?? mapToShapeRect2 = boxInfoUtils.mapToShapeRect(locationRect, boxInfo);
        objectRef.element = mapToShapeRect2;
        float f2 = ((RectF) mapToShapeRect2).left - boxInfo.getOriginRectFWithMargin().left;
        if (f2 >= 0.0f || f <= 0.0f) {
            if (locationRect.left - rectF.left < 0.0f) {
                m46145Y(-this.magnifierViewportView.getDefaultXOffset(), 0.0f);
                return;
            } else {
                this.magnifierViewportView.moveDefaultLeft();
                return;
            }
        }
        ((RectF) objectRef.element).offset(-f2, 0.0f);
        float f3 = boxInfoUtils.mapToScreenRectF((RectF) objectRef.element, boxInfo).right - this.magnifierViewportView.getLocationRect().right;
        if (f3 >= 0.0f) {
            m46160n0();
        } else {
            m46145Y(f3, 0.0f);
        }
    }

    /* renamed from: j0 */
    public final void m46155j0() {
        (!m46137J() ? m46112P(this, EditorBundleKt.virtualDocViewInfo(getEditorBundle()), false, 2, null) : Observable.just(this)).doOnNext(new C12076k0()).subscribe();
    }

    /* renamed from: k0 */
    public final void m46156k0() {
        Object firstOrNull;
        if (!EditorBundleKt.getUiFeature(this.focusEditorBundle).limitShapeRectInCurrentPage()) {
            MagnifierViewportView.moveRight$default(this.magnifierViewportView, 0.0f, 0.0f, 3, null);
            return;
        }
        RectF locationRect = this.magnifierViewportView.getLocationRect();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) EditorBundleKt.findIntersectsVisibleBoxList(this.focusEditorBundle, locationRect));
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo == null) {
            this.magnifierViewportView.moveDefaultRight();
            return;
        }
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        RectF mapToShapeRect = boxInfoUtils.mapToShapeRect(locationRect, boxInfo);
        if (mapToShapeRect.right - boxInfo.getOriginRectFWithMargin().right > -5.0f) {
            if (mapToShapeRect.bottom - boxInfo.getOriginRectFWithMargin().bottom > -5.0f) {
                m46113R(this, mapToShapeRect, boxInfo, 0, null, 12, null);
                return;
            } else {
                m46158m0();
                return;
            }
        }
        RectF rectF = SizeKt.toRectF(com.onyx.android.sdk.base.extension.ViewKt.getSize(this.magnifierViewportContainer));
        float f = locationRect.right - rectF.right;
        locationRect.offset(this.magnifierViewportView.getDefaultXOffset(), 0.0f);
        RectF mapToShapeRect2 = boxInfoUtils.mapToShapeRect(locationRect, boxInfo);
        float f2 = mapToShapeRect2.right - boxInfo.getOriginRectFWithMargin().right;
        if (f2 <= 0.0f || f >= 0.0f) {
            if (locationRect.right - rectF.right > 0.0f) {
                m46145Y(this.magnifierViewportView.getDefaultXOffset(), 0.0f);
                return;
            } else {
                this.magnifierViewportView.moveDefaultRight();
                return;
            }
        }
        mapToShapeRect2.offset(-f2, 0.0f);
        float floatValue = ((Number) com.onyx.android.sdk.base.utils.MathUtils.INSTANCE.atLeast(Float.valueOf(boxInfoUtils.mapToScreenRectF(mapToShapeRect2, boxInfo).left - this.magnifierViewportView.getLocationRect().left), Float.valueOf(0.0f))).floatValue();
        if (floatValue <= 0.0f) {
            m46158m0();
        } else {
            m46145Y(floatValue, 0.0f);
        }
    }

    /* renamed from: l0 */
    public final void m46157l0() {
        (!m46137J() ? m46112P(this, EditorBundleKt.virtualDocViewInfo(getEditorBundle()), false, 2, null) : Observable.just(this)).doOnNext(new C12078l0()).subscribe();
    }

    /* renamed from: m0 */
    public final void m46158m0() {
        Object firstOrNull;
        Object firstOrNull2;
        float newLineOffset = this.magnifierViewportView.getNewLineOffset();
        if (!EditorBundleKt.getUiFeature(this.focusEditorBundle).limitShapeRectInCurrentPage()) {
            this.magnifierViewportView.newLine();
            return;
        }
        RectF locationRect = this.magnifierViewportView.getLocationRect();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) EditorBundleKt.findIntersectsVisibleBoxList(this.focusEditorBundle, locationRect));
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        RectF copy = RectFKt.copy(locationRect);
        copy.offset(0.0f, newLineOffset);
        firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) EditorBundleKt.findIntersectsVisibleBoxList(this.focusEditorBundle, copy));
        BoxInfo boxInfo2 = (BoxInfo) firstOrNull2;
        if (boxInfo == null) {
            this.magnifierViewportView.newLine();
            return;
        }
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        RectF mapToShapeRect = boxInfoUtils.mapToShapeRect(locationRect, boxInfo);
        if (boxInfo2 == null || mapToShapeRect.bottom - boxInfo.getOriginRectFWithMargin().bottom > -5.0f) {
            m46113R(this, mapToShapeRect, boxInfo, 1, null, 8, null);
            return;
        }
        RectF mapToShapeRect2 = boxInfoUtils.mapToShapeRect(copy, boxInfo2);
        mapToShapeRect2.offsetTo(boxInfo2.getOriginRectFWithMargin().left, mapToShapeRect2.top);
        RxBaseAction.execute$default(new LocateShapeRectInPageAction(getEditorBundle(), boxInfo2.getId(), mapToShapeRect2), null, null, null, 7, null);
    }

    /* renamed from: n */
    public final void m46159n() {
        String id = EditorBundleKt.currentVisibleBoxInfo(this.focusEditorBundle).getId();
        String docId = EditorBundleKt.docId(this.focusEditorBundle);
        SaveDocumentAction saveDocumentAction = new SaveDocumentAction(this.focusEditorBundle);
        saveDocumentAction.setForceSave(true);
        saveDocumentAction.build().doOnNext(new C12059c(docId, id)).subscribe();
    }

    /* renamed from: n0 */
    public final void m46160n0() {
        (!m46137J() ? m46112P(this, EditorBundleKt.virtualDocViewInfo(getEditorBundle()), false, 2, null) : Observable.just(this)).doOnNext(new C12086m0(-this.magnifierViewportView.getNewLineOffset())).subscribe();
    }

    /* renamed from: o */
    public final void m46161o() {
        PenArgs selectedPenArgs;
        PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
        if (companion.hasSelectedPen() && (selectedPenArgs = PencilBoxManager.Companion.getPenBox$default(companion, null, 1, null).getSelectedPenArgs()) != null) {
            ShapeToolType.Companion companion2 = ShapeToolType.INSTANCE;
            ShapeToolType shapeToolType = companion2.getShapeToolType(selectedPenArgs.getType(), ShapeToolType.INK_PEN);
            Intrinsics.checkNotNull(shapeToolType);
            EditorBundleKt.postEvent(getEditorBundle(), new ActivateShapeHandlerEvent(companion2.toShapeHandlerProviderName(shapeToolType), true, Integer.valueOf(shapeToolType.getShapeType())));
        }
    }

    /* renamed from: o0 */
    public final void m46162o0(float dy) {
        Object firstOrNull;
        Object firstOrNull2;
        if (!EditorBundleKt.getUiFeature(this.focusEditorBundle).limitShapeRectInCurrentPage()) {
            this.magnifierViewportView.newLine();
            return;
        }
        RectF locationRect = this.magnifierViewportView.getLocationRect();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) EditorBundleKt.findIntersectsVisibleBoxList(this.focusEditorBundle, locationRect));
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        RectF copy = RectFKt.copy(locationRect);
        copy.offset(0.0f, dy);
        firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) EditorBundleKt.findIntersectsVisibleBoxList(this.focusEditorBundle, copy));
        BoxInfo boxInfo2 = (BoxInfo) firstOrNull2;
        if (boxInfo2 == null || boxInfo == null) {
            this.magnifierViewportView.newLine();
            return;
        }
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        final RectF mapToShapeRect = boxInfoUtils.mapToShapeRect(locationRect, boxInfo);
        if (boxInfo.getOriginRectFWithMargin().top - mapToShapeRect.top > -5.0f) {
            m46141Q(mapToShapeRect, boxInfo, -1, new Function1<BoxInfo, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$viewportPreviousLineImpl$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(BoxInfo boxInfo3) {
                    invoke2(boxInfo3);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull BoxInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    mapToShapeRect.offsetTo(it2.getOriginRectFWithMargin().right - mapToShapeRect.width(), it2.getOriginRectFWithMargin().bottom - mapToShapeRect.height());
                }
            });
            return;
        }
        RectF mapToShapeRect2 = boxInfoUtils.mapToShapeRect(copy, boxInfo2);
        mapToShapeRect2.offsetTo(boxInfo2.getOriginRectFWithMargin().right - mapToShapeRect2.width(), mapToShapeRect2.top);
        RxBaseAction.execute$default(new LocateShapeRectInPageAction(getEditorBundle(), boxInfo2.getId(), mapToShapeRect2), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAddShapesEvent(@NotNull AddShapesEvent event) {
        Object lastOrNull;
        Object obj;
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(this.focusEditorBundle, event);
        if (com.onyx.android.sdk.base.extension.ViewKt.isVisible(this.magnifierRootLayout.magnifierNewLineAreaView)) {
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) event.getList());
            Shape shape = (Shape) lastOrNull;
            if (shape == null) {
                return;
            }
            Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it2.next();
                    if (Intrinsics.areEqual(shape.getPageUniqueId(), ((BoxInfo) obj).getId())) {
                        break;
                    }
                }
            }
            BoxInfo boxInfo = (BoxInfo) obj;
            if (boxInfo == null) {
                return;
            }
            RectF mapToScreenRectF = BoxInfoUtils.INSTANCE.mapToScreenRectF(shape.getBoundingRect(), boxInfo);
            MagnifierNewLineAreaView magnifierNewLineAreaView = this.magnifierRootLayout.magnifierNewLineAreaView;
            Intrinsics.checkNotNull(magnifierNewLineAreaView);
            RectF rectF = new RectF(com.onyx.android.sdk.base.extension.ViewKt.relativelyParentRect(magnifierNewLineAreaView));
            rectF.offset(magnifierNewLineAreaView.getRealRect().left, 0.0f);
            if (mapToScreenRectF.intersect(rectF)) {
                this.hitTestNewLineFilter.onNext(Float.valueOf(Math.max(mapToScreenRectF.height() / 2.0f, this.magnifierViewportView.getNewLineMinOffset())));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTouchModeEvent(@NotNull ChangeTouchModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!EditorBundleKt.isDocumentOpen(getEditorBundle())) {
            EditorBundleKt.handlerManager(getEditorBundle()).updateTouchMode(event.getNewTouchMode());
        }
        if (event.getNewTouchMode().isReadingMode()) {
            m46132s(this, false, 1, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onContentViewSizeUpdateDoneEvent(@NotNull ContentViewSizeUpdateDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m46136I()) {
            Observable.just(this).doOnNext(new C12095v()).flatMap(new C12096w()).flatMap(new C12097x()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C12098y()).flatMap(new C12099z()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12056a0()).subscribe();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.o6j
            @Override // java.lang.Runnable
            public final void run() {
                MagnifierEventHandler.m46114S(MagnifierEventHandler.this);
            }
        });
    }

    @Override // com.onyx.android.sdk.universal.editor.view.EditorViewDownListener
    public void onDown(@NotNull String id) {
        Object obj;
        String id2;
        Intrinsics.checkNotNullParameter(id, "id");
        this.fragment.onDown(EditorBundleKt.docId(this.focusEditorBundle));
        Iterator<T> it2 = this.editorBundleManager.getEditorViewHandlers().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((EditorViewHandler) obj).getEditorBundle(), this.focusEditorBundle)) {
                    break;
                }
            }
        }
        EditorViewHandler editorViewHandler = (EditorViewHandler) obj;
        if (editorViewHandler == null || (id2 = editorViewHandler.getId()) == null) {
            return;
        }
        this.editorBundleManager.onDown(id2);
        if (m46135H() || !m46136I()) {
            return;
        }
        m46163p();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorBundleChangedEvent(@NotNull EditorBundleChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getCurrent(), this.focusEditorBundle)) {
            m46152g0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMagniferEvent(@NotNull MagnifierEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(this.editorBundleManager.focusEditorBundle(), this.focusEditorBundle)) {
            m46146Z();
            if (m46136I()) {
                OpenMagnifierGuideAction openMagnifierGuideAction = new OpenMagnifierGuideAction();
                Context requireContext = this.fragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                openMagnifierGuideAction.setActivityContext(requireContext);
                RxBaseAction.execute$default(openMagnifierGuideAction, null, null, null, 7, null);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMagnifierAutoForwardMoveEvent(@NotNull MagnifierAutoForwardMoveEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this.magnifierRootLayout.magnifierNewLineAreaView, event.getAutoMove());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMagnifierCheckEvent(@NotNull MagnifierCheckEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46152g0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRulerEvent(@NotNull RulerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46132s(this, false, 1, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapeToolTypeChangedEvent(@NotNull ShapeToolTypeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(this.editorBundleManager.focusEditorBundle(), this.focusEditorBundle)) {
            RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.n6j
                @Override // java.lang.Runnable
                public final void run() {
                    MagnifierEventHandler.m46116V(MagnifierEventHandler.this);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSingleClickEvent(@NotNull SingleClickEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46110L(this, EditorBundleKt.virtualDocViewInfo(getEditorBundle()), false, 2, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46110L(this, event.getVirtualDocViewInfo(), false, 2, null);
    }

    /* renamed from: p */
    public final void m46163p() {
        if (!m46135H()) {
            this.fragment.ensureSwitchUserTool$note_overseasRelease(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().ensurePenShapeToolType());
        } else if (this.fragment.getPenViewModel$note_overseasRelease().isPenDrawing()) {
            m46161o();
        }
    }

    /* renamed from: q */
    public final void m46164q(float newLineOffset) {
        if (newLineOffset < 0.0f) {
            return;
        }
        m46155j0();
    }

    /* renamed from: r */
    public final void m46165r(boolean force) {
        m46150e0();
        m46149d0(false);
        this.magnifierEditorContainer.setVisibility(4);
        this.magnifierActionContainer.setVisibility(4);
        this.magnifierViewportContainer.setVisibility(8);
        this.magnifierViewportView.setVisibility(4);
        RelativeLayout editorViewContainer = this.focusEditorViewContainerBiding.editorViewContainer;
        Intrinsics.checkNotNullExpressionValue(editorViewContainer, "editorViewContainer");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutMargin(editorViewContainer, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$closeMagnifier$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                setLayoutMargin.bottomMargin = 0;
            }
        });
        if (force || EditorBundleKt.isDocumentOpen(getEditorBundle())) {
            EditorBundleKt.renderManager(getEditorBundle()).clearDisplay();
            DocCommonActionsKt.ensureCloseDoc(getEditorBundle()).subscribe();
        }
        EditorBundleKt.touchStateInfo(this.focusEditorBundle).setShapeTouchEnabled(true);
        EditorBundleKt.touchStateInfo(this.focusEditorBundle).setTextSelectionTouchEnabled(true);
        EditorBundleKt.handlerManager(this.focusEditorBundle).setEnabledLongPress(true);
        EditorBundleKt.handlerManager(this.focusEditorBundle).setEnabledStylusTouchProcess(false);
        m46152g0();
    }

    /* renamed from: t */
    public final Observable<BoxInfo> m46166t(VirtualDocViewInfo virtualDocViewInfo) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) virtualDocViewInfo.getVisibleBoxInfoList());
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo != null) {
            Observable<BoxInfo> just = Observable.just(boxInfo);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = EditorBundleKt.findVisibleBoxInfoByNotePageId(getEditorBundle(), virtualDocViewInfo.getCurrentBoxId(), true).map(C12061d.f58752e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<BoxInfo> m46167u(BoxInfo boxInfo) {
        Object obj;
        Iterator<T> it2 = EditorBundleKt.virtualDocViewInfo(this.focusEditorBundle).getVisibleBoxInfoList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((BoxInfo) obj).getId(), boxInfo.getId())) {
                break;
            }
        }
        BoxInfo boxInfo2 = (BoxInfo) obj;
        if (boxInfo2 != null) {
            Observable<BoxInfo> just = Observable.just(boxInfo2);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = EditorBundleKt.findVisibleBoxInfoByNotePageId(this.focusEditorBundle, boxInfo.getId(), true).map(C12063e.f58756e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final float m46168v() {
        return this.magnifierEditorView.getWidth() / this.magnifierViewportView.getWidth();
    }

    /* renamed from: w */
    public final RectF m46169w(IdentifyRectF idRectF) {
        Object obj;
        Iterator<T> it2 = EditorBundleKt.virtualDocViewInfo(this.focusEditorBundle).getVisibleBoxInfoList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((BoxInfo) obj).getId(), idRectF.getId())) {
                break;
            }
        }
        return BoxInfoUtils.INSTANCE.mapToScreenRectF(idRectF.getRectF(), (BoxInfo) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<BoxInfo>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$getMagnifierViewportRecordRect$boxInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BoxInfo invoke() {
                return EditorBundleKt.currentVisibleBoxInfo(MagnifierEventHandler.this.focusEditorBundle);
            }
        }));
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: x */
    public final void m46170x() {
        this.editorViewHandler.initEditorView(this.magnifierEditorView);
        this.magnifierRootLayout.magnifierActionContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.q6j
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m46133y;
                m46133y = MagnifierEventHandler.m46133y(view, motionEvent);
                return m46133y;
            }
        });
        TintImageView ivMagnifierLeft = this.magnifierRootLayout.ivMagnifierLeft;
        Intrinsics.checkNotNullExpressionValue(ivMagnifierLeft, "ivMagnifierLeft");
        ViewKt.quickClick(ivMagnifierLeft, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r6j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MagnifierEventHandler.m46134z(MagnifierEventHandler.this, view);
            }
        });
        TintImageView ivMagnifierRight = this.magnifierRootLayout.ivMagnifierRight;
        Intrinsics.checkNotNullExpressionValue(ivMagnifierRight, "ivMagnifierRight");
        ViewKt.quickClick(ivMagnifierRight, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s6j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MagnifierEventHandler.m46103A(MagnifierEventHandler.this, view);
            }
        });
        TintImageView ivMagnifierUp = this.magnifierRootLayout.ivMagnifierUp;
        Intrinsics.checkNotNullExpressionValue(ivMagnifierUp, "ivMagnifierUp");
        ViewKt.quickClick(ivMagnifierUp, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t6j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MagnifierEventHandler.m46104B(MagnifierEventHandler.this, view);
            }
        });
        TintImageView ivMagnifierDown = this.magnifierRootLayout.ivMagnifierDown;
        Intrinsics.checkNotNullExpressionValue(ivMagnifierDown, "ivMagnifierDown");
        ViewKt.quickClick(ivMagnifierDown, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u6j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MagnifierEventHandler.m46105C(MagnifierEventHandler.this, view);
            }
        });
        TintImageView ivMagnifierNewline = this.magnifierRootLayout.ivMagnifierNewline;
        Intrinsics.checkNotNullExpressionValue(ivMagnifierNewline, "ivMagnifierNewline");
        ViewKt.quickClick(ivMagnifierNewline, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v6j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MagnifierEventHandler.m46106D(MagnifierEventHandler.this, view);
            }
        });
        TintImageView ivMagnifierClose = this.magnifierRootLayout.ivMagnifierClose;
        Intrinsics.checkNotNullExpressionValue(ivMagnifierClose, "ivMagnifierClose");
        ViewKt.click$default(ivMagnifierClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w6j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MagnifierEventHandler.m46107E(MagnifierEventHandler.this, view);
            }
        }, 1, null);
        this.magnifierViewportContainer.setDownListener(this);
        this.magnifierViewportView.setOnViewStateChangedListener(this.magnifierViewportStateChangedListener);
        MagnifierNewLineAreaView magnifierNewLineAreaView = this.magnifierRootLayout.magnifierNewLineAreaView;
        Intrinsics.checkNotNullExpressionValue(magnifierNewLineAreaView, "magnifierNewLineAreaView");
        magnifierNewLineAreaView.setVisibility(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getMagnifierAutoForwardMoveOption().get() ? 0 : 8);
        this.magnifierRootLayout.magnifierNewLineAreaView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.x6j
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m46108F;
                m46108F = MagnifierEventHandler.m46108F(MagnifierEventHandler.this, view, motionEvent);
                return m46108F;
            }
        });
        this.magnifierRootLayout.magnifierLayout.post(new Runnable() { // from class: com.sunia.HTREnginev2.y6j
            @Override // java.lang.Runnable
            public final void run() {
                MagnifierEventHandler.m46109G(MagnifierEventHandler.this);
            }
        });
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$b */
    /* loaded from: classes9.dex */
    public final class C12057b extends BaseEventHandler {

        /* renamed from: f */
        public final /* synthetic */ MagnifierEventHandler f58745f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12057b(@NotNull MagnifierEventHandler magnifierEventHandler, EditorBundle editorBundle) {
            super(editorBundle);
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            this.f58745f = magnifierEventHandler;
        }

        /* renamed from: a */
        public final void m46173a(TouchPoint touchPoint) {
            if (this.f58745f.m46136I()) {
                this.f58745f.magnifierViewportView.moveCenterToPoint(touchPoint.getX(), touchPoint.getY(), true);
            }
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onDocumentClosedEvent(@NotNull DocumentClosedEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (this.f58745f.m46136I()) {
                this.f58745f.m46165r(true);
            }
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            this.f58745f.m46142T();
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onInsertTagEvent(@NotNull InsertTagEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (this.f58745f.m46136I()) {
                MagnifierEventHandler.m46132s(this.f58745f, false, 1, null);
            }
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onNoGesturesEvent(@NotNull NoGesturesEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            m46173a(event.getTouchPoint());
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onScaleResultEvent(@NotNull ScaleResultEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (this.f58745f.m46136I()) {
                MagnifierEventHandler.m46111O(this.f58745f, null, 1, null).subscribe();
            }
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onScalingResultEvent(@NotNull ScalingResultEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (this.f58745f.m46136I()) {
                this.f58745f.m46139M(event.getArgs().getMatrix()).subscribe();
            }
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onSingleClickEvent(@NotNull SingleClickEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            m46173a(event.getTouchPoint());
        }

        @Subscribe(threadMode = ThreadMode.MAIN)
        public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (this.f58745f.m46136I()) {
                this.f58745f.focusEditorScrolling = event.isScrolling();
                EditorBundleKt.updateVirtualDocViewInfo(getEditorBundle(), event.getVirtualDocViewInfo());
                if (this.f58745f.magnifierViewportStateChangedListener.isProcessing()) {
                    return;
                }
                MagnifierEventHandler.m46111O(this.f58745f, null, 1, null).subscribe();
            }
        }

        public /* synthetic */ C12057b(MagnifierEventHandler magnifierEventHandler, EditorBundle editorBundle, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(magnifierEventHandler, (i & 1) != 0 ? magnifierEventHandler.focusEditorBundle : editorBundle);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MagnifierEventHandler(@NotNull NoteScribbleFragment fragment, @NotNull EditorViewDragLayoutBinding focusEditorViewContainerBiding, @NotNull EditorBundle focusEditorBundle, @NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(focusEditorViewContainerBiding, "focusEditorViewContainerBiding");
        Intrinsics.checkNotNullParameter(focusEditorBundle, "focusEditorBundle");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.fragment = fragment;
        this.focusEditorViewContainerBiding = focusEditorViewContainerBiding;
        this.focusEditorBundle = focusEditorBundle;
        EditorBundleManager editorBundleManager$note_overseasRelease = fragment.getEditorBundleManager$note_overseasRelease();
        this.editorBundleManager = editorBundleManager$note_overseasRelease;
        MagnifierEditorLayoutBinding magnifierLayout = focusEditorViewContainerBiding.magnifierLayout;
        Intrinsics.checkNotNullExpressionValue(magnifierLayout, "magnifierLayout");
        this.magnifierRootLayout = magnifierLayout;
        LinearLayout magnifierEditorContainer = magnifierLayout.magnifierEditorContainer;
        Intrinsics.checkNotNullExpressionValue(magnifierEditorContainer, "magnifierEditorContainer");
        this.magnifierEditorContainer = magnifierEditorContainer;
        EditorView magnifierEditorView = magnifierLayout.magnifierEditorView;
        Intrinsics.checkNotNullExpressionValue(magnifierEditorView, "magnifierEditorView");
        this.magnifierEditorView = magnifierEditorView;
        TintLinearLayout magnifierActionContainer = magnifierLayout.magnifierActionContainer;
        Intrinsics.checkNotNullExpressionValue(magnifierActionContainer, "magnifierActionContainer");
        this.magnifierActionContainer = magnifierActionContainer;
        MagnifierViewportContainer magnifierViewPortContainer = magnifierLayout.magnifierViewPortContainer;
        Intrinsics.checkNotNullExpressionValue(magnifierViewPortContainer, "magnifierViewPortContainer");
        this.magnifierViewportContainer = magnifierViewPortContainer;
        this.magnifierViewportView = magnifierViewPortContainer.getViewportView();
        this.magnifierViewportStateChangedListener = new MagnifierViewportStateChangedListener(focusEditorBundle, editorBundle, this.magnifierViewportContainer, this.magnifierEditorView);
        MagnifierEventHandler$editorViewHandler$1 magnifierEventHandler$editorViewHandler$1 = new MagnifierEventHandler$editorViewHandler$1(editorBundle, this, fragment.getEditorBundleManager$note_overseasRelease());
        this.editorViewHandler = magnifierEventHandler$editorViewHandler$1;
        RxFilter<Float> rxFilter = new RxFilter<>();
        this.hitTestNewLineFilter = rxFilter;
        this.scalePage = ScaleConfig.INSTANCE.getPageScaleRange();
        this.focusEditorStandardMinScale = 1.0f;
        GlobalBundle.INSTANCE.register(this);
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        EditorBundleKt.setOwner(editorBundle, false);
        EventHandlerManager eventHandlerManager = focusEditorBundle.getUiBundle().getEventHandlerManager();
        String simpleName = MagnifierEventHandler.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        eventHandlerManager.registerEventHandler(simpleName, new C12057b(this, null, 1, 0 == true ? 1 : 0));
        editorBundleManager$note_overseasRelease.registerEditorBundle(editorBundle);
        FragmentActivity requireActivity = fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        magnifierEventHandler$editorViewHandler$1.attachActivity(requireActivity);
        EditorBundleKt.handlerManager(editorBundle).setEnabledLongPress(false);
        EditorBundleKt.handlerManager(editorBundle).setEditorDataProxy(new DefaultEditorDataProxy(this) { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler.1

            /* renamed from: c */
            public final /* synthetic */ MagnifierEventHandler f58739c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(EditorBundle.this);
                this.f58739c = this;
            }

            @Override // com.onyx.android.sdk.universal.editor.helper.DefaultEditorDataProxy, com.onyx.android.sdk.universal.editor.helper.EditorDataProxy
            public float getAdaptiveStrokeWidth(@NotNull BoxInfo boxInfo, float strokeWidth) {
                Object obj;
                Pair m61535to;
                Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
                Iterator<T> it2 = EditorBundleKt.virtualDocViewInfo(this.f58739c.focusEditorBundle).getVisibleBoxInfoList().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    if (Intrinsics.areEqual(((BoxInfo) obj).getId(), boxInfo.getId())) {
                        break;
                    }
                }
                BoxInfo boxInfo2 = (BoxInfo) obj;
                if (boxInfo2 != null) {
                    m61535to = TuplesKt.m61535to(this.f58739c.focusEditorBundle, Float.valueOf(this.f58739c.focusEditorStandardMinScale));
                } else {
                    EditorBundle editorBundle2 = EditorBundle.this;
                    m61535to = TuplesKt.m61535to(editorBundle2, Float.valueOf(EditorBundleKt.currentMinScale(editorBundle2)));
                }
                EditorBundle editorBundle3 = (EditorBundle) m61535to.getFirst();
                if (boxInfo2 != null) {
                    boxInfo = boxInfo2;
                }
                return getAdaptiveStrokeWidth(editorBundle3, boxInfo, strokeWidth, ((Number) m61535to.getSecond()).floatValue());
            }
        });
        EditorBundleKt.touchStateInfo(editorBundle).setTextSelectionTouchEnabled(false);
        editorBundle.getUiBundle().setEnableUpdateScaleOnRotation(false);
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.SYNC, new EditorSyncEventHandler(editorBundle, editorBundleManager$note_overseasRelease) { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler.2
            @Override // com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler
            public void applyChangedShapes(@NotNull List<EditorBundle> editorBundleList, @NotNull final ChangedShapeBean changedShapeBean) {
                Intrinsics.checkNotNullParameter(editorBundleList, "editorBundleList");
                Intrinsics.checkNotNullParameter(changedShapeBean, "changedShapeBean");
                super.applyChangedShapes(editorBundleList, changedShapeBean);
                DocCommonActionsKt.createNoteObservable(this.focusEditorBundle, new Function1<NoteBundle, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$2$applyChangedShapes$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                        invoke2(noteBundle);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NoteBundle it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.postEvent(new StashShapeEvent(ChangedShapeBean.this.getChangedShapeList()));
                    }
                }).subscribe();
            }

            @Override // com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler
            public void onDraftCellAddedEvent(@NotNull DraftCellAddedEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                if (this.magnifierViewportStateChangedListener.isProcessing()) {
                    return;
                }
                super.onDraftCellAddedEvent(event);
            }
        });
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.ERASE, new EraseEventHandler(editorBundle, fragment) { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler.3

            /* renamed from: h, reason: from kotlin metadata */
            @NotNull
            public final int[] location = {0, 0};

            @Override // com.onyx.galaxy.note.editor.handler.EraseEventHandler
            @NotNull
            public View getEraseView() {
                AppCompatImageView eraseCircleView = this.magnifierRootLayout.eraseCircleView;
                Intrinsics.checkNotNullExpressionValue(eraseCircleView, "eraseCircleView");
                return eraseCircleView;
            }

            @Override // com.onyx.galaxy.note.editor.handler.EraseEventHandler
            @NotNull
            /* renamed from: getEraseViewOffset, reason: from getter */
            public int[] getLocation() {
                return this.location;
            }

            @Override // com.onyx.galaxy.note.editor.handler.EraseEventHandler
            public void switchLastTool(@NotNull EditorBundle editorBundle2) {
                Intrinsics.checkNotNullParameter(editorBundle2, "editorBundle");
                super.switchLastTool(this.focusEditorBundle);
            }
        });
        editorBundle.getUiBundle().getEventHandlerManager().registerEventHandler(EventHandlerManager.BEAUTIFY, new InkBeautifyEventHandler(editorBundle, fragment));
        rxFilter.subscribeDebounce(500L, new Consumer() { // from class: com.onyx.galaxy.note.editor.handler.MagnifierEventHandler.a
            /* renamed from: a */
            public final void m46171a(float f) {
                MagnifierEventHandler.this.m46164q(f);
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                m46171a(((Number) obj).floatValue());
            }
        });
        m46170x();
    }
}
