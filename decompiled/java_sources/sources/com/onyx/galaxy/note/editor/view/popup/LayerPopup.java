package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.event.StatisticsStoolbarLayerAdd;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.event.LayerCommandAppliedEvent;
import com.onyx.android.sdk.note.common.event.NoteShapeChangedEvent;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction;
import com.onyx.android.sdk.universal.editor.action.layer.LoadNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.action.layer.SetNotePageCurLayerAction;
import com.onyx.android.sdk.universal.editor.action.layer.ToggleNotePageLayerLockAction;
import com.onyx.android.sdk.universal.editor.action.layer.ToggleNotePageLayerVisibilityAction;
import com.onyx.android.sdk.universal.editor.events.app.UpdateVirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.ClearLayerDialogCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ClearLayerDialogDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.ClearLayerDialogStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteLayerDialogCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteLayerDialogDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteLayerDialogStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.MergeLayerDialogCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.MergeLayerDialogDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.MergeLayerDialogStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerInfoChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.ReloadNoteLayerInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.databinding.PopupLayerBinding;
import com.onyx.galaxy.note.editor.action.layer.CleanNotePageLayerAction;
import com.onyx.galaxy.note.editor.action.layer.MergeNotePageLayerAction;
import com.onyx.galaxy.note.editor.action.layer.RemoveNotePageLayerAction;
import com.onyx.galaxy.note.editor.action.layer.RenameLayerNameAction;
import com.onyx.galaxy.note.editor.view.adapter.LayerAdapter;
import com.onyx.galaxy.note.editor.view.popup.LayerPopup;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010f\u001a\u000203\u0012\u0006\u0010k\u001a\u00020\u0011¢\u0006\u0004\bz\u0010{J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u001e\u0010\u001b\u001a\u00020\u00022\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u00182\u0006\u0010\u001a\u001a\u00020\nH\u0002J\u0016\u0010\u001e\u001a\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0016\u0010\u001f\u001a\u00020\u00022\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001cH\u0002J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\nH\u0002J\u0014\u0010'\u001a\u0006\u0012\u0002\b\u00030&2\u0006\u0010$\u001a\u00020\nH\u0002J\b\u0010(\u001a\u00020\u0002H\u0002J/\u0010+\u001a\u00020\u00022\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010)\u001a\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0002¢\u0006\u0004\b+\u0010,J\u0016\u0010-\u001a\u00020\u000e2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0018\u00102\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u000200H\u0002J\u0010\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u000203H\u0002J\u0018\u00107\u001a\u0004\u0018\u00010\u001c2\f\u00106\u001a\b\u0012\u0004\u0012\u00020\n0\u0018H\u0002J\b\u00108\u001a\u00020\u0002H\u0002J\u001a\u0010;\u001a\u00020\u00022\u0006\u00101\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010\u001cH\u0002J\u001e\u0010=\u001a\u00020\u00022\u0006\u00101\u001a\u0002092\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\nH\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\nH\u0002J\b\u0010A\u001a\u00020\u0002H\u0016J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BH\u0007J\u0010\u0010F\u001a\u00020\u00022\u0006\u00101\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u00101\u001a\u00020GH\u0007J\u0010\u0010I\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0007J\u0010\u0010K\u001a\u00020\u00022\u0006\u00101\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00022\u0006\u00101\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00022\u0006\u00101\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00022\u0006\u00101\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00022\u0006\u00101\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00022\u0006\u00101\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00022\u0006\u00101\u001a\u00020VH\u0007J\u0010\u0010Y\u001a\u00020\u00022\u0006\u00101\u001a\u00020XH\u0007J\u0010\u0010[\u001a\u00020\u00022\u0006\u00101\u001a\u00020ZH\u0007J\u0010\u0010]\u001a\u00020\u00022\u0006\u00101\u001a\u00020\\H\u0007J\u0010\u0010_\u001a\u00020\u00022\u0006\u00101\u001a\u00020^H\u0007R\"\u0010f\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u0017\u0010k\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\bg\u0010h\u001a\u0004\bi\u0010jR\u0014\u0010o\u001a\u00020l8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bm\u0010nR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bp\u0010qR\u001a\u0010u\u001a\b\u0012\u0004\u0012\u00020B0r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010x¨\u0006|"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;", "", "V", "b0", "W", "Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;", "adapter", "K", "K0", "", "pos", "t0", "L0", "", "U", "P", "Landroid/view/View;", "view", "D0", "Landroid/view/MenuItem;", "menuItem", "Q", "r0", "", "srcLayerIds", "targetLayerId", "p0", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", FirebaseAnalytics.Param.ITEMS, BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "R", "item", "v0", "E0", "H0", "layerId", "B0", "Lio/reactivex/rxjava3/core/Observable;", "C0", "M", "initLoad", "scrollToCurrentLayer", "l0", "(Ljava/lang/Integer;ZZ)V", "N", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", OcrValues.LANG_ITALIAN, "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", NotificationCompat.CATEGORY_EVENT, "k0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", Keywords.FUNC_CURRENT_STRING, "s0", "layerIds", "T", "u0", "", "layerInfo", "A0", "layers", "y0", Constants.ATTRNAME_AMOUNT, "z0", "x0", "dismiss", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "bean", "onChangedShapeBean", "Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;", "onNoteShapeChangedEvent", "Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;", "onLayerCommandAppliedEvent", "onVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogStartEvent;", "onClearLayerDialogStartEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogCancelEvent;", "onClearLayerDialogCancelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ClearLayerDialogDoneEvent;", "onClearLayerDialogDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogStartEvent;", "onMergeLayerDialogStartEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogCancelEvent;", "onMergeLayerDialogCancelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MergeLayerDialogDoneEvent;", "onMergeLayerDialogDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogStartEvent;", "onDeleteLayerDialogStartEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogCancelEvent;", "onDeleteLayerDialogCancelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteLayerDialogDoneEvent;", "onDeleteLayerDialogDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;", "onNoteLayerInfoChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ReloadNoteLayerInfoEvent;", "onReloadNoteLayerInfoEvent", "s", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "t", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "anchorView", "Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;", "u", "Lcom/onyx/galaxy/note/databinding/PopupLayerBinding;", "binding", "v", "Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "w", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "shapeChangedFilter", "Landroidx/recyclerview/widget/ItemTouchHelper;", "x", "Landroidx/recyclerview/widget/ItemTouchHelper;", "itemTouchHelper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLayerPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LayerPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,597:1\n1549#2:598\n1620#2,3:599\n1549#2:602\n1620#2,3:603\n350#2,7:606\n288#2,2:613\n1549#2:615\n1620#2,3:616\n1549#2:619\n1620#2,3:620\n*S KotlinDebug\n*F\n+ 1 LayerPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LayerPopup\n*L\n334#1:598\n334#1:599,3\n347#1:602\n347#1:603,3\n541#1:606,7\n562#1:613,2\n582#1:615\n582#1:616,3\n148#1:619\n148#1:620,3\n*E\n"})
/* loaded from: classes9.dex */
public final class LayerPopup extends BaseShortcutPopup {

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final PopupLayerBinding binding;

    /* renamed from: v, reason: from kotlin metadata */
    public LayerAdapter adapter;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<ChangedShapeBean> shapeChangedFilter;

    /* renamed from: x, reason: from kotlin metadata */
    @Nullable
    public ItemTouchHelper itemTouchHelper;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12395a<T> implements Consumer {
        public C12395a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LayerInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerPopup layerPopup = LayerPopup.this;
            LayerAdapter layerAdapter = layerPopup.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerPopup.m48979x0(layerAdapter.getItemCount() + 1);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12396b<T> implements Consumer {
        public C12396b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LayerInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerPopup.m48934m0(LayerPopup.this, Integer.valueOf(it2.getId()), false, false, 6, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12397c<T> implements Consumer {
        public C12397c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerPopup.this.m48977u0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12398d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<LayerInfo> f60277f;

        public C12398d(List<LayerInfo> list) {
            this.f60277f = list;
        }

        /* renamed from: a */
        public final void m48985a(boolean z) {
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.notifyItemsChanged(this.f60277f);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48985a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$e */
    /* loaded from: classes9.dex */
    public static final class C12399e<T> implements Consumer {
        public C12399e() {
        }

        /* renamed from: a */
        public final void m48986a(boolean z) {
            LayerPopup.this.m48963P();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48986a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$f */
    /* loaded from: classes9.dex */
    public static final class C12400f<T> implements Consumer {
        public C12400f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerPopup.this.m48977u0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$g */
    /* loaded from: classes9.dex */
    public static final class C12401g<T> implements Consumer {
        public C12401g() {
        }

        /* renamed from: a */
        public final void m48988a(boolean z) {
            LayerPopup.this.m48963P();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48988a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$h */
    /* loaded from: classes9.dex */
    public static final class C12402h<T> implements Consumer {
        public C12402h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangedShapeBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (it2.getChangedLayerList().size() > 1) {
                LayerPopup.m48934m0(LayerPopup.this, null, false, false, 7, null);
                return;
            }
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.updateCurrentLayer();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$i */
    /* loaded from: classes9.dex */
    public static final class C12403i<T> implements Consumer {
        public C12403i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            LayerAdapter layerAdapter2 = null;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.setPageInfo(it2);
            LayerAdapter layerAdapter3 = LayerPopup.this.adapter;
            if (layerAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                layerAdapter2 = layerAdapter3;
            }
            layerAdapter2.setViewport(EditorBundleKt.virtualDocViewInfo(LayerPopup.this.getEditorBundle()).getViewport().copy());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$j */
    /* loaded from: classes9.dex */
    public static final class C12404j<T> implements Consumer {
        public C12404j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerPopup.this.m48977u0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$k */
    /* loaded from: classes9.dex */
    public static final class C12405k<T> implements Consumer {
        public C12405k() {
        }

        /* renamed from: a */
        public final void m48992a(boolean z) {
            LayerPopup.this.m48963P();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m48992a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$l */
    /* loaded from: classes9.dex */
    public static final class C12406l<T> implements Predicate {

        /* renamed from: f */
        public final /* synthetic */ VirtualDocViewInfoEvent f60286f;

        public C12406l(VirtualDocViewInfoEvent virtualDocViewInfoEvent) {
            this.f60286f = virtualDocViewInfoEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LayerPopup.this.m48971k0(it2, this.f60286f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$m */
    /* loaded from: classes9.dex */
    public static final class C12407m<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ VirtualDocViewInfoEvent f60288f;

        public C12407m(VirtualDocViewInfoEvent virtualDocViewInfoEvent) {
            this.f60288f = virtualDocViewInfoEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.setPageInfo(it2);
            LayerAdapter layerAdapter2 = LayerPopup.this.adapter;
            if (layerAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter2 = null;
            }
            layerAdapter2.setViewport(this.f60288f.getVirtualDocViewInfo().getViewport().copy());
            LayerAdapter layerAdapter3 = LayerPopup.this.adapter;
            if (layerAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter3 = null;
            }
            BoxInfo currentVisibleBoxInfo = this.f60288f.getVirtualDocViewInfo().currentVisibleBoxInfo();
            layerAdapter3.setCurrentBoxInfo(currentVisibleBoxInfo != null ? currentVisibleBoxInfo.copy() : null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$n */
    /* loaded from: classes9.dex */
    public static final class C12408n<T> implements Consumer {
        public C12408n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerPopup.this.m48977u0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$o */
    /* loaded from: classes9.dex */
    public static final class C12409o<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f60291f;

        public C12409o(int i) {
            this.f60291f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.notifyItemChanged(this.f60291f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$p */
    /* loaded from: classes9.dex */
    public static final class C12410p<T> implements Consumer {
        public C12410p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerPopup.this.m48963P();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$q */
    /* loaded from: classes9.dex */
    public static final class C12411q<T> implements Consumer {

        /* renamed from: e */
        public static final C12411q<T> f60293e = new C12411q<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.rename_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$r */
    /* loaded from: classes9.dex */
    public static final class C12412r<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f60295f;

        public C12412r(int i) {
            this.f60295f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SetNotePageCurLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.selectLayer(this.f60295f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$s */
    /* loaded from: classes9.dex */
    public static final class C12413s<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f60297f;

        public C12413s(int i) {
            this.f60297f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ToggleNotePageLayerLockAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.notifyItemChanged(this.f60297f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.LayerPopup$t */
    /* loaded from: classes9.dex */
    public static final class C12414t<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ int f60299f;

        public C12414t(int i) {
            this.f60299f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ToggleNotePageLayerVisibilityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerAdapter layerAdapter = LayerPopup.this.adapter;
            if (layerAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter = null;
            }
            layerAdapter.notifyItemChanged(this.f60299f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayerPopup(@NotNull EditorBundle editorBundle, @NotNull View anchorView) {
        super(anchorView, true);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        this.editorBundle = editorBundle;
        this.anchorView = anchorView;
        PopupLayerBinding inflate = PopupLayerBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.shapeChangedFilter = new RxFilter<>();
        m48968V();
    }

    /* renamed from: F0 */
    public static final void m48912F0(LayerPopup this$0, ToggleNotePageLayerLockAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m48977u0();
    }

    /* renamed from: G0 */
    public static final void m48914G0(LayerPopup this$0, LayerInfo item, ToggleNotePageLayerLockAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_LOCK, item);
    }

    /* renamed from: I0 */
    public static final void m48917I0(LayerPopup this$0, ToggleNotePageLayerVisibilityAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m48977u0();
    }

    /* renamed from: J0 */
    public static final void m48919J0(LayerPopup this$0, LayerInfo item, ToggleNotePageLayerVisibilityAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_HIDE, item);
    }

    /* renamed from: L */
    public static final boolean m48920L(LayerPopup this$0, ItemTouchHelper itemTouchHelper, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemTouchHelper, "$itemTouchHelper");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this$0.binding.recyclerView.findViewHolderForAdapterPosition(i);
        if (findViewHolderForAdapterPosition == null) {
            return true;
        }
        itemTouchHelper.startDrag(findViewHolderForAdapterPosition);
        return true;
    }

    /* renamed from: S */
    public static final void m48921S(LayerPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m48934m0(this$0, null, false, false, 3, null);
    }

    /* renamed from: X */
    public static final void m48922X(LayerPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m48956H0(i);
    }

    /* renamed from: Y */
    public static final void m48923Y(LayerPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m48955E0(i);
    }

    /* renamed from: Z */
    public static final void m48924Z(LayerPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        LayerAdapter layerAdapter = this$0.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        this$0.m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_SETTING, layerAdapter.getItem(i));
        this$0.m48954D0(view, i);
    }

    /* renamed from: a0 */
    public static final void m48925a0(LayerPopup this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m48976t0(i);
    }

    /* renamed from: c0 */
    public static final void m48926c0(LayerPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StatisticsExtKt.reportNoteEvent$default(this$0.editorBundle, OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_CLOSE, null, 2, null);
        this$0.dismiss();
    }

    /* renamed from: d0 */
    public static final void m48927d0(LayerPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48960M();
    }

    /* renamed from: e0 */
    public static final void m48928e0(LayerPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48958K0();
        StatisticsExtKt.reportNoteEvent$default(this$0.editorBundle, OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_SELECT, null, 2, null);
        StatisticsExtKt.reportNoteEvent$default(this$0.editorBundle, OnyxStatisticConstant.ID_NOTE_LAYER_VIEW_SELECT_POPUP, null, 2, null);
    }

    /* renamed from: f0 */
    public static final void m48929f0(LayerPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48958K0();
        StatisticsExtKt.reportNoteEvent$default(this$0.editorBundle, OnyxStatisticConstant.ID_NOTE_LAYER_SELECT_DONE, null, 2, null);
    }

    /* renamed from: g0 */
    public static final void m48930g0(LayerPopup this$0, View view) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayerAdapter layerAdapter = this$0.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) layerAdapter.getSelectedItems());
        LayerInfo layerInfo = (LayerInfo) firstOrNull;
        if (layerInfo == null) {
            return;
        }
        this$0.m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_SELECT_RENAME, layerInfo);
        LayerAdapter layerAdapter3 = this$0.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter3;
        }
        this$0.m48978v0(layerAdapter2.itemIndexOfFirst(layerInfo), layerInfo);
    }

    /* renamed from: h0 */
    public static final void m48931h0(LayerPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayerAdapter layerAdapter = this$0.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        this$0.m48980y0(OnyxStatisticConstant.ID_NOTE_LAYER_SELECT_DELETE, layerAdapter.getSelectedItems());
        LayerAdapter layerAdapter3 = this$0.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter3;
        }
        this$0.m48965R(layerAdapter2.getSelectedItems());
    }

    /* renamed from: i0 */
    public static final void m48932i0(LayerPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayerAdapter layerAdapter = this$0.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        this$0.m48980y0(OnyxStatisticConstant.ID_NOTE_LAYER_SELECT_CLEAR, layerAdapter.getSelectedItems());
        LayerAdapter layerAdapter3 = this$0.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter3;
        }
        this$0.m48962O(layerAdapter2.getSelectedItems());
    }

    /* renamed from: j0 */
    public static final void m48933j0(LayerPopup this$0, View view) {
        List mutableList;
        Object firstOrNull;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LayerAdapter layerAdapter = this$0.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        this$0.m48980y0(OnyxStatisticConstant.ID_NOTE_LAYER_SELECT_MERGE, layerAdapter.getSelectedItems());
        LayerAdapter layerAdapter3 = this$0.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter3;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) layerAdapter2.getSelectedItems());
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) mutableList);
        LayerInfo layerInfo = (LayerInfo) firstOrNull;
        if (layerInfo == null) {
            return;
        }
        mutableList.remove(layerInfo);
        List list = mutableList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((LayerInfo) it2.next()).getId()));
        }
        this$0.m48973p0(arrayList, layerInfo.getId());
    }

    /* renamed from: m0 */
    public static /* synthetic */ void m48934m0(LayerPopup layerPopup, Integer num, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        layerPopup.m48972l0(num, z, z2);
    }

    /* renamed from: n0 */
    public static final void m48935n0(LayerPopup this$0, PageInfo it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        LayerAdapter layerAdapter = this$0.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        this$0.m48981z0(layerAdapter.getItemCount());
    }

    /* renamed from: o0 */
    public static final void m48937o0(LayerPopup this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        LayerAdapter layerAdapter = this$0.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        layerAdapter.scrollToCurrentLayer();
    }

    /* renamed from: q0 */
    public static final void m48940q0(LayerPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m48934m0(this$0, null, false, false, 3, null);
    }

    /* renamed from: w0 */
    public static final void m48947w0() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.rename_success, false, 2, (Object) null);
    }

    /* renamed from: A0 */
    public final void m48951A0(String event, LayerInfo layerInfo) {
        int indexOf;
        Map mutableMapOf;
        LayerAdapter layerAdapter = this.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends LayerInfo>) ((List<? extends Object>) layerAdapter.getItems()), layerInfo);
        if (indexOf < 0) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        Pair[] pairArr = new Pair[1];
        LayerAdapter layerAdapter3 = this.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter3;
        }
        pairArr[0] = TuplesKt.m61535to(OnyxStatisticConstant.KEY_LAYER_SORT, String.valueOf(layerAdapter2.getItems().size() - indexOf));
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(pairArr);
        StatisticsExtKt.reportNoteEvent(editorBundle, event, mutableMapOf);
    }

    /* renamed from: B0 */
    public final void m48952B0(int layerId) {
        m48953C0(layerId).subscribe();
    }

    /* renamed from: C0 */
    public final Observable<?> m48953C0(int layerId) {
        m48977u0();
        Observable<SetNotePageCurLayerAction> doOnNext = new SetNotePageCurLayerAction(this.editorBundle, layerId).build().doOnNext(new C12412r(layerId));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: D0 */
    public final void m48954D0(View view, final int pos) {
        new ContextMenuPopup(getContext(), C10651R.menu.layer_more_action_menu, new Function1<MenuItem, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$showMoreActionPopup$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MenuItem it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                LayerPopup.this.m48974r0(pos, it2);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MenuItem menuItem) {
                invoke2(menuItem);
                return Unit.INSTANCE;
            }
        }, new Function1<MenuItem, MenuItem>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$showMoreActionPopup$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final MenuItem invoke(@NotNull MenuItem it2) {
                MenuItem m48964Q;
                Intrinsics.checkNotNullParameter(it2, "it");
                m48964Q = LayerPopup.this.m48964Q(pos, it2);
                return m48964Q;
            }
        }).showAsDropDownCenter(view);
        LayerAdapter layerAdapter = this.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_VIEW_SETTING, layerAdapter.getItem(pos));
    }

    /* renamed from: E0 */
    public final void m48955E0(int pos) {
        LayerAdapter layerAdapter = this.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        final LayerInfo item = layerAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        final boolean lock = item.getLock();
        Observable<ToggleNotePageLayerLockAction> doOnNext = new ToggleNotePageLayerLockAction(this.editorBundle, item).build().doOnNext(new C12413s(pos));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(doOnNext, new Function1<ToggleNotePageLayerLockAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$toggleLayerLock$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ToggleNotePageLayerLockAction it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (!lock) {
                    LayerAdapter layerAdapter2 = this.adapter;
                    if (layerAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        layerAdapter2 = null;
                    }
                    if (layerAdapter2.getPageInfo().isCurrentLayerId(item.getId())) {
                        z = true;
                        return Boolean.valueOf(z);
                    }
                }
                z = false;
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.iwi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LayerPopup.m48912F0(LayerPopup.this, (ToggleNotePageLayerLockAction) obj);
            }
        }), new Function1<ToggleNotePageLayerLockAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$toggleLayerLock$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ToggleNotePageLayerLockAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!lock);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.jwi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LayerPopup.m48914G0(LayerPopup.this, item, (ToggleNotePageLayerLockAction) obj);
            }
        }).subscribe();
    }

    /* renamed from: H0 */
    public final void m48956H0(int pos) {
        LayerAdapter layerAdapter = this.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        final LayerInfo item = layerAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        final boolean show = item.getShow();
        Observable<ToggleNotePageLayerVisibilityAction> doOnNext = new ToggleNotePageLayerVisibilityAction(this.editorBundle, item).build().doOnNext(new C12414t(pos));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(doOnNext, new Function1<ToggleNotePageLayerVisibilityAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$toggleLayerShow$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ToggleNotePageLayerVisibilityAction it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (show) {
                    LayerAdapter layerAdapter2 = this.adapter;
                    if (layerAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        layerAdapter2 = null;
                    }
                    if (layerAdapter2.getPageInfo().isCurrentLayerId(item.getId())) {
                        z = true;
                        return Boolean.valueOf(z);
                    }
                }
                z = false;
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.dwi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LayerPopup.m48917I0(LayerPopup.this, (ToggleNotePageLayerVisibilityAction) obj);
            }
        }), new Function1<ToggleNotePageLayerVisibilityAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$toggleLayerShow$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ToggleNotePageLayerVisibilityAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(show);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.ewi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LayerPopup.m48919J0(LayerPopup.this, item, (ToggleNotePageLayerVisibilityAction) obj);
            }
        }).subscribe();
    }

    /* renamed from: K */
    public final void m48957K(final LayerAdapter adapter) {
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(null);
        }
        final ItemTouchHelper itemTouchHelper2 = new ItemTouchHelper(new DragTouchCallback(adapter, new DragTouchCallback.SimpleDragHandler() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$addItemTouchHelper$handler$1

            /* renamed from: a, reason: from kotlin metadata */
            public boolean dataChanged;

            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public boolean canDrag(int position) {
                return !LayerAdapter.this.getSelectionMode();
            }

            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public boolean canMerge(int fromPosition, int toPosition) {
                return true;
            }

            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void onMergeData(int fromPosition, int toPosition) {
                LayerInfo item;
                List listOf;
                LayerInfo item2 = LayerAdapter.this.getItem(fromPosition);
                if (item2 == null || (item = LayerAdapter.this.getItem(toPosition)) == null) {
                    return;
                }
                LayerPopup layerPopup = this;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(item2.getId()));
                layerPopup.m48973p0(listOf, item.getId());
            }

            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void onStopDrag(@Nullable RecyclerView.ViewHolder viewHolder, boolean performMerge) {
                List reversed;
                List<LayerInfo> mutableList;
                if (this.dataChanged) {
                    LayerAdapter layerAdapter = LayerAdapter.this;
                    LayerAdapter layerAdapter2 = this.adapter;
                    if (layerAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        layerAdapter2 = null;
                    }
                    if (Intrinsics.areEqual(layerAdapter, layerAdapter2)) {
                        PageInfo pageInfo = LayerAdapter.this.getPageInfo();
                        reversed = CollectionsKt___CollectionsKt.reversed(LayerAdapter.this.getItems());
                        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) reversed);
                        pageInfo.setLayerList(mutableList);
                        LayerAdapter layerAdapter3 = LayerAdapter.this;
                        layerAdapter3.setPageInfo(layerAdapter3.getPageInfo());
                        RxBaseAction.execute$default(new SaveNotePageLayersAction(this.getEditorBundle(), LayerAdapter.this.getPageInfo()), null, null, null, 7, null);
                    }
                }
            }

            @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
            public void swap(int fromPosition, int toPosition) {
                if (LayerAdapter.this.getItem(fromPosition) == null || LayerAdapter.this.getItem(toPosition) == null) {
                    return;
                }
                if (fromPosition < toPosition) {
                    int i = fromPosition;
                    while (i < toPosition) {
                        int i2 = i + 1;
                        Collections.swap(LayerAdapter.this.getItems(), i, i2);
                        i = i2;
                    }
                } else {
                    int i3 = toPosition + 1;
                    if (i3 <= fromPosition) {
                        int i4 = fromPosition;
                        while (true) {
                            Collections.swap(LayerAdapter.this.getItems(), i4, i4 - 1);
                            if (i4 == i3) {
                                break;
                            } else {
                                i4--;
                            }
                        }
                    }
                }
                LayerAdapter.this.notifyItemMoved(fromPosition, toPosition);
                this.dataChanged = true;
            }
        }, false, false, false, 12, null));
        itemTouchHelper2.attachToRecyclerView(this.binding.recyclerView);
        adapter.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.hwi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m48920L;
                m48920L = LayerPopup.m48920L(LayerPopup.this, itemTouchHelper2, baseQuickAdapter, view, i);
                return m48920L;
            }
        });
        this.itemTouchHelper = itemTouchHelper2;
    }

    /* renamed from: K0 */
    public final void m48958K0() {
        LayerAdapter layerAdapter = this.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        layerAdapter.toggleSelectionMode();
        TintImageView tintImageView = this.binding.select;
        LayerAdapter layerAdapter3 = this.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter3 = null;
        }
        ViewKt.setViewVisibleOrInvisible(tintImageView, !layerAdapter3.getSelectionMode());
        TintImageView tintImageView2 = this.binding.close;
        LayerAdapter layerAdapter4 = this.adapter;
        if (layerAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter4 = null;
        }
        ViewKt.setViewVisibleOrInvisible(tintImageView2, !layerAdapter4.getSelectionMode());
        TintTextView tintTextView = this.binding.finish;
        LayerAdapter layerAdapter5 = this.adapter;
        if (layerAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter5 = null;
        }
        ViewKt.setViewVisibleOrInvisible(tintTextView, layerAdapter5.getSelectionMode());
        TintTextView tintTextView2 = this.binding.addLayer;
        LayerAdapter layerAdapter6 = this.adapter;
        if (layerAdapter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter6;
        }
        ViewKt.setViewVisibleOrInvisible(tintTextView2, !layerAdapter2.getSelectionMode());
        m48959L0();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0082  */
    /* renamed from: L0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m48959L0() {
        /*
            r7 = this;
            com.onyx.galaxy.note.databinding.PopupLayerBinding r0 = r7.binding
            androidx.appcompat.widget.LinearLayoutCompat r0 = r0.selectionActionLayout
            com.onyx.galaxy.note.editor.view.adapter.LayerAdapter r1 = r7.adapter
            r2 = 0
            java.lang.String r3 = "adapter"
            if (r1 != 0) goto Lf
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            r1 = r2
        Lf:
            boolean r1 = r1.getSelectionMode()
            com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(r0, r1)
            com.onyx.galaxy.note.editor.view.adapter.LayerAdapter r0 = r7.adapter
            if (r0 != 0) goto L1e
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            r0 = r2
        L1e:
            java.util.List r0 = r0.getSelectedItems()
            java.util.Collection r0 = (java.util.Collection) r0
            int r0 = com.onyx.android.sdk.base.extension.CollectionKt.getSize(r0)
            com.onyx.galaxy.note.databinding.PopupLayerBinding r1 = r7.binding
            com.onyx.android.sdk.theme.widgets.TintTextView r1 = r1.rename
            r4 = 0
            r5 = 1
            if (r0 != r5) goto L32
            r6 = r5
            goto L33
        L32:
            r6 = r4
        L33:
            r1.setEnabled(r6)
            com.onyx.galaxy.note.databinding.PopupLayerBinding r1 = r7.binding
            com.onyx.android.sdk.theme.widgets.TintTextView r1 = r1.clean
            if (r0 <= 0) goto L44
            boolean r6 = r7.m48967U()
            if (r6 != 0) goto L44
            r6 = r5
            goto L45
        L44:
            r6 = r4
        L45:
            r1.setEnabled(r6)
            com.onyx.galaxy.note.databinding.PopupLayerBinding r1 = r7.binding
            com.onyx.android.sdk.theme.widgets.TintTextView r1 = r1.delete
            com.onyx.galaxy.note.editor.view.adapter.LayerAdapter r6 = r7.adapter
            if (r6 != 0) goto L54
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            r6 = r2
        L54:
            int r6 = r6.getItemCount()
            if (r6 <= r5) goto L72
            if (r0 <= 0) goto L72
            com.onyx.galaxy.note.editor.view.adapter.LayerAdapter r6 = r7.adapter
            if (r6 != 0) goto L64
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            r6 = r2
        L64:
            int r6 = r6.getItemCount()
            if (r0 >= r6) goto L72
            boolean r6 = r7.m48967U()
            if (r6 != 0) goto L72
            r6 = r5
            goto L73
        L72:
            r6 = r4
        L73:
            r1.setEnabled(r6)
            com.onyx.galaxy.note.databinding.PopupLayerBinding r1 = r7.binding
            com.onyx.android.sdk.theme.widgets.TintTextView r1 = r1.merge
            com.onyx.galaxy.note.editor.view.adapter.LayerAdapter r6 = r7.adapter
            if (r6 != 0) goto L82
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            goto L83
        L82:
            r2 = r6
        L83:
            int r2 = r2.getItemCount()
            if (r2 <= r5) goto L92
            if (r0 <= r5) goto L92
            boolean r7 = r7.m48967U()
            if (r7 != 0) goto L92
            r4 = r5
        L92:
            r1.setEnabled(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.LayerPopup.m48959L0():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: M */
    public final void m48960M() {
        LayerAdapter layerAdapter = this.adapter;
        Integer num = null;
        Object[] objArr = 0;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        int i = 2;
        if (layerAdapter.getItemCount() >= 20) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.limit_layer_tips, false, 2, (Object) null);
            return;
        }
        StatisticsBundle.INSTANCE.postEvent(new StatisticsStoolbarLayerAdd());
        m48977u0();
        new AddNotePageNewLayerAction(this.editorBundle, num, i, objArr == true ? 1 : 0).build().doOnNext(new C12395a()).doOnNext(new C12396b()).subscribe();
    }

    /* renamed from: N */
    public final boolean m48961N(List<LayerInfo> items) {
        if (!PageInfo.INSTANCE.hasLockedLayer(items)) {
            return false;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.has_locked_layer_tip, false, 2, (Object) null);
        return true;
    }

    /* renamed from: O */
    public final void m48962O(List<LayerInfo> items) {
        int collectionSizeOrDefault;
        if (m48961N(items)) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        List<LayerInfo> list = items;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((LayerInfo) it2.next()).getId()));
        }
        new CleanNotePageLayerAction(editorBundle, arrayList).setActivityContext(getContext()).build().doOnSubscribe(new C12397c()).doOnNext(new C12398d(items)).doOnNext(new C12399e()).subscribe();
    }

    /* renamed from: P */
    public final void m48963P() {
        LayerAdapter layerAdapter = this.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        layerAdapter.clearSelectedItems();
        m48959L0();
    }

    /* renamed from: Q */
    public final MenuItem m48964Q(int pos, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        LayerAdapter layerAdapter = this.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        if (layerAdapter.getPageInfo().getLayerCount() <= 1 && (itemId == C10651R.id.delete || itemId == C10651R.id.merge_down)) {
            menuItem.setEnabled(false);
        }
        LayerAdapter layerAdapter3 = this.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter3 = null;
        }
        if (pos == layerAdapter3.getItemCount() - 1 && itemId == C10651R.id.merge_down) {
            menuItem.setEnabled(false);
        }
        LayerAdapter layerAdapter4 = this.adapter;
        if (layerAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter4 = null;
        }
        LayerInfo item = layerAdapter4.getItem(pos);
        if ((item != null && item.getLock()) && (itemId == C10651R.id.delete || itemId == C10651R.id.clean || itemId == C10651R.id.merge_down)) {
            menuItem.setEnabled(false);
        }
        LayerAdapter layerAdapter5 = this.adapter;
        if (layerAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter5;
        }
        LayerInfo item2 = layerAdapter2.getItem(pos + 1);
        if ((item2 != null && item2.getLock()) && itemId == C10651R.id.merge_down) {
            menuItem.setEnabled(false);
        }
        return menuItem;
    }

    /* renamed from: R */
    public final void m48965R(List<LayerInfo> items) {
        int collectionSizeOrDefault;
        if (m48961N(items)) {
            return;
        }
        EditorBundle editorBundle = this.editorBundle;
        List<LayerInfo> list = items;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((LayerInfo) it2.next()).getId()));
        }
        new RemoveNotePageLayerAction(editorBundle, arrayList).setActivityContext(getContext()).build().doOnSubscribe(new C12400f()).doOnNext(new C12401g()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.rvi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LayerPopup.m48921S(LayerPopup.this);
            }
        }).subscribe();
    }

    /* renamed from: T */
    public final LayerInfo m48966T(List<Integer> layerIds) {
        LayerAdapter layerAdapter = this.adapter;
        Object obj = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        Iterator<T> it2 = layerAdapter.getItems().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (layerIds.contains(Integer.valueOf(((LayerInfo) next).getId()))) {
                obj = next;
                break;
            }
        }
        return (LayerInfo) obj;
    }

    /* renamed from: U */
    public final boolean m48967U() {
        PageInfo.Companion companion = PageInfo.INSTANCE;
        LayerAdapter layerAdapter = this.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        return companion.hasLockedLayer(layerAdapter.getSelectedItems());
    }

    /* renamed from: V */
    public final void m48968V() {
        m48970b0();
        m48934m0(this, null, true, false, 5, null);
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        EventBusHolderKt.ensureRegister(EditorBundleKt.appEventBus(this.editorBundle), this);
        this.shapeChangedFilter.subscribeDebounce(1000L, new C12402h());
    }

    /* renamed from: W */
    public final void m48969W() {
        LayerAdapter layerAdapter;
        LayerAdapter layerAdapter2;
        LayerAdapter layerAdapter3;
        LayerAdapter layerAdapter4 = new LayerAdapter(this.editorBundle);
        this.adapter = layerAdapter4;
        ItemClickUtilsKt.setOnDebouncedItemClick$default(layerAdapter4, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.kwi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                LayerPopup.m48925a0(LayerPopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        LayerAdapter layerAdapter5 = this.adapter;
        LayerAdapter layerAdapter6 = null;
        if (layerAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        } else {
            layerAdapter = layerAdapter5;
        }
        ItemClickUtilsKt.addOnDebouncedChildClick$default(layerAdapter, C10651R.id.show, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.lwi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                LayerPopup.m48922X(LayerPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        LayerAdapter layerAdapter7 = this.adapter;
        if (layerAdapter7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter2 = null;
        } else {
            layerAdapter2 = layerAdapter7;
        }
        ItemClickUtilsKt.addOnDebouncedChildClick$default(layerAdapter2, C10651R.id.lock, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.mwi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                LayerPopup.m48923Y(LayerPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        LayerAdapter layerAdapter8 = this.adapter;
        if (layerAdapter8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter3 = null;
        } else {
            layerAdapter3 = layerAdapter8;
        }
        ItemClickUtilsKt.addOnDebouncedChildClick$default(layerAdapter3, C10651R.id.more, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.svi
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                LayerPopup.m48924Z(LayerPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        this.binding.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        MaxHeightRecyclerView maxHeightRecyclerView = this.binding.recyclerView;
        LayerAdapter layerAdapter9 = this.adapter;
        if (layerAdapter9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter9 = null;
        }
        maxHeightRecyclerView.setAdapter(layerAdapter9);
        LayerAdapter layerAdapter10 = this.adapter;
        if (layerAdapter10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter6 = layerAdapter10;
        }
        m48957K(layerAdapter6);
    }

    /* renamed from: b0 */
    public final void m48970b0() {
        View root = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(false);
        setFocusable(false);
        this.binding.close.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48926c0(LayerPopup.this, view);
            }
        });
        this.binding.addLayer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48927d0(LayerPopup.this, view);
            }
        });
        this.binding.select.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48928e0(LayerPopup.this, view);
            }
        });
        this.binding.finish.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48929f0(LayerPopup.this, view);
            }
        });
        this.binding.rename.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48930g0(LayerPopup.this, view);
            }
        });
        this.binding.delete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48931h0(LayerPopup.this, view);
            }
        });
        this.binding.clean.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.awi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48932i0(LayerPopup.this, view);
            }
        });
        this.binding.merge.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bwi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LayerPopup.m48933j0(LayerPopup.this, view);
            }
        });
        m48969W();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        this.shapeChangedFilter.dispose();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        EventBusHolderKt.ensureUnRegister(EditorBundleKt.appEventBus(this.editorBundle), this);
    }

    @NotNull
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: k0 */
    public final boolean m48971k0(PageInfo it2, VirtualDocViewInfoEvent event) {
        LayerAdapter layerAdapter = this.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        if (layerAdapter.isLayersChanged(it2)) {
            return true;
        }
        if (!EditorBundleKt.getUiFeature(this.editorBundle).supportDrawPageLayer()) {
            LayerAdapter layerAdapter3 = this.adapter;
            if (layerAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                layerAdapter2 = layerAdapter3;
            }
            return layerAdapter2.isViewportChanged(event.getVirtualDocViewInfo().getViewport());
        }
        LayerAdapter layerAdapter4 = this.adapter;
        if (layerAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter4 = null;
        }
        if (layerAdapter4.isPageLayerChanged(it2)) {
            return true;
        }
        LayerAdapter layerAdapter5 = this.adapter;
        if (layerAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter5;
        }
        return layerAdapter2.isCurrentBoxInfoChanged(event.getVirtualDocViewInfo().currentVisibleBoxInfo());
    }

    /* renamed from: l0 */
    public final void m48972l0(final Integer layerId, final boolean initLoad, final boolean scrollToCurrentLayer) {
        Observable<PageInfo> doOnNext = new LoadNotePageLayersAction(this.editorBundle).build().doOnNext(new C12403i());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.doOnNextIf(RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(doOnNext, new Function1<PageInfo, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$loadPageLayers$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PageInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(initLoad);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.cwi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LayerPopup.m48935n0(LayerPopup.this, (PageInfo) obj);
            }
        }), new Function1<PageInfo, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$loadPageLayers$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PageInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(layerId != null);
            }
        }, new Function1<PageInfo, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$loadPageLayers$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull PageInfo it2) {
                Observable<? extends Object> m48953C0;
                Intrinsics.checkNotNullParameter(it2, "it");
                LayerPopup layerPopup = LayerPopup.this;
                Integer num = layerId;
                Intrinsics.checkNotNull(num);
                m48953C0 = layerPopup.m48953C0(num.intValue());
                return m48953C0;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.popup.LayerPopup$loadPageLayers$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(scrollToCurrentLayer);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.fwi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LayerPopup.m48937o0(LayerPopup.this, obj);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangedShapeBean(@NotNull ChangedShapeBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.shapeChangedFilter.onNext(bean);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClearLayerDialogCancelEvent(@NotNull ClearLayerDialogCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_CLEAR_POPUP_CANCEL, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClearLayerDialogDoneEvent(@NotNull ClearLayerDialogDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_CLEAR_POPUP_DONE, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClearLayerDialogStartEvent(@NotNull ClearLayerDialogStartEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_VIEW_CLEAR_POPUP, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteLayerDialogCancelEvent(@NotNull DeleteLayerDialogCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_DELETE_POPUP_CANCEL, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteLayerDialogDoneEvent(@NotNull DeleteLayerDialogDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_DELETE_POPUP_DONE, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteLayerDialogStartEvent(@NotNull DeleteLayerDialogStartEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_VIEW_DELETE_POPUP, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLayerCommandAppliedEvent(@NotNull LayerCommandAppliedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(this.editorBundle, new UpdateVirtualDocViewInfoEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMergeLayerDialogCancelEvent(@NotNull MergeLayerDialogCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_MERGE_POPUP_CANCEL, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMergeLayerDialogDoneEvent(@NotNull MergeLayerDialogDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_MERGE_POPUP_DONE, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMergeLayerDialogStartEvent(@NotNull MergeLayerDialogStartEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_VIEW_MERGE_POPUP, m48966T(event.getLayerIds()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteLayerInfoChangedEvent(@NotNull NoteLayerInfoChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LayerAdapter layerAdapter = this.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        Iterator<LayerInfo> it2 = layerAdapter.getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next().getId() == event.getLayerInfo().getId()) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (i >= 0) {
            LayerAdapter layerAdapter3 = this.adapter;
            if (layerAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter3 = null;
            }
            LayerInfo layerInfo = layerAdapter3.getItems().get(i);
            layerInfo.setLock(event.getLayerInfo().getLock());
            layerInfo.setShow(event.getLayerInfo().getShow());
            LayerAdapter layerAdapter4 = this.adapter;
            if (layerAdapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                layerAdapter2 = layerAdapter4;
            }
            BaseQuickAdapterKt.notifyItemChangedSafety(layerAdapter2, i);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteShapeChangedEvent(@NotNull NoteShapeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.shapeChangedFilter.onNext(event.getChangedShapeBean());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReloadNoteLayerInfoEvent(@NotNull ReloadNoteLayerInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48934m0(this, null, false, false, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.isScrolling()) {
            return;
        }
        new LoadNotePageLayersAction(this.editorBundle).build().filter(new C12406l(event)).doOnNext(new C12407m(event)).subscribe();
    }

    /* renamed from: p0 */
    public final void m48973p0(List<Integer> srcLayerIds, int targetLayerId) {
        new MergeNotePageLayerAction(this.editorBundle, srcLayerIds, targetLayerId).setActivityContext(getContext()).build().doOnSubscribe(new C12404j()).doOnNext(new C12405k()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.tvi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LayerPopup.m48940q0(LayerPopup.this);
            }
        }).subscribe();
    }

    /* renamed from: r0 */
    public final void m48974r0(int pos, MenuItem menuItem) {
        List<LayerInfo> listOf;
        List<Integer> listOf2;
        List<LayerInfo> listOf3;
        LayerAdapter layerAdapter = this.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        LayerInfo item = layerAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        int itemId = menuItem.getItemId();
        if (itemId == C10651R.id.rename) {
            m48978v0(pos, item);
            m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_RENAME, item);
            return;
        }
        if (itemId == C10651R.id.clean) {
            listOf3 = CollectionsKt__CollectionsJVMKt.listOf(item);
            m48962O(listOf3);
            m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_CLEAR, item);
            return;
        }
        if (itemId != C10651R.id.merge_down) {
            if (itemId == C10651R.id.delete) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
                m48965R(listOf);
                m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_DELETE, item);
                return;
            }
            return;
        }
        LayerAdapter layerAdapter3 = this.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter3;
        }
        LayerInfo item2 = layerAdapter2.getItem(pos + 1);
        if (item2 != null) {
            int id = item2.getId();
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(item.getId()));
            m48973p0(listOf2, id);
            m48951A0(OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_MERGE, item);
        }
    }

    /* renamed from: s0 */
    public final void m48975s0(EditorBundle current) {
        EditorBundleKt.unregister(this.editorBundle, this);
        this.editorBundle = current;
        m48968V();
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    /* renamed from: t0 */
    public final void m48976t0(int pos) {
        LayerAdapter layerAdapter = this.adapter;
        LayerAdapter layerAdapter2 = null;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        LayerInfo item = layerAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        LayerAdapter layerAdapter3 = this.adapter;
        if (layerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter3 = null;
        }
        if (!layerAdapter3.getSelectionMode()) {
            m48952B0(item.getId());
            return;
        }
        LayerAdapter layerAdapter4 = this.adapter;
        if (layerAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            layerAdapter2 = layerAdapter4;
        }
        layerAdapter2.toggleSelectItem(item);
        m48959L0();
    }

    /* renamed from: u0 */
    public final void m48977u0() {
        EditorBundleKt.postEvent(this.editorBundle, new QuitTransformEvent(false, 1, null));
    }

    /* renamed from: v0 */
    public final void m48978v0(int pos, LayerInfo item) {
        EditorBundle editorBundle = this.editorBundle;
        LayerAdapter layerAdapter = this.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        new RenameLayerNameAction(editorBundle, item, layerAdapter.getLayerName(item)).setActivityContext(getContext()).build().doOnSubscribe(new C12408n()).doOnNext(new C12409o(pos)).doOnNext(new C12410p()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.gwi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LayerPopup.m48947w0();
            }
        }).doOnError(C12411q.f60293e).subscribe();
    }

    /* renamed from: x0 */
    public final void m48979x0(int amount) {
        Map mutableMapOf;
        EditorBundle editorBundle = this.editorBundle;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_LAYER_AMOUNT_ADD, Integer.valueOf(amount)));
        StatisticsExtKt.reportNoteEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_LAYER_CLICK_ADD, mutableMapOf);
    }

    /* renamed from: y0 */
    public final void m48980y0(String event, List<LayerInfo> layers) {
        int collectionSizeOrDefault;
        String joinToString$default;
        Map mutableMapOf;
        LayerAdapter layerAdapter = this.adapter;
        if (layerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            layerAdapter = null;
        }
        int size = layerAdapter.getItems().size();
        EditorBundle editorBundle = this.editorBundle;
        Pair[] pairArr = new Pair[1];
        List<LayerInfo> list = layers;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (LayerInfo layerInfo : list) {
            LayerAdapter layerAdapter2 = this.adapter;
            if (layerAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                layerAdapter2 = null;
            }
            arrayList.add(Integer.valueOf(size - layerAdapter2.getItems().indexOf(layerInfo)));
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
        pairArr[0] = TuplesKt.m61535to(OnyxStatisticConstant.KEY_LAYER_SORT, joinToString$default);
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(pairArr);
        StatisticsExtKt.reportNoteEvent(editorBundle, event, mutableMapOf);
    }

    /* renamed from: z0 */
    public final void m48981z0(int amount) {
        Map mutableMapOf;
        EditorBundle editorBundle = this.editorBundle;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_LAYER_AMOUNT, Integer.valueOf(amount)));
        StatisticsExtKt.reportNoteEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_LAYER_VIEW_POPUP, mutableMapOf);
    }
}
