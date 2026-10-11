package com.onyx.galaxy.note.editor.view.popup;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.chad.library.adapter4.dragswipe.QuickDragAndSwipe;
import com.chad.library.adapter4.dragswipe.listener.DragAndSwipeDataCallback;
import com.chad.library.adapter4.dragswipe.listener.OnItemDragListener;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.common.events.ChangePenBoxEvent;
import com.onyx.android.sdk.universal.common.events.DeleteAllPenBoxEvent;
import com.onyx.android.sdk.universal.common.events.DeletePenBoxEvent;
import com.onyx.android.sdk.universal.common.events.ResetPenBoxPositionEvent;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.events.note.BeforeChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitNoteDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapeToolTypeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapeToolTypeRecoverEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.common.extension.MovingDraggable;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.ResizableRecyclerView;
import com.onyx.galaxy.note.databinding.ItemPenBoxPenBinding;
import com.onyx.galaxy.note.databinding.ItemPenBoxPenHorizontalBinding;
import com.onyx.galaxy.note.databinding.LayoutPenBoxBinding;
import com.onyx.galaxy.note.editor.data.PenBoxLocationModel;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.data.ShortcutBarData;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.data.SlideBarType;
import com.onyx.galaxy.note.editor.data.SlideBarTypeKt;
import com.onyx.galaxy.note.editor.event.CreateOtherPopupEvent;
import com.onyx.galaxy.note.editor.view.IShapeViewOpt;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.popup.PenBoxPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009e\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 ¶\u00012\u00020\u0001:\n·\u0001¶\u0001¸\u0001¹\u0001º\u0001B+\u0012\u0006\u0010p\u001a\u00020k\u0012\u0006\u0010s\u001a\u00020?\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010H\u001a\u0004\u0018\u00010?¢\u0006\u0006\b´\u0001\u0010µ\u0001J(\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u000bH\u0003J\b\u0010\u0011\u001a\u00020\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u000bH\u0002J\u001a\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00072\b\b\u0002\u0010\u0017\u001a\u00020\u0007H\u0002J\b\u0010\u0019\u001a\u00020\u000bH\u0002J\b\u0010\u001a\u001a\u00020\u000bH\u0002J\u0012\u0010\u001c\u001a\u00020\u000b2\b\b\u0002\u0010\u001b\u001a\u00020\u0007H\u0002J\b\u0010\u001d\u001a\u00020\u000bH\u0002J\b\u0010\u001e\u001a\u00020\u000bH\u0002J\b\u0010\u001f\u001a\u00020\u000bH\u0002J\b\u0010 \u001a\u00020\u000bH\u0002J\b\u0010!\u001a\u00020\u000bH\u0002J\b\u0010\"\u001a\u00020\u000bH\u0002J\b\u0010#\u001a\u00020\u000bH\u0002J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010'\u001a\u00020&H\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020$H\u0002J\u0018\u0010-\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u0010.\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u0010/\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u00100\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u00101\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\u0018\u00102\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010,\u001a\u00020&H\u0002J\b\u00103\u001a\u00020\u0007H\u0002J\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020$062\n\b\u0002\u00105\u001a\u0004\u0018\u000104H\u0002J\u001c\u0010;\u001a\u00020\u000b2\n\u00109\u001a\u0006\u0012\u0002\b\u0003082\u0006\u0010:\u001a\u00020\u0007H\u0002J\u001c\u0010=\u001a\u00020\u000b2\n\u00109\u001a\u0006\u0012\u0002\b\u0003082\u0006\u0010<\u001a\u00020\u0007H\u0002J\b\u0010>\u001a\u00020\u000bH\u0002J\u0012\u0010A\u001a\u00020\u00072\b\u0010@\u001a\u0004\u0018\u00010?H\u0002J\u0018\u0010D\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020B2\b\u0010)\u001a\u0004\u0018\u00010$J\u000e\u0010G\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020EJ \u0010I\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020?2\u0006\u0010\n\u001a\u00020\t2\b\u0010H\u001a\u0004\u0018\u00010?J\u0006\u0010J\u001a\u00020\u000bJ\u0006\u0010L\u001a\u00020KJ\u0006\u0010M\u001a\u00020\u0007J\u0010\u0010O\u001a\u00020\u000b2\b\b\u0002\u0010N\u001a\u00020\u0007J\u0018\u0010P\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010'\u001a\u00020&J\u0010\u0010Q\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010$J\u0006\u0010R\u001a\u00020\u000bJ\u0006\u0010S\u001a\u00020\u000bJ\u000e\u0010U\u001a\u00020\u000b2\u0006\u0010T\u001a\u00020\u0007J\u0006\u0010V\u001a\u00020\u0007J\u000e\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020WJ\u0010\u0010\\\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020ZH\u0007J\u0010\u0010^\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020]H\u0007J\u0010\u0010`\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020_H\u0007J\u0010\u0010b\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020eH\u0007J\u0010\u0010h\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020gH\u0007J\u0010\u0010j\u001a\u00020\u000b2\u0006\u0010[\u001a\u00020iH\u0007R\u0017\u0010p\u001a\u00020k8\u0006¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u0016\u0010s\u001a\u00020?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bt\u0010uR$\u0010H\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bv\u0010r\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u001c\u0010\u0080\u0001\u001a\u00060{R\u00020\u00008\u0006¢\u0006\f\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007fR\u001e\u0010\u0084\u0001\u001a\u0007\u0012\u0002\b\u00030\u0081\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001a\u0010\u0088\u0001\u001a\u00030\u0085\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001a\u0010\u008c\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u0090\u0001\u001a\u00030\u008d\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0019\u0010\u0093\u0001\u001a\u00030\u0091\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0014\u0010\u0092\u0001R\u0018\u0010\u0095\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b!\u0010\u0094\u0001R\u0017\u0010\u0096\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\"R\u0017\u0010\u0097\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\"R\u0017\u0010\u0098\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\bR)\u0010\u009f\u0001\u001a\u00030\u0099\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u009a\u0001\u0010\u001c\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0017\u0010C\u001a\u00020B8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b+\u0010 \u0001RY\u0010¨\u0001\u001aD\u0012\u000e\u0012\f\u0012\u0007\b\u0001\u0012\u00030£\u00010¢\u0001\u0012\f\u0012\n\u0012\u0005\u0012\u00030£\u00010¤\u00010¡\u0001j!\u0012\u000e\u0012\f\u0012\u0007\b\u0001\u0012\u00030£\u00010¢\u0001\u0012\f\u0012\n\u0012\u0005\u0012\u00030£\u00010¤\u0001`¥\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R!\u0010\u00ad\u0001\u001a\u00030©\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bª\u0001\u0010«\u0001\u001a\u0006\b¦\u0001\u0010¬\u0001R\u001a\u0010¯\u0001\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b7\u0010®\u0001R!\u0010³\u0001\u001a\u00030°\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b±\u0001\u0010«\u0001\u001a\u0006\bª\u0001\u0010²\u0001¨\u0006»\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;", "", "", "viewDownRawX", "viewDownRawY", "rawX", "rawY", "", "F", "Landroid/graphics/Rect;", "containerRect", "", "G", "Landroid/content/Context;", "context", "x", "u", "w", "Landroidx/recyclerview/widget/RecyclerView;", "rv", "j", "P", "collapse", "moving", GoogleApiAvailabilityLight.f29016b, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "B", "doEnterInAnimation", "I", "L", "N", "M", "l", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "Q", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "item", "Landroid/view/View;", "itemView", "m", "penArgs", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "p", "view", "V", "U", "Y", "T", "W", "X", "v", "", "selectId", "", "s", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;", "holder", "selected", "c0", "isSelected", "b0", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "", "location", "A", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "show", "Ljava/lang/Runnable;", "runnable", "post", "rootLocation", "resetPosition", "deleteSelectedPenArgs", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "hasSelectedPen", "addPen", "reloadPenList", "onPenItemClick", "applyPenArgs", "dismissAllPopup", "hide", "visible", "setVisible", "isShowing", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "type", "isPenBoxAlignedWithSidebar", "Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onShapeToolTypeChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/ChangePenBoxEvent;", "onChangePenBoxEvent", "Lcom/onyx/android/sdk/universal/common/events/DeletePenBoxEvent;", "onDeletePenBoxEvent", "Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;", "onDeleteAllPenBoxEvent", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/galaxy/note/editor/event/CreateOtherPopupEvent;", "onCreateOtherPopupEvent", "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", "onSystemThemeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;", "onQuitNoteDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "b", Constants.TYPES_INDEX_SIG, "containerLocation", "c", "Landroid/graphics/Rect;", "d", "getRootLocation", "()[I", "setRootLocation", "([I)V", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;", "e", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;", "getPenAdapter", "()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;", "penAdapter", "Lcom/hjq/window/EasyWindow;", C6997f.f39671c, "Lcom/hjq/window/EasyWindow;", "popupWindow", "Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;", C6998g.f39679a, "Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;", "binding", "Lcom/onyx/galaxy/note/common/extension/MovingDraggable;", C6999h.f39688c, "Lcom/onyx/galaxy/note/common/extension/MovingDraggable;", "movingDraggable", "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;", "i", "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;", "dragCallback", "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;", "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;", "penBoxLocation", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "currentDockType", "isCollapse", "isVisible", "shadowOffset", "", C4921e.f26528e, "getState", "()I", "setState", "(I)V", "state", "Landroid/app/Activity;", "Ljava/util/LinkedHashMap;", "Ljava/lang/Class;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Ljava/lang/ref/WeakReference;", "Lkotlin/collections/LinkedHashMap;", "q", "Ljava/util/LinkedHashMap;", "curPopupMenus", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;", "r", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;", Constants.TRANSLET_OUTPUT_PNAME, "Ljava/lang/Runnable;", "resetLocationRun", "Landroidx/recyclerview/widget/LinearLayoutManager;", "t", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "linearLayoutManager", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;[ILandroid/graphics/Rect;[I)V", "Companion", "BasePenItemHolder", "PenAdapter", "PenItemHorizontalHolder", "PenItemVerticalHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPenBoxPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1037:1\n324#2:1038\n32#3,5:1039\n32#3,5:1068\n41#3,5:1073\n11#4,12:1044\n41#4,2:1056\n256#5,2:1058\n256#5,2:1060\n254#5:1062\n256#5,2:1063\n256#5,2:1065\n254#5:1067\n256#5,2:1111\n256#5,2:1113\n256#5,2:1115\n256#5,2:1117\n256#5,2:1119\n350#6,7:1078\n350#6,7:1086\n1603#6,9:1095\n1855#6:1104\n1856#6:1106\n1612#6:1107\n1747#6,3:1108\n1#7:1085\n1#7:1105\n215#8,2:1093\n*S KotlinDebug\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n*L\n221#1:1038\n245#1:1039,5\n536#1:1068,5\n546#1:1073,5\n302#1:1044,12\n302#1:1056,2\n341#1:1058,2\n342#1:1060,2\n358#1:1062\n362#1:1063,2\n363#1:1065,2\n396#1:1067\n1004#1:1111,2\n381#1:1113,2\n386#1:1115,2\n418#1:1117,2\n419#1:1119,2\n581#1:1078,7\n648#1:1086,7\n710#1:1095,9\n710#1:1104\n710#1:1106\n710#1:1107\n711#1:1108,3\n710#1:1105\n702#1:1093,2\n*E\n"})
/* loaded from: classes9.dex */
public final class PenBoxPopup {
    public static final int NONE = 1;
    public static final int RESET_AREA = 2;

    /* renamed from: u */
    @NotNull
    public static final String f60409u = "PenBoxPopup";

    /* renamed from: v */
    @Nullable
    public static Rect f60410v;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public int[] containerLocation;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Rect containerRect;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public int[] rootLocation;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PenAdapter penAdapter;

    /* renamed from: f, reason: from kotlin metadata */
    public EasyWindow<?> popupWindow;

    /* renamed from: g, reason: from kotlin metadata */
    public LayoutPenBoxBinding binding;

    /* renamed from: h, reason: from kotlin metadata */
    public MovingDraggable movingDraggable;

    /* renamed from: i, reason: from kotlin metadata */
    public QuickDragAndSwipe dragCallback;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public PenBoxLocationModel penBoxLocation;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public DockType currentDockType;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isCollapse;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isVisible;

    /* renamed from: n, reason: from kotlin metadata */
    public float shadowOffset;

    /* renamed from: o, reason: from kotlin metadata */
    public int state;

    /* renamed from: p, reason: from kotlin metadata */
    public Activity activity;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<Class<? extends BasePopupWindow>, WeakReference<BasePopupWindow>> curPopupMenus;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy handler;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Runnable resetLocationRun;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy linearLayoutManager;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000b¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;", "T", "Landroidx/databinding/ViewDataBinding;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "binding", "(Landroidx/databinding/ViewDataBinding;)V", "clContent", "Landroid/view/View;", "getClContent", "()Landroid/view/View;", "setClContent", "(Landroid/view/View;)V", "iconView", "getIconView", "setIconView", "ivSelectedArrow", "getIvSelectedArrow", "setIvSelectedArrow", "tvValue", "Landroid/widget/TextView;", "getTvValue", "()Landroid/widget/TextView;", "setTvValue", "(Landroid/widget/TextView;)V", "vSelected", "getVSelected", "setVSelected", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static class BasePenItemHolder<T extends ViewDataBinding> extends DataBindingHolder<T> {
        public View clContent;
        public View iconView;
        public View ivSelectedArrow;
        public TextView tvValue;
        public View vSelected;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BasePenItemHolder(@NotNull T binding) {
            super(binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
        }

        @NotNull
        public final View getClContent() {
            View view = this.clContent;
            if (view != null) {
                return view;
            }
            Intrinsics.throwUninitializedPropertyAccessException("clContent");
            return null;
        }

        @NotNull
        public final View getIconView() {
            View view = this.iconView;
            if (view != null) {
                return view;
            }
            Intrinsics.throwUninitializedPropertyAccessException("iconView");
            return null;
        }

        @NotNull
        public final View getIvSelectedArrow() {
            View view = this.ivSelectedArrow;
            if (view != null) {
                return view;
            }
            Intrinsics.throwUninitializedPropertyAccessException("ivSelectedArrow");
            return null;
        }

        @NotNull
        public final TextView getTvValue() {
            TextView textView = this.tvValue;
            if (textView != null) {
                return textView;
            }
            Intrinsics.throwUninitializedPropertyAccessException("tvValue");
            return null;
        }

        @NotNull
        public final View getVSelected() {
            View view = this.vSelected;
            if (view != null) {
                return view;
            }
            Intrinsics.throwUninitializedPropertyAccessException("vSelected");
            return null;
        }

        public final void setClContent(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "<set-?>");
            this.clContent = view;
        }

        public final void setIconView(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "<set-?>");
            this.iconView = view;
        }

        public final void setIvSelectedArrow(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "<set-?>");
            this.ivSelectedArrow = view;
        }

        public final void setTvValue(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.tvValue = textView;
        }

        public final void setVSelected(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "<set-?>");
            this.vSelected = view;
        }
    }

    @Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u000f\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\n\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\u001a\u0010\u000e\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\fH\u0002J&\u0010\u0012\u001a\u00020\u00042\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J4\u0010\u0016\u001a\u00020\u00042\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u001c\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0002J\u001c\u0010\u0019\u001a\u00020\u00042\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u000f2\u0006\u0010\u0018\u001a\u00020\fH\u0002R$\u0010 \u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "item", "", "onItemClick", "clearSelectedItem", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "onStartDragHolder", "onEndDragHolder", "q", "", "selected", "x", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;", "", "position", "r", "", "", "payloads", "u", "w", "isSelected", "v", "t", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getSelectedItem", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "setSelectedItem", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "selectedItem", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nPenBoxPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1037:1\n256#2,2:1038\n*S KotlinDebug\n*F\n+ 1 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter\n*L\n967#1:1038,2\n*E\n"})
    /* loaded from: classes9.dex */
    public final class PenAdapter extends BaseMultiItemAdapter<PenArgs> {

        /* renamed from: t, reason: from kotlin metadata */
        @Nullable
        public PenArgs selectedItem;

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DockType.values().length];
                try {
                    iArr[DockType.LEFT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DockType.RIGHT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DockType.TOP.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[DockType.BOTTOM.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public PenAdapter() {
            super(null, 1, null);
            m49265q();
            onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.i1l
                @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
                public final int onItemViewType(int i, List list) {
                    int m49262p;
                    m49262p = PenBoxPopup.PenAdapter.m49262p(PenBoxPopup.this, i, list);
                    return m49262p;
                }
            });
        }

        /* renamed from: p */
        public static final int m49262p(PenBoxPopup this$0, int i, List list) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(list, "<anonymous parameter 1>");
            int i2 = WhenMappings.$EnumSwitchMapping$0[this$0.currentDockType.ordinal()];
            if (i2 == 1 || i2 == 2) {
                return 1;
            }
            if (i2 == 3 || i2 == 4) {
                return 0;
            }
            throw new NoWhenBranchMatchedException();
        }

        /* renamed from: s */
        public static final void m49263s(PenBoxPopup this$0, PenArgs penArgs, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNull(view);
            this$0.onPenItemClick(penArgs, view);
        }

        /* renamed from: t */
        public static final boolean m49264t(View view) {
            return true;
        }

        public final void clearSelectedItem() {
            this.selectedItem = null;
            notifyDataSetChanged();
        }

        @Nullable
        public final PenArgs getSelectedItem() {
            return this.selectedItem;
        }

        public final void onEndDragHolder(@Nullable RecyclerView.ViewHolder holder) {
            m49270x(holder, false);
        }

        public final void onItemClick(@Nullable PenArgs item) {
            this.selectedItem = item;
            notifyDataSetChanged();
        }

        public final void onStartDragHolder(@Nullable RecyclerView.ViewHolder holder) {
            m49270x(holder, true);
        }

        /* renamed from: q */
        public final void m49265q() {
            addItemType(0, new BaseMultiItemAdapter.OnMultiItemAdapterListener<PenArgs, PenItemHorizontalHolder>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$PenAdapter$addItemTypes$1
                @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
                public /* bridge */ /* synthetic */ void onBind(PenBoxPopup.PenItemHorizontalHolder penItemHorizontalHolder, int i, PenArgs penArgs, List list) {
                    onBind2(penItemHorizontalHolder, i, penArgs, (List<? extends Object>) list);
                }

                @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
                @NotNull
                public PenBoxPopup.PenItemHorizontalHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    ItemPenBoxPenHorizontalBinding inflate = ItemPenBoxPenHorizontalBinding.inflate(LayoutInflater.from(context), parent, false);
                    Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                    return new PenBoxPopup.PenItemHorizontalHolder(inflate);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
                public void onBind(@NotNull PenBoxPopup.PenItemHorizontalHolder holder, int position, @Nullable PenArgs item) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    if (item == null) {
                        return;
                    }
                    ((ItemPenBoxPenHorizontalBinding) holder.getBinding()).setModel(item);
                    ((ItemPenBoxPenHorizontalBinding) holder.getBinding()).executePendingBindings();
                    ((ItemPenBoxPenHorizontalBinding) holder.getBinding()).value.setText(String.valueOf(FloatKt.keepFloat(PensizeConvertExtKt.sizeToValue(item.getWidth()), 2)));
                    PenBoxPopup.PenAdapter.this.m49266r(holder, position, item);
                }

                /* renamed from: onBind, reason: avoid collision after fix types in other method */
                public void onBind2(@NotNull PenBoxPopup.PenItemHorizontalHolder holder, int position, @Nullable PenArgs item, @NotNull List<? extends Object> payloads) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    Intrinsics.checkNotNullParameter(payloads, "payloads");
                    PenBoxPopup.PenAdapter.this.m49267u(holder, position, item, payloads);
                }
            });
            addItemType(1, new BaseMultiItemAdapter.OnMultiItemAdapterListener<PenArgs, PenItemVerticalHolder>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$PenAdapter$addItemTypes$2
                @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
                public /* bridge */ /* synthetic */ void onBind(PenBoxPopup.PenItemVerticalHolder penItemVerticalHolder, int i, PenArgs penArgs, List list) {
                    onBind2(penItemVerticalHolder, i, penArgs, (List<? extends Object>) list);
                }

                @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
                @NotNull
                public PenBoxPopup.PenItemVerticalHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    ItemPenBoxPenBinding inflate = ItemPenBoxPenBinding.inflate(LayoutInflater.from(context), parent, false);
                    Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                    return new PenBoxPopup.PenItemVerticalHolder(inflate);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
                public void onBind(@NotNull PenBoxPopup.PenItemVerticalHolder holder, int position, @Nullable PenArgs item) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    if (item == null) {
                        return;
                    }
                    ((ItemPenBoxPenBinding) holder.getBinding()).setModel(item);
                    ((ItemPenBoxPenBinding) holder.getBinding()).executePendingBindings();
                    ((ItemPenBoxPenBinding) holder.getBinding()).value.setText(String.valueOf(FloatKt.keepFloat(PensizeConvertExtKt.sizeToValue(item.getWidth()), 2)));
                    PenBoxPopup.PenAdapter.this.m49266r(holder, position, item);
                }

                /* renamed from: onBind, reason: avoid collision after fix types in other method */
                public void onBind2(@NotNull PenBoxPopup.PenItemVerticalHolder holder, int position, @Nullable PenArgs item, @NotNull List<? extends Object> payloads) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    Intrinsics.checkNotNullParameter(payloads, "payloads");
                    PenBoxPopup.PenAdapter.this.m49267u(holder, position, item, payloads);
                }
            });
        }

        /* renamed from: r */
        public final void m49266r(BasePenItemHolder<?> holder, int position, final PenArgs item) {
            if (item == null) {
                return;
            }
            m49269w(item, holder);
            View view = holder.itemView;
            final PenBoxPopup penBoxPopup = PenBoxPopup.this;
            view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j1l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PenBoxPopup.PenAdapter.m49263s(PenBoxPopup.this, item, view2);
                }
            });
            holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.k1l
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    boolean m49264t;
                    m49264t = PenBoxPopup.PenAdapter.m49264t(view2);
                    return m49264t;
                }
            });
        }

        public final void setSelectedItem(@Nullable PenArgs penArgs) {
            this.selectedItem = penArgs;
        }

        /* renamed from: u */
        public final void m49267u(BasePenItemHolder<?> holder, int position, PenArgs item, List<? extends Object> payloads) {
            if (item == null) {
                return;
            }
            m49269w(item, holder);
        }

        /* renamed from: v */
        public final void m49268v(BasePenItemHolder<?> holder, boolean isSelected) {
            PenBoxPopup.this.m49244b0(holder, isSelected);
            PenBoxPopup.this.m49245c0(holder, isSelected);
        }

        /* renamed from: w */
        public final void m49269w(PenArgs item, BasePenItemHolder<?> holder) {
            PenArgs penArgs = this.selectedItem;
            boolean areEqual = Intrinsics.areEqual(penArgs != null ? penArgs.getId() : null, item.getId());
            if (holder.getIconView() instanceof ShapeIconView) {
                holder.getIvSelectedArrow().setVisibility(areEqual ? 0 : 8);
            }
            holder.getClContent().setSelected(areEqual);
            m49268v(holder, areEqual);
            if (holder.getIconView() instanceof PhysicalShapeIconView) {
                View iconView = holder.getIconView();
                Intrinsics.checkNotNull(iconView, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView");
                IShapeViewOpt.DefaultImpls.setViewSelect$default((PhysicalShapeIconView) iconView, areEqual, false, 2, null);
            }
        }

        /* renamed from: x */
        public final void m49270x(RecyclerView.ViewHolder holder, boolean selected) {
            View view;
            View findViewById = (holder == null || (view = holder.itemView) == null) ? null : view.findViewById(C10651R.id.cl_content);
            if (findViewById == null) {
                return;
            }
            findViewById.setSelected(selected);
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemHorizontalHolder;", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;", "Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;", "I", "Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class PenItemHorizontalHolder extends BasePenItemHolder<ItemPenBoxPenHorizontalBinding> {

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final ItemPenBoxPenHorizontalBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PenItemHorizontalHolder(@NotNull ItemPenBoxPenHorizontalBinding viewBinding) {
            super(viewBinding);
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
            PhysicalShapeIconView iconView = viewBinding.iconView;
            Intrinsics.checkNotNullExpressionValue(iconView, "iconView");
            setIconView(iconView);
            TintImageView ivSelectedArrow = viewBinding.ivSelectedArrow;
            Intrinsics.checkNotNullExpressionValue(ivSelectedArrow, "ivSelectedArrow");
            setIvSelectedArrow(ivSelectedArrow);
            TintConstraintLayout clContent = viewBinding.clContent;
            Intrinsics.checkNotNullExpressionValue(clContent, "clContent");
            setClContent(clContent);
            TintView vSelectedHorizontal = viewBinding.vSelectedHorizontal;
            Intrinsics.checkNotNullExpressionValue(vSelectedHorizontal, "vSelectedHorizontal");
            setVSelected(vSelectedHorizontal);
            TintTextView value = viewBinding.value;
            Intrinsics.checkNotNullExpressionValue(value, "value");
            setTvValue(value);
        }

        @NotNull
        public final ItemPenBoxPenHorizontalBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;", "Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;", "I", "Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class PenItemVerticalHolder extends BasePenItemHolder<ItemPenBoxPenBinding> {

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final ItemPenBoxPenBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PenItemVerticalHolder(@NotNull ItemPenBoxPenBinding viewBinding) {
            super(viewBinding);
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
            PhysicalShapeIconView iconView = viewBinding.iconView;
            Intrinsics.checkNotNullExpressionValue(iconView, "iconView");
            setIconView(iconView);
            TintImageView ivSelectedArrow = viewBinding.ivSelectedArrow;
            Intrinsics.checkNotNullExpressionValue(ivSelectedArrow, "ivSelectedArrow");
            setIvSelectedArrow(ivSelectedArrow);
            TintConstraintLayout clContent = viewBinding.clContent;
            Intrinsics.checkNotNullExpressionValue(clContent, "clContent");
            setClContent(clContent);
            TintView vSelectedVertical = viewBinding.vSelectedVertical;
            Intrinsics.checkNotNullExpressionValue(vSelectedVertical, "vSelectedVertical");
            setVSelected(vSelectedVertical);
            TintTextView value = viewBinding.value;
            Intrinsics.checkNotNullExpressionValue(value, "value");
            setTvValue(value);
        }

        @NotNull
        public final ItemPenBoxPenBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShapeToolType.values().length];
            try {
                iArr[ShapeToolType.INK_PEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeToolType.CALLIGRAPHY_PEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeToolType.SOFT_PAINT_PEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeToolType.BALLPOINT_PEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeToolType.MARKER_PEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeToolType.PENCIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$a */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C12448a implements MovingDraggable.OnMoveInterceptListener, FunctionAdapter {
        public C12448a() {
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof MovingDraggable.OnMoveInterceptListener) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(4, PenBoxPopup.this, PenBoxPopup.class, "onMoveInterceptListener", "onMoveInterceptListener(FFFF)Z", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // com.onyx.galaxy.note.common.extension.MovingDraggable.OnMoveInterceptListener
        public final boolean onIntercept(float f, float f2, float f3, float f4) {
            return PenBoxPopup.this.m49228F(f, f2, f3, f4);
        }
    }

    public PenBoxPopup(@NotNull EditorBundle editorBundle, @NotNull int[] containerLocation, @NotNull Rect containerRect, @Nullable int[] iArr) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(containerLocation, "containerLocation");
        Intrinsics.checkNotNullParameter(containerRect, "containerRect");
        this.editorBundle = editorBundle;
        this.containerLocation = containerLocation;
        this.containerRect = containerRect;
        this.rootLocation = iArr;
        this.penAdapter = new PenAdapter();
        this.penBoxLocation = NoteConfigManager.INSTANCE.getPenBoxLocation().get();
        this.currentDockType = DockType.RIGHT;
        this.isVisible = true;
        this.shadowOffset = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_4);
        this.state = 1;
        this.curPopupMenus = new LinkedHashMap<>();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PenBoxArgsHandler>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$handler$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PenBoxArgsHandler invoke() {
                return new PenBoxArgsHandler(PenBoxPopup.this);
            }
        });
        this.handler = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayoutManager>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$linearLayoutManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LinearLayoutManager invoke() {
                LayoutPenBoxBinding layoutPenBoxBinding;
                layoutPenBoxBinding = PenBoxPopup.this.binding;
                if (layoutPenBoxBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutPenBoxBinding = null;
                }
                return new LinearLayoutManager(layoutPenBoxBinding.getRoot().getContext());
            }
        });
        this.linearLayoutManager = lazy2;
    }

    /* renamed from: C */
    public static final void m49204C(boolean z, ViewGroup.LayoutParams layoutParams, PenBoxPopup this$0, ResizableRecyclerView contentView, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(contentView, "$contentView");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        if (z) {
            layoutParams.height = intValue;
        } else {
            layoutParams.width = intValue;
        }
        if (intValue == 0) {
            LayoutPenBoxBinding layoutPenBoxBinding = this$0.binding;
            LayoutPenBoxBinding layoutPenBoxBinding2 = null;
            if (layoutPenBoxBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutPenBoxBinding = null;
            }
            ResizableRecyclerView listview = layoutPenBoxBinding.listview;
            Intrinsics.checkNotNullExpressionValue(listview, "listview");
            listview.setVisibility(8);
            LayoutPenBoxBinding layoutPenBoxBinding3 = this$0.binding;
            if (layoutPenBoxBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutPenBoxBinding2 = layoutPenBoxBinding3;
            }
            TintImageView ivOperation = layoutPenBoxBinding2.ivOperation;
            Intrinsics.checkNotNullExpressionValue(ivOperation, "ivOperation");
            ivOperation.setVisibility(8);
            layoutParams.width = -2;
            layoutParams.height = -2;
        }
        contentView.setLayoutParams(layoutParams);
    }

    /* renamed from: E */
    public static final void m49205E(boolean z, ViewGroup.LayoutParams layoutParams, PenBoxPopup this$0, int i, ResizableRecyclerView contentView, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(contentView, "$contentView");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        if (z) {
            layoutParams.height = intValue;
        } else {
            layoutParams.width = intValue;
        }
        LayoutPenBoxBinding layoutPenBoxBinding = null;
        if (intValue >= 0) {
            LayoutPenBoxBinding layoutPenBoxBinding2 = this$0.binding;
            if (layoutPenBoxBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutPenBoxBinding2 = null;
            }
            ResizableRecyclerView listview = layoutPenBoxBinding2.listview;
            Intrinsics.checkNotNullExpressionValue(listview, "listview");
            listview.setVisibility(0);
        }
        if (intValue == i) {
            layoutParams.width = -2;
            layoutParams.height = -2;
            LayoutPenBoxBinding layoutPenBoxBinding3 = this$0.binding;
            if (layoutPenBoxBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutPenBoxBinding = layoutPenBoxBinding3;
            }
            TintImageView ivOperation = layoutPenBoxBinding.ivOperation;
            Intrinsics.checkNotNullExpressionValue(ivOperation, "ivOperation");
            ivOperation.setVisibility(0);
        }
        contentView.setLayoutParams(layoutParams);
        contentView.restoreScrollOffset();
    }

    /* renamed from: H */
    public static final void m49206H(PenBoxPopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PenAdapter penAdapter = this$0.penAdapter;
        PenArgs selectedItem = penAdapter.getSelectedItem();
        LayoutPenBoxBinding layoutPenBoxBinding = null;
        penAdapter.submitList(this$0.m49254s(selectedItem != null ? selectedItem.getId() : null));
        if (!z) {
            this$0.m49236Q();
            return;
        }
        LayoutPenBoxBinding layoutPenBoxBinding2 = this$0.binding;
        if (layoutPenBoxBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutPenBoxBinding = layoutPenBoxBinding2;
        }
        layoutPenBoxBinding.listview.smoothScrollToPosition(this$0.penAdapter.getItemCount());
    }

    /* renamed from: J */
    public static /* synthetic */ void m49207J(PenBoxPopup penBoxPopup, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        penBoxPopup.m49230I(z);
    }

    /* renamed from: K */
    public static final void m49208K(PenBoxPopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MovingDraggable movingDraggable = this$0.movingDraggable;
        if (movingDraggable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable = null;
        }
        EasyWindow<?> easyWindow = movingDraggable.getEasyWindow();
        Intrinsics.checkNotNullExpressionValue(easyWindow, "getEasyWindow(...)");
        if (EasyWindowKt.getSafeDecorView(easyWindow) == null) {
            return;
        }
        boolean z2 = this$0.currentDockType.getIconRotationByType() == 270.0f;
        if (this$0.isCollapse) {
            this$0.m49231L();
        } else if (z2) {
            this$0.m49233N();
        } else {
            this$0.m49232M();
        }
        if (z) {
            this$0.m49248l();
        }
    }

    /* renamed from: R */
    public static final void m49209R(PenBoxPopup this$0, final boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isVisible = z;
        EasyWindow<?> easyWindow = this$0.popupWindow;
        if (easyWindow == null) {
            Intrinsics.throwUninitializedPropertyAccessException("popupWindow");
            easyWindow = null;
        }
        EasyWindowKt.requireSafeContentView(easyWindow, new Function1<View, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$setVisible$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull View contentView) {
                Intrinsics.checkNotNullParameter(contentView, "contentView");
                if (ViewKt.isVisible(contentView) == z) {
                    return;
                }
                Animation animation = contentView.getAnimation();
                if (animation != null) {
                    animation.cancel();
                }
                ViewKt.setViewVisibleOrInvisible(contentView, z);
            }
        });
    }

    /* renamed from: S */
    public static final void m49210S(PenBoxPopup this$0, Point point) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(point, "$point");
        MovingDraggable movingDraggable = this$0.movingDraggable;
        if (movingDraggable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable = null;
        }
        movingDraggable.resetLocation(Float.valueOf(point.x), Float.valueOf(point.y), this$0.penBoxLocation.getDockType());
        this$0.m49230I(true);
    }

    /* renamed from: a0 */
    public static final void m49212a0(PenBoxPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MovingDraggable movingDraggable = this$0.movingDraggable;
        if (movingDraggable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable = null;
        }
        movingDraggable.enableDrag(true);
    }

    /* renamed from: o */
    public static /* synthetic */ void m49221o(PenBoxPopup penBoxPopup, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        penBoxPopup.m49250n(z, z2);
    }

    public static /* synthetic */ void reloadPenList$default(PenBoxPopup penBoxPopup, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        penBoxPopup.reloadPenList(z);
    }

    /* renamed from: t */
    public static /* synthetic */ List m49222t(PenBoxPopup penBoxPopup, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return penBoxPopup.m49254s(str);
    }

    /* renamed from: y */
    public static final void m49223y(PenBoxPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49255u();
    }

    /* renamed from: z */
    public static final void m49224z(PenBoxPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isCollapse) {
            m49221o(this$0, false, false, 2, null);
        } else {
            this$0.m49243Z();
        }
    }

    /* renamed from: A */
    public final boolean m49225A(int[] location) {
        return location != null && location.length >= 2 && location[0] >= 0 && location[1] >= 0;
    }

    /* renamed from: B */
    public final void m49226B() {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        LayoutPenBoxBinding layoutPenBoxBinding2 = null;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ResizableRecyclerView listview = layoutPenBoxBinding.listview;
        Intrinsics.checkNotNullExpressionValue(listview, "listview");
        if (listview.getVisibility() == 0) {
            final boolean z = this.currentDockType.getIconRotationByType() == 270.0f;
            LayoutPenBoxBinding layoutPenBoxBinding3 = this.binding;
            if (layoutPenBoxBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutPenBoxBinding2 = layoutPenBoxBinding3;
            }
            final ResizableRecyclerView listview2 = layoutPenBoxBinding2.listview;
            Intrinsics.checkNotNullExpressionValue(listview2, "listview");
            ValueAnimator ofInt = ValueAnimator.ofInt(z ? listview2.getHeight() : listview2.getWidth(), 0);
            ofInt.setDuration(100L);
            final ViewGroup.LayoutParams layoutParams = listview2.getLayoutParams();
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.z0l
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PenBoxPopup.m49204C(z, layoutParams, this, listview2, valueAnimator);
                }
            });
            ofInt.start();
        }
    }

    /* renamed from: D */
    public final void m49227D() {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        LayoutPenBoxBinding layoutPenBoxBinding2 = null;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ResizableRecyclerView listview = layoutPenBoxBinding.listview;
        Intrinsics.checkNotNullExpressionValue(listview, "listview");
        if (listview.getVisibility() == 0) {
            LayoutPenBoxBinding layoutPenBoxBinding3 = this.binding;
            if (layoutPenBoxBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutPenBoxBinding3 = null;
            }
            TintImageView ivOperation = layoutPenBoxBinding3.ivOperation;
            Intrinsics.checkNotNullExpressionValue(ivOperation, "ivOperation");
            if (ivOperation.getVisibility() == 0) {
                return;
            }
        }
        if (this.penAdapter.getItemCount() > 0) {
            final int itemCount = this.penAdapter.getItemCount() * ResManager.INSTANCE.getDimens(C7384R.dimen.dp_48);
            final boolean z = this.currentDockType.getIconRotationByType() == 270.0f;
            ValueAnimator ofInt = ValueAnimator.ofInt(0, itemCount);
            ofInt.setDuration(100L);
            LayoutPenBoxBinding layoutPenBoxBinding4 = this.binding;
            if (layoutPenBoxBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutPenBoxBinding2 = layoutPenBoxBinding4;
            }
            final ResizableRecyclerView listview2 = layoutPenBoxBinding2.listview;
            Intrinsics.checkNotNullExpressionValue(listview2, "listview");
            final ViewGroup.LayoutParams layoutParams = listview2.getLayoutParams();
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.b1l
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PenBoxPopup.m49205E(z, layoutParams, this, itemCount, listview2, valueAnimator);
                }
            });
            ofInt.start();
            return;
        }
        LayoutPenBoxBinding layoutPenBoxBinding5 = this.binding;
        if (layoutPenBoxBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding5 = null;
        }
        ResizableRecyclerView listview3 = layoutPenBoxBinding5.listview;
        Intrinsics.checkNotNullExpressionValue(listview3, "listview");
        listview3.setVisibility(0);
        LayoutPenBoxBinding layoutPenBoxBinding6 = this.binding;
        if (layoutPenBoxBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutPenBoxBinding2 = layoutPenBoxBinding6;
        }
        TintImageView ivOperation2 = layoutPenBoxBinding2.ivOperation;
        Intrinsics.checkNotNullExpressionValue(ivOperation2, "ivOperation");
        ivOperation2.setVisibility(0);
    }

    /* renamed from: F */
    public final boolean m49228F(float viewDownRawX, float viewDownRawY, float rawX, float rawY) {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ResizableRecyclerView listview = layoutPenBoxBinding.listview;
        Intrinsics.checkNotNullExpressionValue(listview, "listview");
        Rect screenVisibleRect = ViewKt.screenVisibleRect(listview);
        Point point = new Point((int) viewDownRawX, (int) viewDownRawY);
        if (!screenVisibleRect.contains(point.x, point.y)) {
            return false;
        }
        if (this.currentDockType.getIconRotationByType() == 270.0f) {
            if ((!listview.canScrollVertically(1) && !listview.canScrollVertically(-1)) || Math.abs(rawX - viewDownRawX) >= Math.abs(rawY - viewDownRawY)) {
                return false;
            }
        } else if ((!listview.canScrollHorizontally(1) && !listview.canScrollHorizontally(-1)) || Math.abs(rawX - viewDownRawX) <= Math.abs(rawY - viewDownRawY)) {
            return false;
        }
        return true;
    }

    /* renamed from: G */
    public final void m49229G(Rect containerRect) {
        if (containerRect.width() <= 0 || containerRect.height() <= 0) {
            return;
        }
        f60410v = containerRect;
    }

    /* renamed from: I */
    public final void m49230I(final boolean doEnterInAnimation) {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ViewKt.postDelayedLastTaskWithTag(layoutPenBoxBinding.getRoot(), new Runnable() { // from class: com.sunia.HTREnginev2.a1l
            @Override // java.lang.Runnable
            public final void run() {
                PenBoxPopup.m49208K(PenBoxPopup.this, doEnterInAnimation);
            }
        }, 300L, C10651R.id.tag_sidebar_animation_done_runnable);
    }

    /* renamed from: L */
    public final void m49231L() {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        MovingDraggable movingDraggable = null;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ShadowLayout shadowContent = layoutPenBoxBinding.shadowContent;
        Intrinsics.checkNotNullExpressionValue(shadowContent, "shadowContent");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(shadowContent);
        DockType dockType = NoteConfigManager.INSTANCE.getPenBoxLocation().get().getDockType();
        boolean z = this.currentDockType.getIconRotationByType() == 270.0f;
        Rect rect = f60410v;
        if (rect != null) {
            if (z) {
                locationOnScreen[1] = locationOnScreen[1] - (this.containerLocation[1] - rect.top);
            } else {
                locationOnScreen[0] = locationOnScreen[0] - (this.containerLocation[0] - rect.left);
            }
        }
        float f = z ? locationOnScreen[0] : locationOnScreen[0] - this.shadowOffset;
        float f2 = !z ? locationOnScreen[1] : locationOnScreen[1] - this.shadowOffset;
        MovingDraggable movingDraggable2 = this.movingDraggable;
        if (movingDraggable2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
        } else {
            movingDraggable = movingDraggable2;
        }
        movingDraggable.resetLocation(Float.valueOf(f), Float.valueOf(f2), dockType);
    }

    /* renamed from: M */
    public final void m49232M() {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        MovingDraggable movingDraggable = null;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ShadowLayout shadowContent = layoutPenBoxBinding.shadowContent;
        Intrinsics.checkNotNullExpressionValue(shadowContent, "shadowContent");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(shadowContent);
        PenBoxLocationModel penBoxLocationModel = NoteConfigManager.INSTANCE.getPenBoxLocation().get();
        Float valueOf = penBoxLocationModel.getLocationPoint() != null ? Float.valueOf(r3.y) : null;
        DockType dockType = penBoxLocationModel.getDockType();
        int[] iArr = this.rootLocation;
        int i = iArr != null ? this.containerLocation[0] - iArr[0] : 0;
        if (f60410v != null) {
            locationOnScreen[0] = (locationOnScreen[0] - this.containerLocation[0]) + i;
        }
        MovingDraggable movingDraggable2 = this.movingDraggable;
        if (movingDraggable2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
        } else {
            movingDraggable = movingDraggable2;
        }
        movingDraggable.resetLocation(Float.valueOf(locationOnScreen[0] - this.shadowOffset), valueOf, dockType);
    }

    /* renamed from: N */
    public final void m49233N() {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        MovingDraggable movingDraggable = null;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ShadowLayout shadowContent = layoutPenBoxBinding.shadowContent;
        Intrinsics.checkNotNullExpressionValue(shadowContent, "shadowContent");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(shadowContent);
        PenBoxLocationModel penBoxLocationModel = NoteConfigManager.INSTANCE.getPenBoxLocation().get();
        Float valueOf = penBoxLocationModel.getLocationPoint() != null ? Float.valueOf(r3.x) : null;
        DockType dockType = penBoxLocationModel.getDockType();
        Rect rect = f60410v;
        if (rect != null) {
            locationOnScreen[1] = locationOnScreen[1] - (this.containerLocation[1] - rect.top);
        }
        MovingDraggable movingDraggable2 = this.movingDraggable;
        if (movingDraggable2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
        } else {
            movingDraggable = movingDraggable2;
        }
        movingDraggable.resetLocation(valueOf, Float.valueOf(locationOnScreen[1] - this.shadowOffset), dockType);
    }

    /* renamed from: O */
    public final void m49234O() {
        LayoutPenBoxBinding layoutPenBoxBinding = null;
        if (this.currentDockType.getIconRotationByType() == 270.0f) {
            m49253r().setOrientation(1);
            LayoutPenBoxBinding layoutPenBoxBinding2 = this.binding;
            if (layoutPenBoxBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutPenBoxBinding2 = null;
            }
            layoutPenBoxBinding2.llyContent.setOrientation(1);
            LayoutPenBoxBinding layoutPenBoxBinding3 = this.binding;
            if (layoutPenBoxBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutPenBoxBinding = layoutPenBoxBinding3;
            }
            layoutPenBoxBinding.ivOperation.setImageDrawable(ResManager.INSTANCE.getDrawable(C10651R.drawable.ic_pen_box_arrow_up));
            return;
        }
        m49253r().setOrientation(0);
        LayoutPenBoxBinding layoutPenBoxBinding4 = this.binding;
        if (layoutPenBoxBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding4 = null;
        }
        layoutPenBoxBinding4.llyContent.setOrientation(0);
        LayoutPenBoxBinding layoutPenBoxBinding5 = this.binding;
        if (layoutPenBoxBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutPenBoxBinding = layoutPenBoxBinding5;
        }
        layoutPenBoxBinding.ivOperation.setImageDrawable(ResManager.INSTANCE.getDrawable(C10651R.drawable.ic_pen_box_arrow_left));
    }

    /* renamed from: P */
    public final void m49235P() {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        layoutPenBoxBinding.listview.setAdapter(this.penAdapter);
    }

    /* renamed from: Q */
    public final void m49236Q() {
        LayoutPenBoxBinding layoutPenBoxBinding;
        PenAdapter penAdapter = this.penAdapter;
        if (penAdapter.getSelectedItem() != null) {
            Iterator<PenArgs> it2 = penAdapter.getItems().iterator();
            int i = 0;
            while (true) {
                layoutPenBoxBinding = null;
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                }
                PenArgs next = it2.next();
                PenArgs selectedItem = penAdapter.getSelectedItem();
                if (Intrinsics.areEqual(selectedItem != null ? selectedItem.getId() : null, next.getId())) {
                    break;
                } else {
                    i++;
                }
            }
            Integer valueOf = Integer.valueOf(i);
            if (!(valueOf.intValue() > -1)) {
                valueOf = null;
            }
            int intValue = valueOf != null ? valueOf.intValue() : 0;
            LayoutPenBoxBinding layoutPenBoxBinding2 = this.binding;
            if (layoutPenBoxBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutPenBoxBinding = layoutPenBoxBinding2;
            }
            layoutPenBoxBinding.listview.restoreScrollOffset(intValue);
        }
    }

    /* renamed from: T */
    public final void m49237T(PenArgs item, View view) {
        BallpointPenPopup ballpointPenPopup = new BallpointPenPopup(m49251p(item));
        this.curPopupMenus.put(BallpointPenPopup.class, new WeakReference<>(ballpointPenPopup));
        ballpointPenPopup.show(view);
    }

    /* renamed from: U */
    public final void m49238U(PenArgs item, View view) {
        CalligraphyPenPopup calligraphyPenPopup = new CalligraphyPenPopup(m49251p(item));
        this.curPopupMenus.put(CalligraphyPenPopup.class, new WeakReference<>(calligraphyPenPopup));
        calligraphyPenPopup.show(view);
    }

    /* renamed from: V */
    public final void m49239V(PenArgs item, View view) {
        InkPenPopup inkPenPopup = new InkPenPopup(m49251p(item), m49252q().getInkPenBoxArgsChangeListener());
        this.curPopupMenus.put(InkPenPopup.class, new WeakReference<>(inkPenPopup));
        inkPenPopup.show(view);
    }

    /* renamed from: W */
    public final void m49240W(PenArgs item, View view) {
        MarkPenPopup markPenPopup = new MarkPenPopup(m49251p(item), m49252q().getMarkPenBoxArgsChangeListener());
        this.curPopupMenus.put(MarkPenPopup.class, new WeakReference<>(markPenPopup));
        markPenPopup.show(view);
    }

    /* renamed from: X */
    public final void m49241X(PenArgs item, View view) {
        PencilPopup pencilPopup = new PencilPopup(m49251p(item), m49252q().getPencilBoxArgsChangeListener());
        this.curPopupMenus.put(PencilPopup.class, new WeakReference<>(pencilPopup));
        pencilPopup.show(view);
    }

    /* renamed from: Y */
    public final void m49242Y(PenArgs item, View view) {
        SoftPaintPenPopup softPaintPenPopup = new SoftPaintPenPopup(m49251p(item));
        this.curPopupMenus.put(SoftPaintPenPopup.class, new WeakReference<>(softPaintPenPopup));
        softPaintPenPopup.show(view);
    }

    /* renamed from: Z */
    public final void m49243Z() {
        if (m49256v()) {
            dismissAllPopup();
            return;
        }
        MovingDraggable movingDraggable = this.movingDraggable;
        LayoutPenBoxBinding layoutPenBoxBinding = null;
        if (movingDraggable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable = null;
        }
        if (movingDraggable.getTouchMoving()) {
            return;
        }
        MovingDraggable movingDraggable2 = this.movingDraggable;
        if (movingDraggable2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable2 = null;
        }
        movingDraggable2.enableDrag(false);
        EditorBundle editorBundle = this.editorBundle;
        Activity activity = this.activity;
        if (activity == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ActivityChooserModel.f1429r);
            activity = null;
        }
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        LayoutPenBoxBinding layoutPenBoxBinding2 = this.binding;
        if (layoutPenBoxBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding2 = null;
        }
        View root = layoutPenBoxBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PenListPopup penListPopup = new PenListPopup(editorBundle, decorView, root, this.currentDockType);
        penListPopup.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.h1l
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                PenBoxPopup.m49212a0(PenBoxPopup.this);
            }
        });
        LayoutPenBoxBinding layoutPenBoxBinding3 = this.binding;
        if (layoutPenBoxBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutPenBoxBinding = layoutPenBoxBinding3;
        }
        View root2 = layoutPenBoxBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        penListPopup.showAlignByDockType(root2);
    }

    public final void applyPenArgs(@Nullable PenArgs item) {
        if (item == null) {
            return;
        }
        DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
        docCollectionBundle.postEvent(new BeforeChangePenArgsEvent(item.getId()));
        this.penAdapter.onItemClick(item);
        PencilBoxManager.Companion.updateSelectedId$default(PencilBoxManager.INSTANCE, item.getId(), null, 2, null);
        docCollectionBundle.postEvent(new ChangePenArgsEvent(item.m72358clone(), true));
    }

    /* renamed from: b0 */
    public final void m49244b0(BasePenItemHolder<?> holder, boolean isSelected) {
        holder.getVSelected().setVisibility(isSelected ? 0 : 8);
        if (!(this.currentDockType.getIconRotationByType() == 0.0f)) {
            ViewGroup.LayoutParams layoutParams = holder.getVSelected().getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            if (this.currentDockType == DockType.LEFT) {
                layoutParams2.endToEnd = -1;
                layoutParams2.startToStart = 0;
            } else {
                layoutParams2.endToEnd = 0;
                layoutParams2.startToStart = -1;
            }
        }
        if (holder.getIconView() instanceof IShapeViewOpt) {
            KeyEvent.Callback iconView = holder.getIconView();
            Intrinsics.checkNotNull(iconView, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.IShapeViewOpt");
            ((IShapeViewOpt) iconView).setDockType(getDockType());
        }
    }

    /* renamed from: c0 */
    public final void m49245c0(BasePenItemHolder<?> holder, boolean selected) {
        if (holder.getIconView() instanceof PhysicalShapeIconView) {
            ViewGroup.LayoutParams layoutParams = holder.getTvValue().getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            DockType dockType = this.currentDockType;
            if (dockType == DockType.LEFT) {
                layoutParams2.endToEnd = -1;
                layoutParams2.startToStart = 0;
            } else if (dockType == DockType.RIGHT) {
                layoutParams2.endToEnd = 0;
                layoutParams2.startToStart = -1;
            }
        }
    }

    public final void deleteSelectedPenArgs() {
        List listOf;
        final PenArgs selectedItem = this.penAdapter.getSelectedItem();
        if (selectedItem != null) {
            BaseQuickAdapterKt.removeIf(this.penAdapter, new Function1<PenArgs, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$deleteSelectedPenArgs$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull PenArgs it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(PenArgs.this.getId(), it2.getId()));
                }
            });
            PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(selectedItem);
            PencilBoxManager.Companion.deletePenArgs$default(companion, listOf, null, 2, null);
            if (Intrinsics.areEqual(selectedItem, this.penAdapter.getSelectedItem())) {
                this.penAdapter.clearSelectedItem();
            }
            DocCollectionBundle.INSTANCE.postEvent(new ShapeToolTypeRecoverEvent());
            if (this.penAdapter.getItemCount() > 0 || companion.getPenBoxCount() > 1) {
                return;
            }
            companion.clearPenBox();
            EditorBundleKt.postEvent(this.editorBundle, new DeleteAllPenBoxEvent());
        }
    }

    public final void dismissAllPopup() {
        Iterator<Map.Entry<Class<? extends BasePopupWindow>, WeakReference<BasePopupWindow>>> it2 = this.curPopupMenus.entrySet().iterator();
        while (it2.hasNext()) {
            BasePopupWindow basePopupWindow = it2.next().getValue().get();
            if (basePopupWindow != null) {
                basePopupWindow.dismiss();
            }
        }
        this.curPopupMenus.clear();
    }

    @NotNull
    public final DockType getDockType() {
        DockType dockType = this.penBoxLocation.getDockType();
        return dockType == null ? this.currentDockType : dockType;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final PenAdapter getPenAdapter() {
        return this.penAdapter;
    }

    @Nullable
    public final int[] getRootLocation() {
        return this.rootLocation;
    }

    public final int getState() {
        return this.state;
    }

    public final boolean hasSelectedPen() {
        return this.penAdapter.getSelectedItem() != null;
    }

    public final void hide() {
        dismissAllPopup();
        Runnable runnable = this.resetLocationRun;
        EasyWindow<?> easyWindow = null;
        if (runnable != null) {
            LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
            if (layoutPenBoxBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutPenBoxBinding = null;
            }
            layoutPenBoxBinding.getRoot().removeCallbacks(runnable);
        }
        EasyWindow<?> easyWindow2 = this.popupWindow;
        if (easyWindow2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("popupWindow");
        } else {
            easyWindow = easyWindow2;
        }
        easyWindow.cancel();
    }

    public final boolean isPenBoxAlignedWithSidebar(@NotNull SlideBarType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        ShortcutBarData shortcutBarData = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShortcutBarData();
        ShortcutType shortcutType = SlideBarTypeKt.toShortcutType(type);
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        View root = layoutPenBoxBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        boolean isLeftSideShortcut = shortcutBarData.isLeftSideShortcut(shortcutType, ViewExtKt.isLayoutDirectionRtl(root));
        return (getDockType() == DockType.LEFT && !isLeftSideShortcut) || (getDockType() == DockType.RIGHT && isLeftSideShortcut);
    }

    public final boolean isShowing() {
        EasyWindow<?> easyWindow = this.popupWindow;
        if (easyWindow == null) {
            Intrinsics.throwUninitializedPropertyAccessException("popupWindow");
            easyWindow = null;
        }
        return easyWindow.isShowing();
    }

    /* renamed from: j */
    public final void m49246j(RecyclerView rv) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        QuickDragAndSwipe quickDragAndSwipe = new QuickDragAndSwipe();
        quickDragAndSwipe.setItemViewSwipeEnabled(false);
        quickDragAndSwipe.setLongPressDragEnabled(true);
        quickDragAndSwipe.setDragMoveFlags(15);
        quickDragAndSwipe.setItemDragListener(new OnItemDragListener(this, booleanRef) { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1

            /* renamed from: b */
            public final /* synthetic */ Ref.BooleanRef f60432b;

            {
                this.f60432b = booleanRef;
            }

            @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
            public void onItemDragEnd(@NotNull RecyclerView.ViewHolder viewHolder, int pos) {
                MovingDraggable movingDraggable;
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                PenBoxPopup.this.getPenAdapter().onEndDragHolder(viewHolder);
                MovingDraggable movingDraggable2 = null;
                if (this.f60432b.element) {
                    PencilBoxManager.Companion.setPencilBox$default(PencilBoxManager.INSTANCE, PenBoxPopup.this.getPenAdapter().getItems(), null, 2, null);
                    PenBoxPopup.this.getPenAdapter().notifyItemRangeChanged(0, PenBoxPopup.this.getPenAdapter().getItemCount(), Boolean.valueOf(this.f60432b.element));
                }
                this.f60432b.element = false;
                movingDraggable = PenBoxPopup.this.movingDraggable;
                if (movingDraggable == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
                } else {
                    movingDraggable2 = movingDraggable;
                }
                movingDraggable2.enableDrag(true);
            }

            @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
            public void onItemDragMoving(@NotNull RecyclerView.ViewHolder source, int from, @NotNull RecyclerView.ViewHolder target, int to) {
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(target, "target");
            }

            @Override // com.chad.library.adapter4.dragswipe.listener.OnItemDragListener
            public void onItemDragStart(@Nullable RecyclerView.ViewHolder viewHolder, int pos) {
                MovingDraggable movingDraggable;
                PenBoxPopup.this.getPenAdapter().onStartDragHolder(viewHolder);
                PenBoxPopup.this.dismissAllPopup();
                movingDraggable = PenBoxPopup.this.movingDraggable;
                if (movingDraggable == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
                    movingDraggable = null;
                }
                movingDraggable.enableDrag(false);
            }
        });
        QuickDragAndSwipe dataCallback = quickDragAndSwipe.setDataCallback(new DragAndSwipeDataCallback() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$attachQuickDrag$4
            @Override // com.chad.library.adapter4.dragswipe.listener.DragAndSwipeDataCallback
            public void dataMove(int fromPosition, int toPosition) {
                PenBoxPopup.this.getPenAdapter().move(fromPosition, toPosition);
                booleanRef.element = true;
            }

            @Override // com.chad.library.adapter4.dragswipe.listener.DragAndSwipeDataCallback
            public void dataRemoveAt(int position) {
                PenBoxPopup.this.getPenAdapter().removeAt(position);
                booleanRef.element = true;
            }
        });
        this.dragCallback = dataCallback;
        if (dataCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dragCallback");
            dataCallback = null;
        }
        dataCallback.attachToRecyclerView(rv);
    }

    /* renamed from: k */
    public final void m49247k() {
        reloadPenList$default(this, false, 1, null);
        if (this.penAdapter.getSelectedItem() == null) {
            DocCollectionBundle.INSTANCE.postEvent(new ShapeToolTypeRecoverEvent());
        }
    }

    /* renamed from: l */
    public final void m49248l() {
        EasyWindow<?> easyWindow = this.popupWindow;
        if (easyWindow == null) {
            Intrinsics.throwUninitializedPropertyAccessException("popupWindow");
            easyWindow = null;
        }
        EasyWindowKt.requireSafeContentView(easyWindow, PenBoxPopup$doAlphaInAnimation$1.INSTANCE);
    }

    /* renamed from: m */
    public final void m49249m(PenArgs item, View itemView) {
        ShapeToolType shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, item.getType(), null, 2, null);
        if (shapeToolType$default == null) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[shapeToolType$default.ordinal()]) {
            case 1:
                m49239V(item, itemView);
                return;
            case 2:
                m49238U(item, itemView);
                return;
            case 3:
                m49242Y(item, itemView);
                return;
            case 4:
                m49237T(item, itemView);
                return;
            case 5:
                m49240W(item, itemView);
                return;
            case 6:
                m49241X(item, itemView);
                return;
            default:
                return;
        }
    }

    /* renamed from: n */
    public final void m49250n(boolean collapse, boolean moving) {
        if (!moving) {
            this.isCollapse = collapse;
        }
        m49234O();
        if (moving) {
            LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
            if (layoutPenBoxBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutPenBoxBinding = null;
            }
            ResizableRecyclerView listview = layoutPenBoxBinding.listview;
            Intrinsics.checkNotNullExpressionValue(listview, "listview");
            listview.setVisibility(8);
            LayoutPenBoxBinding layoutPenBoxBinding2 = this.binding;
            if (layoutPenBoxBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutPenBoxBinding2 = null;
            }
            TintImageView ivOperation = layoutPenBoxBinding2.ivOperation;
            Intrinsics.checkNotNullExpressionValue(ivOperation, "ivOperation");
            ivOperation.setVisibility(8);
        }
        if (collapse) {
            m49226B();
        } else {
            m49227D();
        }
        if (!collapse) {
            m49207J(this, false, 1, null);
        }
        this.penBoxLocation.setExpandState(!collapse);
        NoteConfigManager.INSTANCE.getPenBoxLocation().put(this.penBoxLocation);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePenBoxEvent(@NotNull ChangePenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        reloadPenList$default(this, false, 1, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateOtherPopupEvent(@NotNull CreateOtherPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.curPopupMenus.put(event.getPopupView().getClass(), new WeakReference(event.getPopupView()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteAllPenBoxEvent(@NotNull DeleteAllPenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EasyWindow<?> easyWindow = this.popupWindow;
        if (easyWindow == null) {
            Intrinsics.throwUninitializedPropertyAccessException("popupWindow");
            easyWindow = null;
        }
        easyWindow.cancel();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeletePenBoxEvent(@NotNull DeletePenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Iterator<PenArgs> it2 = event.getDeletePenList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (Intrinsics.areEqual(it2.next(), this.penAdapter.getSelectedItem())) {
                this.penAdapter.clearSelectedItem();
                break;
            }
        }
        m49247k();
    }

    public final void onPenItemClick(@Nullable PenArgs item, @NotNull View itemView) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        if (item == null) {
            return;
        }
        if (m49256v()) {
            dismissAllPopup();
            return;
        }
        PenArgs selectedItem = this.penAdapter.getSelectedItem();
        if (Intrinsics.areEqual(selectedItem != null ? selectedItem.getId() : null, item.getId())) {
            m49249m(item, itemView);
        } else {
            applyPenArgs(item);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitNoteDocumentEvent(@NotNull QuitNoteDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        layoutPenBoxBinding.getRoot().removeCallbacks(this.resetLocationRun);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShapeToolTypeChangedEvent(@NotNull ShapeToolTypeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.penAdapter.getSelectedItem() != null) {
            this.penAdapter.clearSelectedItem();
            PencilBoxManager.Companion.updateSelectedId$default(PencilBoxManager.INSTANCE, null, null, 2, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ThemeUtils.refreshView(layoutPenBoxBinding.getRoot());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ThemeUtils.refreshView(layoutPenBoxBinding.getRoot());
    }

    /* renamed from: p */
    public final NormalPenPopup.NormalPenPopupContext m49251p(PenArgs penArgs) {
        Activity activity;
        ShapeToolType shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, penArgs.getType(), null, 2, null);
        Intrinsics.checkNotNull(shapeToolType$default);
        IntList historyColorList = penArgs.getColorList().isEmpty() ? NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getHistoryColorList(shapeToolType$default.getShapeType(), penArgs.getColor()) : penArgs.getColorList();
        penArgs.setColorList(historyColorList);
        Iterator<Integer> it2 = historyColorList.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (it2.next().intValue() == penArgs.getColor()) {
                break;
            }
            i++;
        }
        int i2 = i;
        Activity activity2 = this.activity;
        if (activity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ActivityChooserModel.f1429r);
            activity = null;
        } else {
            activity = activity2;
        }
        NormalPenPopup.NormalPenPopupContext normalPenPopupContext = new NormalPenPopup.NormalPenPopupContext(activity, this.editorBundle, shapeToolType$default, this.currentDockType, penArgs.m72358clone());
        normalPenPopupContext.setAddOperation(false);
        normalPenPopupContext.setListener(m49252q().getPenArgsChangeListener());
        normalPenPopupContext.setColorList(historyColorList);
        normalPenPopupContext.setColorIndex(i2);
        return normalPenPopupContext;
    }

    public final void post(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        layoutPenBoxBinding.getRoot().post(runnable);
    }

    /* renamed from: q */
    public final PenBoxArgsHandler m49252q() {
        return (PenBoxArgsHandler) this.handler.getValue();
    }

    /* renamed from: r */
    public final LinearLayoutManager m49253r() {
        return (LinearLayoutManager) this.linearLayoutManager.getValue();
    }

    public final void reloadPenList(final boolean addPen) {
        LayoutPenBoxBinding layoutPenBoxBinding = null;
        if (addPen) {
            m49221o(this, false, false, 2, null);
        }
        LayoutPenBoxBinding layoutPenBoxBinding2 = this.binding;
        if (layoutPenBoxBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutPenBoxBinding = layoutPenBoxBinding2;
        }
        layoutPenBoxBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.e1l
            @Override // java.lang.Runnable
            public final void run() {
                PenBoxPopup.m49206H(PenBoxPopup.this, addPen);
            }
        });
    }

    public final void resetPosition(@NotNull int[] location, @NotNull Rect containerRect, @Nullable int[] rootLocation) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(containerRect, "containerRect");
        this.containerLocation = location;
        this.rootLocation = rootLocation;
        m49229G(containerRect);
        PenBoxLocationModel penBoxLocationModel = NoteConfigManager.INSTANCE.getPenBoxLocation().get();
        if (penBoxLocationModel.getLocationPoint() == null) {
            return;
        }
        if (f60410v == null) {
            return;
        }
        MovingDraggable movingDraggable = this.movingDraggable;
        if (movingDraggable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable = null;
        }
        Rect rect = f60410v;
        Intrinsics.checkNotNull(rect);
        movingDraggable.setEditorContainerRect(rect, rootLocation);
        MovingDraggable movingDraggable2 = this.movingDraggable;
        if (movingDraggable2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable2 = null;
        }
        movingDraggable2.resetLocation(Float.valueOf(r8.x), Float.valueOf(r8.y), penBoxLocationModel.getDockType());
        m49207J(this, false, 1, null);
    }

    /* renamed from: s */
    public final List<PenArgs> m49254s(String selectId) {
        return PencilBoxManager.Companion.getPenList$default(PencilBoxManager.INSTANCE, null, null, selectId, 3, null);
    }

    public final void setRootLocation(@Nullable int[] iArr) {
        this.rootLocation = iArr;
    }

    public final void setState(int i) {
        this.state = i;
    }

    public final void setVisible(final boolean visible) {
        long j = visible ? 100L : 0L;
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        layoutPenBoxBinding.getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.f1l
            @Override // java.lang.Runnable
            public final void run() {
                PenBoxPopup.m49209R(PenBoxPopup.this, visible);
            }
        }, j);
    }

    public final void show(@NotNull Activity activity, @Nullable PenArgs penArgs) {
        View safeContentView;
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.isVisible = true;
        this.activity = activity;
        m49229G(this.containerRect);
        EasyWindow.cancelByTag(f60409u);
        m49258x(activity);
        MovingDraggable movingDraggable = new MovingDraggable(activity, f60410v, this.rootLocation, new PenBoxPopup$show$1(this), new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$show$2
            {
                super(1);
            }

            public final void invoke(boolean z) {
                boolean z2;
                if (z) {
                    EditorBundleKt.postEvent(PenBoxPopup.this.getEditorBundle(), new ResetPenBoxPositionEvent());
                    PenBoxPopup.this.dismissAllPopup();
                    PenBoxPopup.this.m49250n(true, true);
                } else {
                    PenBoxPopup penBoxPopup = PenBoxPopup.this;
                    z2 = penBoxPopup.isCollapse;
                    PenBoxPopup.m49221o(penBoxPopup, z2, false, 2, null);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }
        });
        movingDraggable.setOnMoveInterceptListener(new C12448a());
        this.movingDraggable = movingDraggable;
        EasyWindow<?> with = EasyWindow.with(activity);
        Intrinsics.checkNotNull(with);
        EasyWindowKt.addFullScreenFlag(with);
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        with.setContentView(layoutPenBoxBinding.getRoot());
        with.setOnWindowLifecycle(new EasyWindow.OnWindowLifecycle() { // from class: com.onyx.galaxy.note.editor.view.popup.PenBoxPopup$show$4$1
            @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
            public void onWindowCancel(@Nullable EasyWindow<?> easyWindow) {
                GlobalBundle.INSTANCE.unregister(PenBoxPopup.this);
                EditorBundleKt.unregister(PenBoxPopup.this.getEditorBundle(), PenBoxPopup.this);
                ThemeBundle.INSTANCE.unRegister(PenBoxPopup.this);
            }

            @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
            public void onWindowShow(@Nullable EasyWindow<?> easyWindow) {
                GlobalBundle.INSTANCE.register(PenBoxPopup.this);
                EditorBundleKt.register(PenBoxPopup.this.getEditorBundle(), PenBoxPopup.this);
                ThemeBundle.INSTANCE.register(PenBoxPopup.this);
            }
        });
        MovingDraggable movingDraggable2 = this.movingDraggable;
        if (movingDraggable2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
            movingDraggable2 = null;
        }
        with.setDraggable(movingDraggable2);
        with.setGravity(8388659);
        with.setXOffset(0);
        with.setYOffset(ResManager.INSTANCE.getWindowDefaultHeight() / 3);
        with.setDuration(86400000);
        with.setAnimStyle(C10651R.style.popupWindowAnimationLong);
        with.setOutsideTouchable(true);
        with.setTag(f60409u);
        final Point locationPoint = this.penBoxLocation.getLocationPoint();
        if (locationPoint != null && (safeContentView = EasyWindowKt.getSafeContentView(with)) != null) {
            safeContentView.post(new Runnable() { // from class: com.sunia.HTREnginev2.g1l
                @Override // java.lang.Runnable
                public final void run() {
                    PenBoxPopup.m49210S(PenBoxPopup.this, locationPoint);
                }
            });
        }
        Intrinsics.checkNotNullExpressionValue(with, "apply(...)");
        this.popupWindow = with;
        with.show();
        applyPenArgs(penArgs);
        m49221o(this, !this.penBoxLocation.getExpandState(), false, 2, null);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: u */
    public final void m49255u() {
        MovingDraggable movingDraggable = null;
        m49221o(this, true, false, 2, null);
        MovingDraggable movingDraggable2 = this.movingDraggable;
        if (movingDraggable2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movingDraggable");
        } else {
            movingDraggable = movingDraggable2;
        }
        movingDraggable.enableDrag(true);
    }

    /* renamed from: v */
    public final boolean m49256v() {
        Collection<WeakReference<BasePopupWindow>> values = this.curPopupMenus.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            BasePopupWindow basePopupWindow = (BasePopupWindow) ((WeakReference) it2.next()).get();
            if (basePopupWindow != null) {
                arrayList.add(basePopupWindow);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            if (((BasePopupWindow) it3.next()).isShowing()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: w */
    public final void m49257w() {
        LayoutPenBoxBinding layoutPenBoxBinding = this.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        layoutPenBoxBinding.listview.setLayoutManager(m49253r());
        LayoutPenBoxBinding layoutPenBoxBinding2 = this.binding;
        if (layoutPenBoxBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding2 = null;
        }
        layoutPenBoxBinding2.listview.setAdapter(this.penAdapter);
        LayoutPenBoxBinding layoutPenBoxBinding3 = this.binding;
        if (layoutPenBoxBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding3 = null;
        }
        ResizableRecyclerView listview = layoutPenBoxBinding3.listview;
        Intrinsics.checkNotNullExpressionValue(listview, "listview");
        m49246j(listview);
        reloadPenList$default(this, false, 1, null);
    }

    /* renamed from: x */
    public final void m49258x(Context context) {
        LayoutPenBoxBinding inflate = LayoutPenBoxBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        LayoutPenBoxBinding layoutPenBoxBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        TintImageView ivOperation = inflate.ivOperation;
        Intrinsics.checkNotNullExpressionValue(ivOperation, "ivOperation");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivOperation, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenBoxPopup.m49223y(PenBoxPopup.this, view);
            }
        }, 1, null);
        LayoutPenBoxBinding layoutPenBoxBinding2 = this.binding;
        if (layoutPenBoxBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding2 = null;
        }
        TintFrameLayout icon = layoutPenBoxBinding2.icon;
        Intrinsics.checkNotNullExpressionValue(icon, "icon");
        com.onyx.android.sdk.extension.ViewKt.click$default(icon, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d1l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PenBoxPopup.m49224z(PenBoxPopup.this, view);
            }
        }, 1, null);
        if (this.penBoxLocation.getLocationPoint() != null) {
            LayoutPenBoxBinding layoutPenBoxBinding3 = this.binding;
            if (layoutPenBoxBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutPenBoxBinding = layoutPenBoxBinding3;
            }
            ViewKt.setViewVisibleOrInvisible(layoutPenBoxBinding.flyContent, false);
        }
        m49257w();
        m49235P();
    }
}
