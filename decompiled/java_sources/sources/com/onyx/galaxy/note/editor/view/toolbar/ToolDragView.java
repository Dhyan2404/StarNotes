package com.onyx.galaxy.note.editor.view.toolbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnticipateOvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.base.utils.VibratorUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.statistics.C7998R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.config.DocumentState;
import com.onyx.android.sdk.universal.editor.data.CommandDataInfo;
import com.onyx.android.sdk.universal.editor.events.app.DocumentStateEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditorRedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditorUndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.FullScreenEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapeToolTypeChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ViewToolBarContainerBinding;
import com.onyx.galaxy.note.editor.data.NoteEditConfigInfo;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.data.SlideBarTypeKt;
import com.onyx.galaxy.note.editor.event.CheckEditorAutoReLockEvent;
import com.onyx.galaxy.note.editor.view.toolbar.ToolDragView;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.receiver.ScreenOnEvent;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.AutoReLockNoteManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002²\u0001B\u0015\b\u0016\u0012\b\u0010ª\u0001\u001a\u00030©\u0001¢\u0006\u0006\b«\u0001\u0010¬\u0001B#\b\u0016\u0012\b\u0010ª\u0001\u001a\u00030©\u0001\u0012\f\b\u0002\u0010®\u0001\u001a\u0005\u0018\u00010\u00ad\u0001¢\u0006\u0006\b«\u0001\u0010¯\u0001B,\b\u0016\u0012\b\u0010ª\u0001\u001a\u00030©\u0001\u0012\f\b\u0002\u0010®\u0001\u001a\u0005\u0018\u00010\u00ad\u0001\u0012\u0007\u0010°\u0001\u001a\u00020\u000b¢\u0006\u0006\b«\u0001\u0010±\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\b\u0010\u001d\u001a\u00020\u000eH\u0002J\b\u0010\u001e\u001a\u00020\u000eH\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\b\u0010 \u001a\u00020\u0002H\u0002J\b\u0010\"\u001a\u00020!H\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0014\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0$H\u0002J\u0018\u0010(\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000eH\u0002J\b\u0010)\u001a\u00020\u0002H\u0002J\b\u0010*\u001a\u00020\u0002H\u0002J\b\u0010+\u001a\u00020\u000bH\u0002J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u000eH\u0002J\b\u0010.\u001a\u00020\u0002H\u0002J\b\u0010/\u001a\u00020\u0002H\u0002J\u0018\u00103\u001a\u00020\u00022\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\u0016H\u0002J\u0006\u00105\u001a\u000204J\u000e\u00106\u001a\u00020\u00022\u0006\u00101\u001a\u000200J\u0006\u00107\u001a\u00020\u0007J\b\u00108\u001a\u0004\u0018\u000100J\u0006\u0010:\u001a\u000209J\u000e\u0010=\u001a\u00020\u00022\u0006\u0010<\u001a\u00020;J\u000e\u0010@\u001a\u00020\u00162\u0006\u0010?\u001a\u00020>J\u0006\u0010A\u001a\u00020\u0002J\u000e\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u0016J\u0006\u0010D\u001a\u00020\u0016J\u0010\u0010E\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010F\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0017J\b\u0010G\u001a\u00020\u0002H\u0014J\b\u0010H\u001a\u00020\u0002H\u0014J\u000e\u0010K\u001a\u00020\u00022\u0006\u0010J\u001a\u00020IJ\u000e\u0010M\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u000bJ\u0006\u0010N\u001a\u00020\u0002J\u000e\u0010P\u001a\u00020\u00022\u0006\u0010O\u001a\u00020\u000bJ\u0018\u0010T\u001a\u00020\u00022\b\u0010R\u001a\u0004\u0018\u00010Q2\u0006\u0010S\u001a\u00020\u0016J\u0006\u0010U\u001a\u00020\u0002J\u0010\u0010W\u001a\u00020\u00022\b\u0010V\u001a\u0004\u0018\u00010QJ\u0006\u0010X\u001a\u00020\u0002J\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u000eJ\u000e\u0010[\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u000eJ\u0016\u0010^\u001a\u00020\u00022\u0006\u0010\\\u001a\u00020\u000e2\u0006\u0010]\u001a\u00020\u000eJ\u000e\u0010_\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u000eJ\u0006\u0010`\u001a\u00020\u0002J\u0010\u0010b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020eH\u0007R$\u0010n\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u0018\u0010J\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\"\u0010r\u001a\u00020q8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\br\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\u0016\u0010{\u001a\u00020x8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010D\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0017\u0010\u0080\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0018\u0010\u0082\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010\u007fR\u0018\u0010\u0084\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010\u007fR\u0018\u0010\u0086\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010\u007fR\u0018\u0010\u0088\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010\u007fR\u0017\u0010,\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010\u007fR)\u0010\u0012\u001a\u00020\u00072\u0007\u0010\u008a\u0001\u001a\u00020\u00078\u0002@BX\u0082\u000e¢\u0006\u0010\n\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001a\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u0094\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0091\u0001R\u0019\u0010\u0097\u0001\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u009a\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u001a\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001a\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0018\u0010 \u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009f\u0001\u0010}R\u0019\u0010¢\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010\u0099\u0001R\u0019\u0010¤\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010\u0099\u0001R\u0018\u0010¦\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¥\u0001\u0010\u007fR\u001c\u0010¨\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010\u0091\u0001¨\u0006³\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "E", "J", "I", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "sideType", "setOrientation", "P", "", "widthByOrientation", "setChildSize", "", "shapeMaxWidth", "paramsMaxWidth", "N", "dockType", "K", "Landroid/view/MotionEvent;", "ev", "", "w", NotificationCompat.CATEGORY_EVENT, "x", "A", "setDownTransOffset", "M", "getOffsetXByType", "getOffsetYByType", "L", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Landroid/graphics/PointF;", "getTransPosition", "B", "Lkotlin/Pair;", "getParentWidthHeight", "xInParent", "yInParent", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "s", "u", "getWidthByOrientation", "bottomOffsetY", "Q", "S", "y", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", DevicePushAction.LOCK_DEVICE, "z", "Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;", "getBinding", "setEditorBundle", "getDockType", "getEditorBundle", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;", "getParamsContainer", "Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnDragListener", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "type", "isToolbarAlignedWithSidebar", "flushUI", "visible", "updateFullScreenVisible", "isDragging", "onInterceptTouchEvent", "onTouchEvent", "onAttachedToWindow", "onDetachedFromWindow", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "setPenViewModel", "lassoType", "updateLassoTypeUi", "updateExcerptTypeUi", "eraserType", "updateEraserTypeUi", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "postEvent", "setSelectByType", "onPenTypeRecover", "toolType", "onPenTypeChanged", "showTapeSizeContainer", "widthOffset", "updateTranslateXOffsetWithAnimation", "updateTranslateXOffset", "left", gon.f71288n0, "updateSideBarWidth", "updateBottomYOffset", "updateView", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;", "onDocumentStateEvent", "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;", "onScreenOnEvent", "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;", "onCheckEditorAutoReLockEvent", "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;", "v0", "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;", "getAnimateCallBack", "()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;", "setAnimateCallBack", "(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;)V", "animateCallBack", "w0", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "Landroid/view/View;", "toolContainer", "Landroid/view/View;", "getToolContainer", "()Landroid/view/View;", "setToolContainer", "(Landroid/view/View;)V", "Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "x0", "Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "ivHolderIcon", "y0", Constants.HASIDCALL_INDEX_SIG, "z0", "F", "sideWidth", "A0", "dragWidth", "B0", "toolContainerWidthOffset", "C0", "leftSideBarWidth", "D0", "rightSideBarWidth", "E0", "value", "F0", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "setDockType", "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "Landroid/animation/ValueAnimator;", "G0", "Landroid/animation/ValueAnimator;", "valueAnimatorShow", "H0", "valueAnimatorHide", "I0", "Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;", "binding", "J0", "Landroid/graphics/PointF;", "interceptDown", "K0", "Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;", "L0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "M0", "lastFullScreenVisible", "N0", "downScrollPosition", "O0", "downTransOffset", "P0", "rightSideOriginWidth", "Q0", "rightSideAnimator", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "AnimateCallBack", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nToolDragView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolDragView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ToolDragView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,830:1\n256#2,2:831\n254#2:833\n338#2:834\n356#2:835\n256#2,2:836\n256#2,2:838\n254#2:840\n256#2,2:841\n256#2,2:843\n256#2,2:845\n256#2,2:847\n256#2,2:849\n256#2,2:851\n256#2,2:853\n256#2,2:855\n277#2,2:861\n53#3,4:857\n*S KotlinDebug\n*F\n+ 1 ToolDragView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ToolDragView\n*L\n242#1:831,2\n263#1:833\n265#1:834\n265#1:835\n467#1:836,2\n468#1:838,2\n572#1:840\n573#1:841,2\n574#1:843,2\n575#1:845,2\n576#1:847,2\n598#1:849,2\n599#1:851,2\n600#1:853,2\n601#1:855,2\n826#1:861,2\n699#1:857,4\n*E\n"})
/* loaded from: classes9.dex */
public final class ToolDragView extends ConstraintLayout {

    /* renamed from: A0, reason: from kotlin metadata */
    public float dragWidth;

    /* renamed from: B0, reason: from kotlin metadata */
    public float toolContainerWidthOffset;

    /* renamed from: C0, reason: from kotlin metadata */
    public float leftSideBarWidth;

    /* renamed from: D0, reason: from kotlin metadata */
    public float rightSideBarWidth;

    /* renamed from: E0, reason: from kotlin metadata */
    public float bottomOffsetY;

    /* renamed from: F0, reason: from kotlin metadata */
    @NotNull
    public DockType dockType;

    /* renamed from: G0, reason: from kotlin metadata */
    public ValueAnimator valueAnimatorShow;

    /* renamed from: H0, reason: from kotlin metadata */
    public ValueAnimator valueAnimatorHide;

    /* renamed from: I0, reason: from kotlin metadata */
    public ViewToolBarContainerBinding binding;

    /* renamed from: J0, reason: from kotlin metadata */
    @NotNull
    public PointF interceptDown;

    /* renamed from: K0, reason: from kotlin metadata */
    @Nullable
    public OnShapeToolDragListener listener;

    /* renamed from: L0, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: M0, reason: from kotlin metadata */
    public boolean lastFullScreenVisible;

    /* renamed from: N0, reason: from kotlin metadata */
    @NotNull
    public PointF downScrollPosition;

    /* renamed from: O0, reason: from kotlin metadata */
    @NotNull
    public PointF downTransOffset;

    /* renamed from: P0, reason: from kotlin metadata */
    public float rightSideOriginWidth;

    /* renamed from: Q0, reason: from kotlin metadata */
    @Nullable
    public ValueAnimator rightSideAnimator;
    public View toolContainer;

    /* renamed from: v0, reason: from kotlin metadata */
    @Nullable
    public AnimateCallBack animateCallBack;

    /* renamed from: w0, reason: from kotlin metadata */
    @Nullable
    public PenViewModel penViewModel;

    /* renamed from: x0, reason: from kotlin metadata */
    public TintImageView ivHolderIcon;

    /* renamed from: y0, reason: from kotlin metadata */
    public boolean isDragging;

    /* renamed from: z0, reason: from kotlin metadata */
    public float sideWidth;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;", "", "onAnimateEnd", "", "onAnimateStart", "onAnimating", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface AnimateCallBack {
        void onAnimateEnd();

        void onAnimateStart();

        void onAnimating();
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ShapeToolType.values().length];
            try {
                iArr2[ShapeToolType.IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[ShapeToolType.LASSO.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[ShapeToolType.EXCERPT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[ShapeToolType.ERASER.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[ShapeToolType.IMAGE_STICKER.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[ShapeToolType.EDIT_TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[ShapeToolType.TAPE_PEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$a */
    /* loaded from: classes9.dex */
    public static final class C12549a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f61025f;

        public C12549a(EditorBundle editorBundle) {
            this.f61025f = editorBundle;
        }

        /* renamed from: a */
        public final void m50299a(boolean z) {
            ToolDragView.this.m50298z(this.f61025f, z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50299a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$b */
    /* loaded from: classes9.dex */
    public static final class C12550b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61026a;

        public C12550b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61026a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f61026a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61026a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToolDragView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: F */
    public static final void m50266F(ToolDragView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50284J();
    }

    /* renamed from: G */
    public static final void m50267G(ToolDragView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50283I();
    }

    /* renamed from: H */
    public static final void m50268H(ToolDragView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundle editorBundle = this$0.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new FullScreenEvent(false));
        }
    }

    /* renamed from: R */
    public static final void m50269R(ToolDragView this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.toolContainerWidthOffset = ((Float) animatedValue).floatValue();
        this$0.m50287M();
    }

    private final float getOffsetXByType() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
        if (i == 1 || i == 2) {
            return 0.0f;
        }
        if (i == 3 || i == 4) {
            return this.toolContainerWidthOffset;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final float getOffsetYByType() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return -this.bottomOffsetY;
            }
            if (i != 3 && i != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return 0.0f;
    }

    private final Pair<Integer, Integer> getParentWidthHeight() {
        if (getParent() == null) {
            return new Pair<>(0, 0);
        }
        ViewParent parent = getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        int measuredWidth = ((ViewGroup) parent).getMeasuredWidth();
        ViewParent parent2 = getParent();
        Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
        return new Pair<>(Integer.valueOf(measuredWidth), Integer.valueOf(((ViewGroup) parent2).getMeasuredHeight()));
    }

    private final PointF getTransPosition() {
        Pair<Integer, Integer> parentWidthHeight = getParentWidthHeight();
        int intValue = parentWidthHeight.component1().intValue();
        int intValue2 = parentWidthHeight.component2().intValue();
        int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
        if (i == 1) {
            return new PointF(0.0f, 0.0f);
        }
        if (i == 2) {
            return new PointF(0.0f, intValue2 - getMeasuredHeight());
        }
        if (i == 3) {
            return new PointF(((-(intValue - getMeasuredHeight())) / 2.0f) - ResManager.INSTANCE.getDimension(C10651R.dimen.drag_view_divider_stroke_width), (intValue2 - getMeasuredHeight()) / 2.0f);
        }
        if (i == 4) {
            return new PointF((intValue - getMeasuredHeight()) / 2.0f, (intValue2 - getMeasuredHeight()) / 2.0f);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final int getWidthByOrientation() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
        if (i == 1 || i == 2) {
            ViewParent parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            return ((ViewGroup) parent).getMeasuredWidth();
        }
        if (i != 3 && i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        ViewParent parent2 = getParent();
        Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
        return ((ViewGroup) parent2).getMeasuredHeight();
    }

    private final void setChildSize(int widthByOrientation) {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        TintImageView ivFullScreen = viewToolBarContainerBinding.ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        if (ivFullScreen.getVisibility() == 0) {
            ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
            if (viewToolBarContainerBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                viewToolBarContainerBinding3 = null;
            }
            TintImageView ivFullScreen2 = viewToolBarContainerBinding3.ivFullScreen;
            Intrinsics.checkNotNullExpressionValue(ivFullScreen2, "ivFullScreen");
            int width = widthByOrientation - ivFullScreen2.getWidth();
            ViewGroup.LayoutParams layoutParams = ivFullScreen2.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            int i = width - (marginLayoutParams != null ? marginLayoutParams.leftMargin : 0);
            ViewGroup.LayoutParams layoutParams2 = ivFullScreen2.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            widthByOrientation = i - (marginLayoutParams2 != null ? marginLayoutParams2.rightMargin : 0);
        }
        ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
        if (viewToolBarContainerBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding4 = null;
        }
        ViewGroup.LayoutParams layoutParams3 = viewToolBarContainerBinding4.rlShapeToolViewAuto.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        int marginStart = ((LinearLayout.LayoutParams) layoutParams3).getMarginStart();
        ViewToolBarContainerBinding viewToolBarContainerBinding5 = this.binding;
        if (viewToolBarContainerBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding5 = null;
        }
        int measuredWidth = viewToolBarContainerBinding5.llUndoRedoContainer.getMeasuredWidth();
        ViewToolBarContainerBinding viewToolBarContainerBinding6 = this.binding;
        if (viewToolBarContainerBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding6 = null;
        }
        ViewGroup.LayoutParams layoutParams4 = viewToolBarContainerBinding6.llToolContainer.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams4;
        float f = (((widthByOrientation - measuredWidth) - marginLayoutParams3.leftMargin) - marginLayoutParams3.rightMargin) - marginStart;
        DragToolConst dragToolConst = DragToolConst.INSTANCE;
        float tool_shape_percent = dragToolConst.getTOOL_SHAPE_PERCENT() * f;
        float tool_params_percent = f * dragToolConst.getTOOL_PARAMS_PERCENT();
        ViewToolBarContainerBinding viewToolBarContainerBinding7 = this.binding;
        if (viewToolBarContainerBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding7 = null;
        }
        viewToolBarContainerBinding7.rlShapeToolViewAuto.setMaxWidth(tool_shape_percent);
        ViewToolBarContainerBinding viewToolBarContainerBinding8 = this.binding;
        if (viewToolBarContainerBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding8;
        }
        viewToolBarContainerBinding2.rlShapeToolViewAuto.requestLayout();
        m50288N(tool_shape_percent, tool_params_percent);
    }

    private final void setDockType(DockType dockType) {
        MutableLiveData<DockType> dockType2;
        NoteEditConfigInfo noteConfig;
        if (this.dockType == dockType) {
            return;
        }
        this.dockType = dockType;
        m50281D();
        PenViewModel penViewModel = this.penViewModel;
        if (penViewModel != null && (noteConfig = penViewModel.getNoteConfig()) != null) {
            noteConfig.saveDockType(dockType);
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null || (dockType2 = penViewModel2.getDockType()) == null) {
            return;
        }
        dockType2.postValue(this.dockType);
    }

    private final void setDownTransOffset(MotionEvent event) {
        float pivotY;
        float y;
        float pivotX;
        float x;
        PointF pointF = this.downTransOffset;
        if (getRotation() == 0.0f) {
            pivotY = getPivotX();
            y = event.getX();
        } else {
            pivotY = getPivotY();
            y = event.getY();
        }
        pointF.x = pivotY - y;
        PointF pointF2 = this.downTransOffset;
        if (getRotation() == 0.0f) {
            pivotX = getPivotY();
            x = event.getY();
        } else {
            pivotX = getPivotX();
            x = event.getX();
        }
        pointF2.y = pivotX - x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setOrientation(DockType sideType) {
        if (sideType != this.dockType) {
            m50285K(sideType);
        }
        setDockType(sideType);
        flushUI();
    }

    /* renamed from: t */
    public static final void m50276t(ToolDragView this$0, int i, int i2, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        ViewToolBarContainerBinding viewToolBarContainerBinding = this$0.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        float f = 1.0f - floatValue;
        viewToolBarContainerBinding.clDragContainer.getBackground().setAlpha((int) (255 * f));
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this$0.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding3;
        }
        viewToolBarContainerBinding2.llToolContainer.setAlpha(f);
        this$0.getLayoutParams().width = i - ((int) (i2 * floatValue));
        this$0.requestLayout();
    }

    /* renamed from: v */
    public static final void m50277v(ToolDragView this$0, int i, int i2, ValueAnimator animation) {
        OnShapeToolDragListener onShapeToolDragListener;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        ViewToolBarContainerBinding viewToolBarContainerBinding = this$0.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.clDragContainer.getBackground().setAlpha((int) (255 * floatValue));
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this$0.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding3;
        }
        viewToolBarContainerBinding2.llToolContainer.setAlpha(floatValue);
        this$0.getLayoutParams().width = i - ((int) (i2 * floatValue));
        this$0.requestLayout();
        if (!(floatValue == 1.0f) || (onShapeToolDragListener = this$0.listener) == null) {
            return;
        }
        onShapeToolDragListener.onDragStateChange(this$0.isDragging, this$0.dockType);
    }

    /* renamed from: A */
    public final void m50278A() {
        m50292S();
        m50293s();
    }

    /* renamed from: B */
    public final void m50279B(MotionEvent event) {
        float rawX = event.getRawX();
        float rawY = event.getRawY();
        ViewParent parent = getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        int[] locationOnScreen = ViewKt.getLocationOnScreen((ViewGroup) parent);
        m50280C(rawX - locationOnScreen[0], rawY - locationOnScreen[1]);
    }

    /* renamed from: C */
    public final void m50280C(float xInParent, float yInParent) {
        Pair<Integer, Integer> parentWidthHeight = getParentWidthHeight();
        int intValue = parentWidthHeight.component1().intValue();
        int intValue2 = parentWidthHeight.component2().intValue();
        float measuredHeight = getMeasuredHeight() * 2.0f;
        if (yInParent <= measuredHeight) {
            DockType dockType = this.dockType;
            DockType dockType2 = DockType.TOP;
            if (dockType != dockType2) {
                setDockType(dockType2);
                setRotation(0.0f);
                return;
            }
            return;
        }
        if (yInParent >= (intValue2 - measuredHeight) - this.bottomOffsetY) {
            DockType dockType3 = this.dockType;
            DockType dockType4 = DockType.BOTTOM;
            if (dockType3 != dockType4) {
                setDockType(dockType4);
                setRotation(0.0f);
                return;
            }
            return;
        }
        if (xInParent <= this.leftSideBarWidth + measuredHeight) {
            DockType dockType5 = this.dockType;
            DockType dockType6 = DockType.LEFT;
            if (dockType5 != dockType6) {
                setDockType(dockType6);
                setRotation(90.0f);
                return;
            }
            return;
        }
        if (xInParent >= (intValue - measuredHeight) - this.rightSideBarWidth) {
            DockType dockType7 = this.dockType;
            DockType dockType8 = DockType.RIGHT;
            if (dockType7 != dockType8) {
                setDockType(dockType8);
                setRotation(90.0f);
            }
        }
    }

    /* renamed from: D */
    public final void m50281D() {
        float iconRotationByType = this.dockType.getIconRotationByType();
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.rlShapeToolViewAuto.setOrientationChanged(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding3 = null;
        }
        viewToolBarContainerBinding3.undo.setRotation(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
        if (viewToolBarContainerBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding4 = null;
        }
        viewToolBarContainerBinding4.redo.setRotation(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding5 = this.binding;
        if (viewToolBarContainerBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding5 = null;
        }
        viewToolBarContainerBinding5.scrollParamsContainer.setOrientationChanged(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding6 = this.binding;
        if (viewToolBarContainerBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding6 = null;
        }
        viewToolBarContainerBinding6.imageShapeParamsContainer.setOrientationChanged(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding7 = this.binding;
        if (viewToolBarContainerBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding7 = null;
        }
        viewToolBarContainerBinding7.lassoTypeParamsContainer.setOrientationChanged(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding8 = this.binding;
        if (viewToolBarContainerBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding8 = null;
        }
        viewToolBarContainerBinding8.excerptTypeParamsContainer.setOrientationChanged(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding9 = this.binding;
        if (viewToolBarContainerBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding9 = null;
        }
        viewToolBarContainerBinding9.eraserTypeParamsContainer.setOrientationChanged(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding10 = this.binding;
        if (viewToolBarContainerBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding10 = null;
        }
        viewToolBarContainerBinding10.stickerParamsContainer.setOrientationChanged(iconRotationByType);
        ViewToolBarContainerBinding viewToolBarContainerBinding11 = this.binding;
        if (viewToolBarContainerBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding11;
        }
        viewToolBarContainerBinding2.ivDragHolderIcon.setRotation(iconRotationByType);
    }

    /* renamed from: E */
    public final void m50282E() {
        setClickable(true);
        setClipChildren(false);
        ViewToolBarContainerBinding inflate = ViewToolBarContainerBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        View findViewById = findViewById(C10651R.id.ll_tool_container);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        setToolContainer(findViewById);
        View findViewById2 = findViewById(C10651R.id.iv_drag_holder_icon);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.ivHolderIcon = (TintImageView) findViewById2;
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
        Intrinsics.checkNotNullExpressionValue(duration, "setDuration(...)");
        this.valueAnimatorShow = duration;
        ValueAnimator duration2 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
        Intrinsics.checkNotNullExpressionValue(duration2, "setDuration(...)");
        this.valueAnimatorHide = duration2;
        this.sideWidth = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_120);
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.undo.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolDragView.m50266F(ToolDragView.this, view);
            }
        });
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding3 = null;
        }
        viewToolBarContainerBinding3.redo.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolDragView.m50267G(ToolDragView.this, view);
            }
        });
        ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
        if (viewToolBarContainerBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding4 = null;
        }
        viewToolBarContainerBinding4.ivFullScreen.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.djn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolDragView.m50268H(ToolDragView.this, view);
            }
        });
        ViewToolBarContainerBinding viewToolBarContainerBinding5 = this.binding;
        if (viewToolBarContainerBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding5;
        }
        viewToolBarContainerBinding2.rlShapeToolViewAuto.addShapeToolChildChangeCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$initView$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ToolDragView.this.m50290P();
            }
        });
    }

    /* renamed from: I */
    public final void m50283I() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null || editorBundle.getUiBundle().getCommandDataInfo().guardRedoing()) {
            return;
        }
        EditorBundleKt.postEvent(editorBundle, new EditorRedoEvent());
    }

    /* renamed from: J */
    public final void m50284J() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null || editorBundle.getUiBundle().getCommandDataInfo().guardUndoing()) {
            return;
        }
        EditorBundleKt.postEvent(editorBundle, new EditorUndoEvent());
    }

    /* renamed from: K */
    public final void m50285K(DockType dockType) {
        String string;
        int i = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i == 1) {
            string = ResManager.INSTANCE.getString(C7998R.string.dock_type_name_top);
        } else if (i == 2) {
            string = ResManager.INSTANCE.getString(C7998R.string.dock_type_name_bottom);
        } else if (i == 3) {
            string = ResManager.INSTANCE.getString(C7998R.string.dock_type_name_left);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            string = ResManager.INSTANCE.getString(C7998R.string.dock_type_name_right);
        }
        if (string == null) {
            string = "";
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            StatisticsBundle.INSTANCE.reportToolMenuDragEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_DRAGING, string);
        }
    }

    /* renamed from: L */
    public final void m50286L() {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        TintView toolContainerDividerTop = viewToolBarContainerBinding.toolContainerDividerTop;
        Intrinsics.checkNotNullExpressionValue(toolContainerDividerTop, "toolContainerDividerTop");
        DockType dockType = this.dockType;
        toolContainerDividerTop.setVisibility(dockType != DockType.TOP && dockType != DockType.RIGHT && !this.isDragging ? 0 : 8);
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding3;
        }
        TintView toolContainerDividerBottom = viewToolBarContainerBinding2.toolContainerDividerBottom;
        Intrinsics.checkNotNullExpressionValue(toolContainerDividerBottom, "toolContainerDividerBottom");
        DockType dockType2 = this.dockType;
        toolContainerDividerBottom.setVisibility((dockType2 == DockType.BOTTOM || dockType2 == DockType.LEFT || this.isDragging) ? false : true ? 0 : 8);
    }

    /* renamed from: M */
    public final void m50287M() {
        PointF transPosition = getTransPosition();
        setTranslationX(transPosition.x + getOffsetXByType());
        setTranslationY(transPosition.y + getOffsetYByType());
    }

    /* renamed from: N */
    public final void m50288N(float shapeMaxWidth, float paramsMaxWidth) {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        int childCount = viewToolBarContainerBinding.paramsContainer.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewToolBarContainerBinding viewToolBarContainerBinding2 = this.binding;
            if (viewToolBarContainerBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                viewToolBarContainerBinding2 = null;
            }
            float shapeToolWidth = viewToolBarContainerBinding2.rlShapeToolViewAuto.getShapeToolWidth();
            float f = shapeToolWidth > shapeMaxWidth ? 0.0f : shapeMaxWidth - shapeToolWidth;
            ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
            if (viewToolBarContainerBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                viewToolBarContainerBinding3 = null;
            }
            ViewGroup.LayoutParams layoutParams = viewToolBarContainerBinding3.paramsContainer.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i2 = marginLayoutParams.leftMargin;
            int i3 = marginLayoutParams.rightMargin;
            ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
            if (viewToolBarContainerBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                viewToolBarContainerBinding4 = null;
            }
            viewToolBarContainerBinding4.paramsContainer.getChildAt(i).getLayoutParams().width = (int) (((f + paramsMaxWidth) - i2) - i3);
        }
    }

    /* renamed from: O */
    public final void m50289O() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
        if (i == 1) {
            setRotation(0.0f);
            return;
        }
        if (i == 2) {
            setRotation(0.0f);
        } else if (i == 3) {
            setRotation(90.0f);
        } else {
            if (i != 4) {
                return;
            }
            setRotation(90.0f);
        }
    }

    /* renamed from: P */
    public final void m50290P() {
        m50289O();
        m50287M();
        m50286L();
        int widthByOrientation = getWidthByOrientation();
        getLayoutParams().width = widthByOrientation;
        getLayoutParams().height = (int) ResManager.INSTANCE.getDimension(C10651R.dimen.drag_tool_height);
        setChildSize(widthByOrientation);
        requestLayout();
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.rlShapeToolViewAuto.ensureToolVisible();
        OnShapeToolDragListener onShapeToolDragListener = this.listener;
        if (onShapeToolDragListener != null) {
            onShapeToolDragListener.onDragStateChange(this.isDragging, this.dockType);
        }
    }

    /* renamed from: Q */
    public final void m50291Q(float bottomOffsetY) {
        float f = this.toolContainerWidthOffset;
        this.rightSideOriginWidth = bottomOffsetY;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, bottomOffsetY);
        ofFloat.setDuration(500L);
        ofFloat.setInterpolator(new AnticipateOvershootInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.fjn
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ToolDragView.m50269R(ToolDragView.this, valueAnimator);
            }
        });
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$startRightSideAnimation$1$2
            /* renamed from: a */
            public final void m50300a() {
                ToolDragView.AnimateCallBack animateCallBack = ToolDragView.this.getAnimateCallBack();
                if (animateCallBack != null) {
                    animateCallBack.onAnimateEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                m50300a();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                m50300a();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                ToolDragView.AnimateCallBack animateCallBack = ToolDragView.this.getAnimateCallBack();
                if (animateCallBack != null) {
                    animateCallBack.onAnimating();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                ToolDragView.AnimateCallBack animateCallBack = ToolDragView.this.getAnimateCallBack();
                if (animateCallBack != null) {
                    animateCallBack.onAnimateStart();
                }
            }
        });
        this.rightSideAnimator = ofFloat;
        ofFloat.start();
    }

    /* renamed from: S */
    public final void m50292S() {
        ValueAnimator valueAnimator = this.rightSideAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public final void flushUI() {
        RxTimerUtil.INSTANCE.timer(50L, new RxTimerUtil.TimerObserver() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$flushUI$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long aLong) {
                ToolDragView.this.m50290P();
            }
        });
    }

    @Nullable
    public final AnimateCallBack getAnimateCallBack() {
        return this.animateCallBack;
    }

    @NotNull
    public final ViewToolBarContainerBinding getBinding() {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding != null) {
            return viewToolBarContainerBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final DockType getDockType() {
        return this.dockType;
    }

    @Nullable
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final ShapeParamsContainer getParamsContainer() {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        ShapeParamsContainer scrollParamsContainer = viewToolBarContainerBinding.scrollParamsContainer;
        Intrinsics.checkNotNullExpressionValue(scrollParamsContainer, "scrollParamsContainer");
        return scrollParamsContainer;
    }

    @NotNull
    public final View getToolContainer() {
        View view = this.toolContainer;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("toolContainer");
        return null;
    }

    /* renamed from: isDragging, reason: from getter */
    public final boolean getIsDragging() {
        return this.isDragging;
    }

    public final boolean isToolbarAlignedWithSidebar(@NotNull SlideBarType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        boolean isLeftSideShortcut = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData().isLeftSideShortcut(SlideBarTypeKt.toShortcutType(type), ViewExtKt.isLayoutDirectionRtl(this));
        return (getDockType() == DockType.RIGHT && !isLeftSideShortcut) || (getDockType() == DockType.LEFT && isLeftSideShortcut);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        GlobalBundle.INSTANCE.register(this);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.register(editorBundle, this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCheckEditorAutoReLockEvent(@NotNull CheckEditorAutoReLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m50297y();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.valueAnimatorHide;
        ValueAnimator valueAnimator2 = null;
        if (valueAnimator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorHide");
            valueAnimator = null;
        }
        valueAnimator.removeAllListeners();
        ValueAnimator valueAnimator3 = this.valueAnimatorShow;
        if (valueAnimator3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorShow");
        } else {
            valueAnimator2 = valueAnimator3;
        }
        valueAnimator2.removeAllListeners();
        m50292S();
        GlobalBundle.INSTANCE.unregister(this);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.unregister(editorBundle, this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentStateEvent(@NotNull DocumentStateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getDocumentState() != DocumentState.OPENED) {
            return;
        }
        m50297y();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        int action = ev.getAction();
        if ((action == 2 && this.isDragging) || super.onInterceptTouchEvent(ev)) {
            return true;
        }
        int i = action & 255;
        if (i == 0) {
            this.isDragging = false;
            this.interceptDown.set(ev.getRawX(), ev.getRawY());
            this.downScrollPosition.set(getTranslationX(), getTranslationY());
            setDownTransOffset(ev);
        } else if (i == 2 && !this.isDragging) {
            m50296x(ev);
        }
        return this.isDragging;
    }

    public final void onPenTypeChanged(@Nullable ShapeToolType toolType) {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        FrameLayout paramsContainer = viewToolBarContainerBinding.paramsContainer;
        Intrinsics.checkNotNullExpressionValue(paramsContainer, "paramsContainer");
        int childCount = paramsContainer.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewKt.setViewVisibleOrGone(paramsContainer.getChildAt(i), false);
        }
        if (toolType == null) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$1[toolType.ordinal()]) {
            case 1:
                ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
                if (viewToolBarContainerBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding3;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.imageShapeParamsContainer, true);
                return;
            case 2:
                ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
                if (viewToolBarContainerBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding4;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.lassoTypeParamsContainer, true);
                return;
            case 3:
                ViewToolBarContainerBinding viewToolBarContainerBinding5 = this.binding;
                if (viewToolBarContainerBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding5;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.excerptTypeParamsContainer, true);
                return;
            case 4:
                ViewToolBarContainerBinding viewToolBarContainerBinding6 = this.binding;
                if (viewToolBarContainerBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding6;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.eraserTypeParamsContainer, true);
                return;
            case 5:
                ViewToolBarContainerBinding viewToolBarContainerBinding7 = this.binding;
                if (viewToolBarContainerBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding7;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.stickerParamsContainer, true);
                return;
            case 6:
                ViewToolBarContainerBinding viewToolBarContainerBinding8 = this.binding;
                if (viewToolBarContainerBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding8;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.scrollParamsContainer, false);
                return;
            case 7:
                ViewToolBarContainerBinding viewToolBarContainerBinding9 = this.binding;
                if (viewToolBarContainerBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding9;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.scrollParamsContainer, true);
                showTapeSizeContainer();
                return;
            default:
                ViewToolBarContainerBinding viewToolBarContainerBinding10 = this.binding;
                if (viewToolBarContainerBinding10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    viewToolBarContainerBinding2 = viewToolBarContainerBinding10;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding2.scrollParamsContainer, true);
                return;
        }
    }

    public final void onPenTypeRecover() {
        MutableLiveData<ShapeToolType> penType;
        ShapeToolType value;
        PenViewModel penViewModel;
        MutableLiveData<ShapeToolType> penType2;
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null || (penType = penViewModel2.getPenType()) == null || (value = penType.getValue()) == null || (penViewModel = this.penViewModel) == null || (penType2 = penViewModel.getPenType()) == null) {
            return;
        }
        penType2.postValue(value);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScreenOnEvent(@NotNull ScreenOnEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m50297y();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0010, code lost:
    
        if (r0 != 3) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x008e  */
    @Override // android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r12) {
        /*
            r11 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            int r0 = r12.getAction()
            r1 = 1
            if (r0 == r1) goto L4c
            r2 = 2
            if (r0 == r2) goto L14
            r2 = 3
            if (r0 == r2) goto L4c
            goto L89
        L14:
            boolean r0 = r11.isDragging
            if (r0 != 0) goto L1c
            r11.m50296x(r12)
            goto L89
        L1c:
            float r0 = r12.getRawX()
            android.graphics.PointF r2 = r11.interceptDown
            float r2 = r2.x
            float r0 = r0 - r2
            float r2 = r12.getRawY()
            android.graphics.PointF r3 = r11.interceptDown
            float r3 = r3.y
            float r2 = r2 - r3
            r11.m50279B(r12)
            android.graphics.PointF r3 = r11.downScrollPosition
            float r3 = r3.x
            float r3 = r3 + r0
            android.graphics.PointF r0 = r11.downTransOffset
            float r0 = r0.x
            float r3 = r3 - r0
            r11.setTranslationX(r3)
            android.graphics.PointF r0 = r11.downScrollPosition
            float r0 = r0.y
            float r0 = r0 + r2
            android.graphics.PointF r2 = r11.downTransOffset
            float r2 = r2.y
            float r0 = r0 - r2
            r11.setTranslationY(r0)
            goto L89
        L4c:
            boolean r0 = r11.isDragging
            if (r0 == 0) goto L53
            r11.m50294u()
        L53:
            r0 = 0
            r11.isDragging = r0
            r11.m50286L()
            r11.m50287M()
            android.graphics.PointF r0 = r11.downTransOffset
            r2 = 0
            r0.set(r2, r2)
            com.onyx.galaxy.note.category.data.DocCollectionBundle r0 = com.onyx.galaxy.note.category.data.DocCollectionBundle.INSTANCE
            com.onyx.galaxy.note.editor.event.ChangeScrollerConfigEvent r10 = new com.onyx.galaxy.note.editor.event.ChangeScrollerConfigEvent
            r3 = 0
            android.view.View r2 = r11.getToolContainer()
            android.graphics.Rect r2 = com.onyx.android.sdk.base.extension.ViewKt.globalVisibleRect(r2)
            int r2 = r2.width()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 29
            r9 = 0
            r2 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            r0.postEvent(r10)
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = r11.dockType
            r11.m50285K(r0)
        L89:
            boolean r0 = r11.isDragging
            if (r0 == 0) goto L8e
            goto L92
        L8e:
            boolean r1 = super.onTouchEvent(r12)
        L92:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: s */
    public final void m50293s() {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ValueAnimator valueAnimator = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        TintImageView ivFullScreen = viewToolBarContainerBinding.ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        this.lastFullScreenVisible = ivFullScreen.getVisibility() == 0;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = this.binding;
        if (viewToolBarContainerBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding2 = null;
        }
        TintView toolContainerDividerTop = viewToolBarContainerBinding2.toolContainerDividerTop;
        Intrinsics.checkNotNullExpressionValue(toolContainerDividerTop, "toolContainerDividerTop");
        toolContainerDividerTop.setVisibility(8);
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding3 = null;
        }
        TintView toolContainerDividerBottom = viewToolBarContainerBinding3.toolContainerDividerBottom;
        Intrinsics.checkNotNullExpressionValue(toolContainerDividerBottom, "toolContainerDividerBottom");
        toolContainerDividerBottom.setVisibility(8);
        ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
        if (viewToolBarContainerBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding4 = null;
        }
        TintImageView ivFullScreen2 = viewToolBarContainerBinding4.ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen2, "ivFullScreen");
        ivFullScreen2.setVisibility(8);
        TintImageView tintImageView = this.ivHolderIcon;
        if (tintImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ivHolderIcon");
            tintImageView = null;
        }
        tintImageView.setVisibility(0);
        TintImageView tintImageView2 = this.ivHolderIcon;
        if (tintImageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ivHolderIcon");
            tintImageView2 = null;
        }
        tintImageView2.tint();
        OnShapeToolDragListener onShapeToolDragListener = this.listener;
        if (onShapeToolDragListener != null) {
            onShapeToolDragListener.onDragStateChange(this.isDragging, this.dockType);
        }
        final int widthByOrientation = getWidthByOrientation();
        TintImageView tintImageView3 = this.ivHolderIcon;
        if (tintImageView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ivHolderIcon");
            tintImageView3 = null;
        }
        final int measuredWidth = widthByOrientation - tintImageView3.getMeasuredWidth();
        ValueAnimator valueAnimator2 = this.valueAnimatorHide;
        if (valueAnimator2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorHide");
            valueAnimator2 = null;
        }
        valueAnimator2.removeAllListeners();
        ValueAnimator valueAnimator3 = this.valueAnimatorHide;
        if (valueAnimator3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorHide");
            valueAnimator3 = null;
        }
        valueAnimator3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.ejn
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                ToolDragView.m50276t(ToolDragView.this, widthByOrientation, measuredWidth, valueAnimator4);
            }
        });
        ValueAnimator valueAnimator4 = this.valueAnimatorHide;
        if (valueAnimator4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorHide");
        } else {
            valueAnimator = valueAnimator4;
        }
        valueAnimator.start();
    }

    public final void setAnimateCallBack(@Nullable AnimateCallBack animateCallBack) {
        this.animateCallBack = animateCallBack;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.rlShapeToolViewAuto.setEditorBundle(editorBundle);
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding3 = null;
        }
        viewToolBarContainerBinding3.imageShapeParamsContainer.setEditorBundle(editorBundle);
        ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
        if (viewToolBarContainerBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding4 = null;
        }
        viewToolBarContainerBinding4.lassoTypeParamsContainer.setEditorBundle(editorBundle);
        ViewToolBarContainerBinding viewToolBarContainerBinding5 = this.binding;
        if (viewToolBarContainerBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding5 = null;
        }
        viewToolBarContainerBinding5.scrollParamsContainer.setEditorBundle(editorBundle);
        ViewToolBarContainerBinding viewToolBarContainerBinding6 = this.binding;
        if (viewToolBarContainerBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding6 = null;
        }
        viewToolBarContainerBinding6.eraserTypeParamsContainer.setEditorBundle(editorBundle);
        ViewToolBarContainerBinding viewToolBarContainerBinding7 = this.binding;
        if (viewToolBarContainerBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding7 = null;
        }
        viewToolBarContainerBinding7.stickerParamsContainer.setEditorBundle(editorBundle);
        ViewToolBarContainerBinding viewToolBarContainerBinding8 = this.binding;
        if (viewToolBarContainerBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding8 = null;
        }
        viewToolBarContainerBinding8.excerptTypeParamsContainer.setEditorBundle(editorBundle);
        ViewToolBarContainerBinding viewToolBarContainerBinding9 = this.binding;
        if (viewToolBarContainerBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding9;
        }
        viewToolBarContainerBinding2.setCommandDataInfo(editorBundle.getUiBundle().getCommandDataInfo());
        EditorBundleKt.register(editorBundle, this);
        m50297y();
    }

    public final void setOnDragListener(@NotNull OnShapeToolDragListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setPenViewModel(@NotNull final PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        this.penViewModel = penViewModel;
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.scrollParamsContainer.setPenViewModel(penViewModel);
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding3 = null;
        }
        viewToolBarContainerBinding3.eraserTypeParamsContainer.setPenViewModel(penViewModel);
        ViewToolBarContainerBinding viewToolBarContainerBinding4 = this.binding;
        if (viewToolBarContainerBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding4;
        }
        viewToolBarContainerBinding2.rlShapeToolViewAuto.setPenViewModel(penViewModel);
        MutableLiveData<DockType> dockType = penViewModel.getDockType();
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        dockType.observe((AppCompatActivity) context, new C12550b(new Function1<DockType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$setPenViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DockType dockType2) {
                invoke2(dockType2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DockType dockType2) {
                ToolDragView toolDragView = ToolDragView.this;
                Intrinsics.checkNotNull(dockType2);
                toolDragView.setOrientation(dockType2);
            }
        }));
        MutableLiveData<ShapeToolType> penType = penViewModel.getPenType();
        Context context2 = getContext();
        Intrinsics.checkNotNull(context2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        penType.observe((AppCompatActivity) context2, new C12550b(new Function1<ShapeToolType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$setPenViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeToolType shapeToolType) {
                invoke2(shapeToolType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ShapeToolType shapeToolType) {
                ToolDragView.this.onPenTypeChanged(shapeToolType);
            }
        }));
        MutableLiveData<List<ShapeToolType>> shapeShowList = penViewModel.getShapeShowList();
        Context context3 = getContext();
        Intrinsics.checkNotNull(context3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        shapeShowList.observe((AppCompatActivity) context3, new C12550b(new Function1<List<? extends ShapeToolType>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$setPenViewModel$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShapeToolType> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends ShapeToolType> list) {
                ViewToolBarContainerBinding viewToolBarContainerBinding5;
                viewToolBarContainerBinding5 = ToolDragView.this.binding;
                if (viewToolBarContainerBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    viewToolBarContainerBinding5 = null;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding5.paramsContainer, penViewModel.isVisibleShapeParams());
            }
        }));
        MutableLiveData<ShapeToolType> penType2 = penViewModel.getPenType();
        Context context4 = getContext();
        Intrinsics.checkNotNull(context4, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        penType2.observe((AppCompatActivity) context4, new C12550b(new Function1<ShapeToolType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ToolDragView$setPenViewModel$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeToolType shapeToolType) {
                invoke2(shapeToolType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ShapeToolType shapeToolType) {
                ViewToolBarContainerBinding viewToolBarContainerBinding5;
                viewToolBarContainerBinding5 = ToolDragView.this.binding;
                if (viewToolBarContainerBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    viewToolBarContainerBinding5 = null;
                }
                ViewKt.setViewVisibleOrGone(viewToolBarContainerBinding5.paramsContainer, penViewModel.isVisibleShapeParams());
            }
        }));
    }

    public final void setSelectByType(@Nullable ShapeToolType shapeToolType, boolean postEvent) {
        onPenTypeChanged(shapeToolType);
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.rlShapeToolViewAuto.setSelectByType(shapeToolType);
        if (shapeToolType == null || !postEvent) {
            return;
        }
        GlobalBundle.INSTANCE.postEvent(new ShapeToolTypeChangedEvent(shapeToolType.getShapeType()));
    }

    public final void setToolContainer(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.toolContainer = view;
    }

    public final void showTapeSizeContainer() {
        int tapeType = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getTapePropertyOption().getTapeType();
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.scrollParamsContainer.setShowSizeContainer(tapeType == 0);
    }

    /* renamed from: u */
    public final void m50294u() {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ValueAnimator valueAnimator = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        TintView toolContainerDividerTop = viewToolBarContainerBinding.toolContainerDividerTop;
        Intrinsics.checkNotNullExpressionValue(toolContainerDividerTop, "toolContainerDividerTop");
        toolContainerDividerTop.setVisibility(0);
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = this.binding;
        if (viewToolBarContainerBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding2 = null;
        }
        TintView toolContainerDividerBottom = viewToolBarContainerBinding2.toolContainerDividerBottom;
        Intrinsics.checkNotNullExpressionValue(toolContainerDividerBottom, "toolContainerDividerBottom");
        toolContainerDividerBottom.setVisibility(0);
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding3 = null;
        }
        TintImageView ivFullScreen = viewToolBarContainerBinding3.ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        ivFullScreen.setVisibility(this.lastFullScreenVisible ? 0 : 8);
        TintImageView tintImageView = this.ivHolderIcon;
        if (tintImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ivHolderIcon");
            tintImageView = null;
        }
        tintImageView.setVisibility(8);
        TintImageView tintImageView2 = this.ivHolderIcon;
        if (tintImageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ivHolderIcon");
            tintImageView2 = null;
        }
        final int measuredWidth = tintImageView2.getMeasuredWidth();
        int widthByOrientation = getWidthByOrientation();
        setChildSize(widthByOrientation);
        final int i = measuredWidth - widthByOrientation;
        ValueAnimator valueAnimator2 = this.valueAnimatorShow;
        if (valueAnimator2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorShow");
            valueAnimator2 = null;
        }
        valueAnimator2.removeAllListeners();
        ValueAnimator valueAnimator3 = this.valueAnimatorShow;
        if (valueAnimator3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorShow");
            valueAnimator3 = null;
        }
        valueAnimator3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.ajn
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                ToolDragView.m50277v(ToolDragView.this, measuredWidth, i, valueAnimator4);
            }
        });
        ValueAnimator valueAnimator4 = this.valueAnimatorShow;
        if (valueAnimator4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueAnimatorShow");
        } else {
            valueAnimator = valueAnimator4;
        }
        valueAnimator.start();
    }

    public final void updateBottomYOffset(float bottomOffsetY) {
        this.bottomOffsetY = bottomOffsetY;
        m50287M();
    }

    public final void updateEraserTypeUi(int eraserType) {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.eraserTypeParamsContainer.updateEraserTypeUI(eraserType);
    }

    public final void updateExcerptTypeUi() {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.excerptTypeParamsContainer.updateExcerptTypeUi();
    }

    public final void updateFullScreenVisible(boolean visible) {
        this.lastFullScreenVisible = visible;
        if (this.isDragging) {
            return;
        }
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        TintImageView ivFullScreen = viewToolBarContainerBinding.ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        ivFullScreen.setVisibility(visible ? 0 : 8);
    }

    public final void updateLassoTypeUi(int lassoType) {
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.lassoTypeParamsContainer.updateLassoTypeUi(lassoType);
    }

    public final void updateSideBarWidth(float left, float right) {
        this.leftSideBarWidth = left;
        this.rightSideBarWidth = right;
    }

    public final void updateTranslateXOffset(float widthOffset) {
        this.toolContainerWidthOffset = widthOffset;
        this.rightSideOriginWidth = widthOffset;
        m50287M();
    }

    public final void updateTranslateXOffsetWithAnimation(float widthOffset) {
        m50291Q(widthOffset);
    }

    public final void updateView() {
        flushUI();
    }

    /* renamed from: w */
    public final boolean m50295w(MotionEvent ev) {
        float rawX = ev.getRawX() - this.interceptDown.x;
        float rawY = ev.getRawY() - this.interceptDown.y;
        int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4 && rawX < (-this.dragWidth) && Math.abs(rawY) < this.dragWidth) {
                        return true;
                    }
                } else if (rawX > this.dragWidth && Math.abs(rawY) < this.dragWidth) {
                    return true;
                }
            } else if (rawY < (-this.dragWidth) && Math.abs(rawX) < this.dragWidth) {
                return true;
            }
        } else if (rawY > this.dragWidth && Math.abs(rawX) < this.dragWidth) {
            return true;
        }
        return false;
    }

    /* renamed from: x */
    public final void m50296x(MotionEvent event) {
        if (!m50295w(event) || this.isDragging) {
            return;
        }
        m50278A();
        this.isDragging = true;
        OnShapeToolDragListener onShapeToolDragListener = this.listener;
        if (onShapeToolDragListener != null) {
            onShapeToolDragListener.onDragStateChange(true, this.dockType);
        }
        VibratorUtils vibratorUtils = VibratorUtils.INSTANCE;
        ResManager resManager = ResManager.INSTANCE;
        vibratorUtils.vibrator(resManager.getLong(C10651R.integer.vibrator_time_milliseconds), resManager.getFloat(C10651R.dimen.vibrator_amplitude));
    }

    /* renamed from: y */
    public final void m50297y() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            AutoReLockNoteManager.INSTANCE.checkEditorAutoReLockObservable(editorBundle).doOnNext(new C12549a(editorBundle)).subscribe();
        }
    }

    /* renamed from: z */
    public final void m50298z(EditorBundle editorBundle, boolean lock) {
        CommandDataInfo commandDataInfo = editorBundle.getUiBundle().getCommandDataInfo();
        PenViewModel penViewModel = this.penViewModel;
        boolean isVisibleShapeParams = penViewModel != null ? penViewModel.isVisibleShapeParams() : false;
        ViewToolBarContainerBinding viewToolBarContainerBinding = this.binding;
        ViewToolBarContainerBinding viewToolBarContainerBinding2 = null;
        if (viewToolBarContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            viewToolBarContainerBinding = null;
        }
        viewToolBarContainerBinding.rlShapeToolViewAuto.enableShapeToolViewAuto(!lock);
        ViewToolBarContainerBinding viewToolBarContainerBinding3 = this.binding;
        if (viewToolBarContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            viewToolBarContainerBinding2 = viewToolBarContainerBinding3;
        }
        FrameLayout paramsContainer = viewToolBarContainerBinding2.paramsContainer;
        Intrinsics.checkNotNullExpressionValue(paramsContainer, "paramsContainer");
        paramsContainer.setVisibility(lock || !isVisibleShapeParams ? 4 : 0);
        commandDataInfo.getEnable().set(!lock);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToolDragView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ToolDragView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToolDragView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.dragWidth = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_30);
        this.dockType = DockType.TOP;
        this.interceptDown = new PointF();
        this.downScrollPosition = new PointF();
        this.downTransOffset = new PointF();
        this.rightSideOriginWidth = -1.0f;
        m50282E();
    }

    public /* synthetic */ ToolDragView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
