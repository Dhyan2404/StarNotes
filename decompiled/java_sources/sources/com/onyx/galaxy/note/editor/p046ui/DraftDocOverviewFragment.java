package com.onyx.galaxy.note.editor.p046ui;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.common.base.Strings;
import com.onyx.android.sdk.base.data.SearchHighlightRegion;
import com.onyx.android.sdk.base.data.SearchHighlightRegionData;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.ActivationStateChangedEvent;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.event.NoteShapeChangedEvent;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.LocateRectInPageAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectResult;
import com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderBoundingRectThumbnailArgs;
import com.onyx.android.sdk.universal.editor.action.search.SearchTextAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.events.app.DraftCellAddedEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.AllDataSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateSearchProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentDraftDocOverviewBinding;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBinding;
import com.onyx.galaxy.note.editor.event.OverviewSearchEvent;
import com.onyx.galaxy.note.editor.event.SidebarVisibleLevelChangedEvent;
import com.onyx.galaxy.note.editor.event.SidebarWidthChangedEvent;
import com.onyx.galaxy.note.editor.p046ui.DraftDocOverviewFragment;
import com.onyx.galaxy.note.editor.view.adapter.DocDraftOverviewPageListAdapter;
import com.onyx.galaxy.note.editor.viewmodel.DocOverviewViewModel;
import com.onyx.galaxy.note.utils.DocOutlineSearchUtils;
import com.onyx.galaxy.note.utils.SearchActions;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.Range;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u0085\u00012\u00020\u0001:\u0002\u0085\u0001B\t¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0003J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\u0012\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0013H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0013H\u0002J\b\u0010!\u001a\u00020\u0004H\u0002J\b\u0010\"\u001a\u00020\u0004H\u0002J\u0012\u0010%\u001a\u00020\u00042\b\u0010$\u001a\u0004\u0018\u00010#H\u0002J\b\u0010&\u001a\u00020\u0004H\u0002J\b\u0010'\u001a\u00020\u0002H\u0002J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0002J\b\u0010+\u001a\u00020\u0004H\u0002J\b\u0010,\u001a\u00020\u0004H\u0002J\b\u0010-\u001a\u00020\u0004H\u0002J\b\u0010.\u001a\u00020\u0004H\u0002J\b\u0010/\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u000200H\u0002J\u000e\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u000203J\u000e\u00106\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u00108\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0002J$\u0010@\u001a\u00020?2\u0006\u0010:\u001a\u0002092\b\u0010<\u001a\u0004\u0018\u00010;2\b\u0010>\u001a\u0004\u0018\u00010=H\u0016J\u001a\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020?2\b\u0010>\u001a\u0004\u0018\u00010=H\u0016J\b\u0010C\u001a\u00020\u0004H\u0016J\b\u0010D\u001a\u00020\u0004H\u0016J\b\u0010E\u001a\u00020\u0004H\u0016J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010G\u001a\u00020FH\u0007J\u0010\u0010J\u001a\u00020\u00042\u0006\u0010G\u001a\u00020IH\u0007J\u0010\u0010M\u001a\u00020\u00042\u0006\u0010L\u001a\u00020KH\u0007J\u0010\u0010O\u001a\u00020\u00042\u0006\u0010G\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00042\u0006\u0010G\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00042\u0006\u0010G\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00042\u0006\u0010G\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00042\u0006\u0010G\u001a\u00020VH\u0007J\u0010\u0010Y\u001a\u00020\u00042\u0006\u0010G\u001a\u00020XH\u0007R\u001b\u0010_\u001a\u00020Z8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^R\u0014\u0010b\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010aR\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010cR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010n\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u001a\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00020o8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bt\u0010uR\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010}\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0016\u00107\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010mR\u0019\u0010\u0082\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001¨\u0006\u0086\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "K0", "", "N0", "H0", "I0", "", "v0", "V0", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "viewportBoxInfo", "c1", "e1", "z0", "C0", "fullscreen", "a1", "", "level", "f1", "pos", "O0", "W0", "b1", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "w0", "Y0", "pageIndex", "X0", "x0", "B0", "E0", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "searchHighlightRegion", "y0", "A0", "M0", "", "keyword", "Q0", "T0", "U0", "s0", "Z0", "L0", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "type", "t0", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditBundle", "setCurrentVisibleLevel", "selectable", "setSelectable", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onResume", "onPause", "onDestroyView", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", NotificationCompat.CATEGORY_EVENT, "onVirtualDocViewInfoEvent", "Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;", "onSidebarWidthChangedEvent", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "bean", "onChangedShapeBean", "Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;", "onNoteShapeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;", "onDraftCellAddedEvent", "Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;", "onSidebarVisibleLevelChangedEvent", "Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;", "onOverviewSearchEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;", "onUpdateSearchProgressEvent", "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;", "onActivationStateChangedEvent", "Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;", "d1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;", "binding", "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;", "viewModel", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;", "g1", "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "h1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "i1", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isViewportMoving", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "j1", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "loadThumbnailFilter", "Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;", "k1", "Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;", "adapter", "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;", "l1", "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;", "itemAnimatorBackup", "m1", "I", "currentVisibleLevel", "n1", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;", "o1", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;", "searchHighlightRegionData", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDraftDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DraftDocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,649:1\n310#2:650\n326#2,4:651\n311#2:655\n256#2,2:660\n256#2,2:662\n256#2,2:664\n256#2,2:666\n256#2,2:668\n256#2,2:670\n256#2,2:672\n256#2,2:674\n1549#3:656\n1620#3,3:657\n*S KotlinDebug\n*F\n+ 1 DraftDocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment\n*L\n319#1:650\n319#1:651,4\n319#1:655\n544#1:660,2\n547#1:662,2\n548#1:664,2\n607#1:666,2\n608#1:668,2\n609#1:670,2\n621#1:672,2\n623#1:674,2\n380#1:656\n380#1:657,3\n*E\n"})
/* loaded from: classes9.dex */
public final class DraftDocOverviewFragment extends BaseFragment {

    @NotNull
    public static final String TAG = "DraftDocOverviewFragment";

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final DocOverviewViewModel viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g1, reason: from kotlin metadata */
    @Nullable
    public RenderBoundingRectResult result;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public CompositeDisposable compositeDisposable;

    /* renamed from: i1, reason: from kotlin metadata */
    public boolean isViewportMoving;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<Boolean> loadThumbnailFilter;

    /* renamed from: k1, reason: from kotlin metadata */
    public DocDraftOverviewPageListAdapter adapter;

    /* renamed from: l1, reason: from kotlin metadata */
    @Nullable
    public RecyclerView.ItemAnimator itemAnimatorBackup;

    /* renamed from: m1, reason: from kotlin metadata */
    public int currentVisibleLevel;

    /* renamed from: n1, reason: from kotlin metadata */
    public boolean selectable;

    /* renamed from: o1, reason: from kotlin metadata */
    @NotNull
    public SearchHighlightRegionData searchHighlightRegionData;

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12181a<T> implements Consumer {
        public C12181a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LocateRectInPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DraftDocOverviewFragment.this.m46790b1();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12182b<T> implements Consumer {
        public C12182b() {
        }

        /* renamed from: a */
        public final void m46803a(boolean z) {
            DraftDocOverviewFragment.this.m46784V0();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m46803a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$c */
    /* loaded from: classes9.dex */
    public static final class C12183c<T> implements Consumer {
        public C12183c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DraftDocOverviewFragment.this.compositeDisposable.add(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$d */
    /* loaded from: classes9.dex */
    public static final class C12184d<T> implements Consumer {
        public C12184d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DraftDocOverviewFragment.this.m46782T0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$e */
    /* loaded from: classes9.dex */
    public static final class C12185e<T> implements Consumer {
        public C12185e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextAction.Companion companion = SearchTextAction.INSTANCE;
            EditorBundle editorBundle = DraftDocOverviewFragment.this.editorBundle;
            EditorBundle editorBundle2 = null;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundle editorBundle3 = DraftDocOverviewFragment.this.editorBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle2 = editorBundle3;
            }
            companion.postSearchProgressEvent(editorBundle, Float.valueOf(EditorBundleKt.pageCount(editorBundle2)), Float.valueOf(0.0f));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$f */
    /* loaded from: classes9.dex */
    public static final class C12186f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<TextSearchType> f59090f;

        /* JADX WARN: Multi-variable type inference failed */
        public C12186f(List<? extends TextSearchType> list) {
            this.f59090f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchActions searchActions = SearchActions.INSTANCE;
            EditorBundle editorBundle = DraftDocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            return searchActions.activateSearchEngine(editorBundle, this.f59090f);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$g */
    /* loaded from: classes9.dex */
    public static final class C12187g<T> implements Consumer {
        public C12187g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            List emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = DraftDocOverviewFragment.this.adapter;
            if (docDraftOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docDraftOverviewPageListAdapter = null;
            }
            docDraftOverviewPageListAdapter.resetCurrentIndex();
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter2 = DraftDocOverviewFragment.this.adapter;
            if (docDraftOverviewPageListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docDraftOverviewPageListAdapter2 = null;
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            DocDraftOverviewPageListAdapter.submitInObservable$default(docDraftOverviewPageListAdapter2, emptyList, null, 2, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$h */
    /* loaded from: classes9.dex */
    public static final class C12188h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteSearchArgs f59093f;

        public C12188h(NoteSearchArgs noteSearchArgs) {
            this.f59093f = noteSearchArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<List<NoteSearchBean>>> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = DraftDocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            return new SearchTextAction(editorBundle, it2, this.f59093f).build().buffer(1L, TimeUnit.SECONDS);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$i */
    /* loaded from: classes9.dex */
    public static final class C12189i<T, R> implements Function {

        /* renamed from: e */
        public static final C12189i<T, R> f59094e = new C12189i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSearchBean> apply(@NotNull List<List<NoteSearchBean>> it2) {
            List<NoteSearchBean> flatten;
            Intrinsics.checkNotNullParameter(it2, "it");
            flatten = CollectionsKt__IterablesKt.flatten(it2);
            return flatten;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$j */
    /* loaded from: classes9.dex */
    public static final class C12190j<T> implements Consumer {
        public C12190j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = DraftDocOverviewFragment.this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.renderManager(editorBundle).addNoteSearchBeanList(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$k */
    /* loaded from: classes9.dex */
    public static final class C12191k<T> implements Consumer {
        public C12191k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DraftDocOverviewFragment.this.viewModel.setSearching(false);
            DraftDocOverviewFragment.this.viewModel.getCachedSearchResults().clear();
            DraftDocOverviewFragment.this.m46788Z0();
            DraftDocOverviewFragment.this.m46785W0();
            DraftDocOverviewFragment draftDocOverviewFragment = DraftDocOverviewFragment.this;
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = draftDocOverviewFragment.adapter;
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter2 = null;
            if (docDraftOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docDraftOverviewPageListAdapter = null;
            }
            draftDocOverviewFragment.m46799x0(docDraftOverviewPageListAdapter.getCurrentIndex());
            if (DraftDocOverviewFragment.this.viewModel.getSearchType() == TextSearchType.ALL) {
                DraftDocOverviewFragment.this.viewModel.setUseCachedResult(true);
                DocOverviewViewModel docOverviewViewModel = DraftDocOverviewFragment.this.viewModel;
                DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter3 = DraftDocOverviewFragment.this.adapter;
                if (docDraftOverviewPageListAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    docDraftOverviewPageListAdapter2 = docDraftOverviewPageListAdapter3;
                }
                docOverviewViewModel.setCachedSearchResults(CollectionKt.copy(docDraftOverviewPageListAdapter2.getItems()));
            }
            DraftDocOverviewFragment.this.m46794s0();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$l */
    /* loaded from: classes9.dex */
    public static final class C12192l<T> implements Consumer {
        public C12192l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DraftDocOverviewFragment.this.compositeDisposable.add(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$m */
    /* loaded from: classes9.dex */
    public static final class C12193m<T> implements Consumer {
        public C12193m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderBoundingRectResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DraftDocOverviewFragment.this.result = it2;
            DraftDocOverviewFragment.m46762d1(DraftDocOverviewFragment.this, null, 1, null);
        }
    }

    public DraftDocOverviewFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentDraftDocOverviewBinding>() { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentDraftDocOverviewBinding invoke() {
                FragmentDraftDocOverviewBinding inflate = FragmentDraftDocOverviewBinding.inflate(LayoutInflater.from(DraftDocOverviewFragment.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.viewModel = new DocOverviewViewModel();
        this.compositeDisposable = new CompositeDisposable();
        this.loadThumbnailFilter = new RxFilter<>();
        this.currentVisibleLevel = 1;
        this.searchHighlightRegionData = new SearchHighlightRegionData();
    }

    /* renamed from: D0 */
    public static final void m46755D0(DraftDocOverviewFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m46780O0(i);
    }

    /* renamed from: F0 */
    public static final void m46756F0(DraftDocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SearchHighlightRegion findPrevRegion = this$0.searchHighlightRegionData.findPrevRegion();
        if (findPrevRegion == null) {
            return;
        }
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this$0.adapter;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        docDraftOverviewPageListAdapter.setCurrentIndex(findPrevRegion.getPageIndex());
        this$0.m46800y0(findPrevRegion);
    }

    /* renamed from: G0 */
    public static final void m46757G0(DraftDocOverviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SearchHighlightRegion findNextRegion = this$0.searchHighlightRegionData.findNextRegion();
        if (findNextRegion == null) {
            return;
        }
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this$0.adapter;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        docDraftOverviewPageListAdapter.setCurrentIndex(findNextRegion.getPageIndex());
        this$0.m46800y0(findNextRegion);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0051, code lost:
    
        if (r10 != 3) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v13, types: [T, org.apache.commons.lang3.Range] */
    /* JADX WARN: Type inference failed for: r1v14, types: [T, org.apache.commons.lang3.Range] */
    /* JADX WARN: Type inference failed for: r1v7, types: [T, org.apache.commons.lang3.Range] */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.graphics.RectF, T] */
    /* JADX WARN: Type inference failed for: r3v8, types: [T, org.apache.commons.lang3.Range] */
    /* renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m46758J0(com.onyx.galaxy.note.editor.p046ui.DraftDocOverviewFragment r17, android.graphics.PointF r18, android.graphics.PointF r19, kotlin.jvm.internal.Ref.ObjectRef r20, kotlin.jvm.internal.Ref.ObjectRef r21, kotlin.jvm.internal.Ref.ObjectRef r22, kotlin.jvm.internal.Ref.ObjectRef r23, kotlin.jvm.internal.Ref.ObjectRef r24, kotlin.jvm.internal.Ref.FloatRef r25, float r26, android.view.View r27, android.view.MotionEvent r28) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.p046ui.DraftDocOverviewFragment.m46758J0(com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment, android.graphics.PointF, android.graphics.PointF, kotlin.jvm.internal.Ref$ObjectRef, kotlin.jvm.internal.Ref$ObjectRef, kotlin.jvm.internal.Ref$ObjectRef, kotlin.jvm.internal.Ref$ObjectRef, kotlin.jvm.internal.Ref$ObjectRef, kotlin.jvm.internal.Ref$FloatRef, float, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: P0 */
    public static final void m46759P0(DraftDocOverviewFragment this$0, OverviewSearchEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        this$0.viewModel.setSearchType(event.getSearchType());
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = this$0.m46796u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.initInputData(layoutSearch, event.getKeyword(), event.getSearchType());
        this$0.m46781Q0(event.getKeyword());
    }

    /* renamed from: R0 */
    public static final void m46760R0(DraftDocOverviewFragment this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this$0.adapter;
        EditorBundle editorBundle = null;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        EditorBundle editorBundle2 = this$0.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        docDraftOverviewPageListAdapter.addPageSearchData(it2, EditorBundleKt.currentPageIndex(editorBundle));
    }

    /* renamed from: S0 */
    public static final void m46761S0(DraftDocOverviewFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46782T0();
    }

    /* renamed from: d1 */
    public static /* synthetic */ void m46762d1(DraftDocOverviewFragment draftDocOverviewFragment, BoxInfo boxInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            EditorBundle editorBundle = draftDocOverviewFragment.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            boxInfo = EditorBundleKt.viewport(editorBundle);
        }
        draftDocOverviewFragment.m46791c1(boxInfo);
    }

    /* renamed from: A0 */
    public final void m46770A0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        List<TextSearchType> filterSearchType = docOutlineSearchUtils.filterSearchType();
        LayoutDocSearchBinding layoutSearch = m46796u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.initFilterLayout(layoutSearch, filterSearchType, new Function1<TextSearchType, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$initFilterLayout$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextSearchType textSearchType) {
                invoke2(textSearchType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TextSearchType it2) {
                FragmentDraftDocOverviewBinding m46796u0;
                FragmentDraftDocOverviewBinding m46796u02;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2 == DraftDocOverviewFragment.this.viewModel.getSearchType()) {
                    return;
                }
                if (DraftDocOverviewFragment.this.viewModel.getUseCachedResult()) {
                    DraftDocOverviewFragment.this.m46795t0(it2);
                    return;
                }
                DraftDocOverviewFragment.this.viewModel.setSearchType(it2);
                DocOutlineSearchUtils docOutlineSearchUtils2 = DocOutlineSearchUtils.INSTANCE;
                m46796u0 = DraftDocOverviewFragment.this.m46796u0();
                LayoutDocSearchBinding layoutSearch2 = m46796u0.layoutSearch;
                Intrinsics.checkNotNullExpressionValue(layoutSearch2, "layoutSearch");
                docOutlineSearchUtils2.clearSearchStatus(layoutSearch2);
                DraftDocOverviewFragment draftDocOverviewFragment = DraftDocOverviewFragment.this;
                m46796u02 = draftDocOverviewFragment.m46796u0();
                LayoutDocSearchBinding layoutSearch3 = m46796u02.layoutSearch;
                Intrinsics.checkNotNullExpressionValue(layoutSearch3, "layoutSearch");
                draftDocOverviewFragment.m46781Q0(docOutlineSearchUtils2.getInputText(layoutSearch3));
            }
        });
    }

    /* renamed from: B0 */
    public final void m46771B0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46796u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.initLayout(layoutSearch, this.selectable, true, new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$initInputLayout$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DraftDocOverviewFragment.this.m46781Q0(it2);
            }
        });
        m46770A0();
        LayoutDocSearchBinding layoutSearch2 = m46796u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch2, "layoutSearch");
        docOutlineSearchUtils.initAiSearch(layoutSearch2, new DraftDocOverviewFragment$initInputLayout$2(this));
    }

    /* renamed from: C0 */
    public final void m46772C0() {
        final EditorBundle editorBundle = this.editorBundle;
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = null;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter2 = new DocDraftOverviewPageListAdapter(editorBundle) { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$initListView$1
        };
        this.adapter = docDraftOverviewPageListAdapter2;
        ItemClickUtilsKt.setOnDebouncedItemClick$default(docDraftOverviewPageListAdapter2, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.khf
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DraftDocOverviewFragment.m46755D0(DraftDocOverviewFragment.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        AutoFitRecycleView autoFitRecycleView = m46796u0().recyclerView;
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter3 = this.adapter;
        if (docDraftOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docDraftOverviewPageListAdapter = docDraftOverviewPageListAdapter3;
        }
        autoFitRecycleView.setAdapter(docDraftOverviewPageListAdapter);
        this.itemAnimatorBackup = m46796u0().recyclerView.getItemAnimator();
        m46789a1(this.selectable);
        m46796u0().recyclerView.setPadding(this.selectable ? ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16) : 0, 0, 0, 0);
    }

    /* renamed from: E0 */
    public final void m46773E0() {
        TintImageView gotoPrevHighlight = m46796u0().layoutSearch.gotoPrevHighlight;
        Intrinsics.checkNotNullExpressionValue(gotoPrevHighlight, "gotoPrevHighlight");
        ViewKt.click(gotoPrevHighlight, 100L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ihf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DraftDocOverviewFragment.m46756F0(DraftDocOverviewFragment.this, view);
            }
        });
        TintImageView gotoNextHighlight = m46796u0().layoutSearch.gotoNextHighlight;
        Intrinsics.checkNotNullExpressionValue(gotoNextHighlight, "gotoNextHighlight");
        ViewKt.click(gotoNextHighlight, 100L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jhf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DraftDocOverviewFragment.m46757G0(DraftDocOverviewFragment.this, view);
            }
        });
    }

    /* renamed from: H0 */
    public final void m46774H0() {
        m46775I0();
        this.loadThumbnailFilter.subscribeDebounce(1000L, new C12182b());
        m46801z0();
        m46772C0();
        m46771B0();
        m46773E0();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, org.apache.commons.lang3.Range] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.graphics.RectF, T] */
    /* JADX WARN: Type inference failed for: r5v0, types: [T, org.apache.commons.lang3.Range] */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, org.apache.commons.lang3.Range] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, org.apache.commons.lang3.Range] */
    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: I0 */
    public final void m46775I0() {
        Float valueOf = Float.valueOf(0.0f);
        final PointF pointF = new PointF(0.0f, 0.0f);
        final PointF pointF2 = new PointF(0.0f, 0.0f);
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        floatRef.element = 1.0f;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Float valueOf2 = Float.valueOf(1000.0f);
        objectRef.element = Range.between(valueOf, valueOf2);
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = Range.between(valueOf, valueOf2);
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        objectRef3.element = Range.between(valueOf, valueOf2);
        final Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
        objectRef4.element = Range.between(valueOf, valueOf2);
        final Ref.ObjectRef objectRef5 = new Ref.ObjectRef();
        objectRef5.element = new RectF();
        final float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_1);
        m46796u0().viewport.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.mhf
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m46758J0;
                m46758J0 = DraftDocOverviewFragment.m46758J0(DraftDocOverviewFragment.this, pointF, pointF2, objectRef, objectRef2, objectRef5, objectRef3, objectRef4, floatRef, dimension, view, motionEvent);
                return m46758J0;
            }
        });
    }

    /* renamed from: K0 */
    public final boolean m46776K0() {
        return this.editorBundle != null;
    }

    /* renamed from: L0 */
    public final boolean m46777L0() {
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this.adapter;
        EditorBundle editorBundle = null;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        int currentIndex = docDraftOverviewPageListAdapter.getCurrentIndex();
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        return currentIndex != EditorBundleKt.currentPageIndex(editorBundle);
    }

    /* renamed from: M0 */
    public final boolean m46778M0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m46796u0().layoutSearch.inputEditTextView.getText()));
        return StringKt.isNotBlank(Strings.nullToEmpty(trim.toString()));
    }

    /* renamed from: N0 */
    public final void m46779N0() {
        m46774H0();
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.register(editorBundle, this);
        AccountDataBundle.INSTANCE.register(this);
    }

    /* renamed from: O0 */
    public final void m46780O0(int pos) {
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this.adapter;
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter2 = null;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        PageDataModel item = docDraftOverviewPageListAdapter.getItem(pos);
        if (item == null) {
            return;
        }
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter3 = this.adapter;
        if (docDraftOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter3 = null;
        }
        if (docDraftOverviewPageListAdapter3.getSelectionMode()) {
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter4 = this.adapter;
            if (docDraftOverviewPageListAdapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docDraftOverviewPageListAdapter4 = null;
            }
            docDraftOverviewPageListAdapter4.onItemClick(item);
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter5 = this.adapter;
            if (docDraftOverviewPageListAdapter5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                docDraftOverviewPageListAdapter2 = docDraftOverviewPageListAdapter5;
            }
            EditorBundleKt.postEvent(editorBundle, new AllDataSelectedEvent(docDraftOverviewPageListAdapter2.isAllItemSelected()));
            return;
        }
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter6 = this.adapter;
        if (docDraftOverviewPageListAdapter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter6 = null;
        }
        docDraftOverviewPageListAdapter6.setCurrentIndex(item.getPageIndex());
        if (m46778M0()) {
            m46799x0(item.getPageIndex());
            return;
        }
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle2 = null;
        }
        String pageId = item.getPageId();
        NoteSearchBean noteSearchBean = item.getNoteSearchBean();
        OnyxErrorHandler.executeWithErrorHandler$default(onyxErrorHandler, new LocateRectInPageAction(editorBundle2, pageId, noteSearchBean != null ? NoteSearchBean.INSTANCE.findFirstHighlightRect(noteSearchBean) : null), null, null, 3, null);
    }

    /* renamed from: Q0 */
    public final void m46781Q0(String keyword) {
        CharSequence trim;
        this.compositeDisposable.clear();
        CommonEmptyView searchEmptyView = m46796u0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(8);
        trim = StringsKt__StringsKt.trim((CharSequence) keyword);
        String nullToEmpty = Strings.nullToEmpty(trim.toString());
        boolean z = nullToEmpty == null || nullToEmpty.length() == 0;
        LinearLayout llyNormalContent = m46796u0().llyNormalContent;
        Intrinsics.checkNotNullExpressionValue(llyNormalContent, "llyNormalContent");
        llyNormalContent.setVisibility(z ? 0 : 8);
        TintConstraintLayout clSearchContent = m46796u0().clSearchContent;
        Intrinsics.checkNotNullExpressionValue(clSearchContent, "clSearchContent");
        clSearchContent.setVisibility(z ^ true ? 0 : 8);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        EditorBundleKt.renderManager(editorBundle).clearNoteSearchBeanList();
        if (z) {
            this.viewModel.setSearching(false);
            this.viewModel.setSearchType(TextSearchType.ALL);
            m46784V0();
            return;
        }
        m46783U0();
        this.viewModel.setSearchProgress(0.0f);
        List<TextSearchType> correspondingSearchTypes = SearchActions.INSTANCE.getCorrespondingSearchTypes(this.viewModel.getSearchType());
        SearchNoteViewModel.Companion companion = SearchNoteViewModel.INSTANCE;
        Intrinsics.checkNotNull(nullToEmpty);
        Observable map = Observable.just(Unit.INSTANCE).doOnNext(new C12185e()).flatMap(new C12186f(correspondingSearchTypes)).flatMap(new Function() { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$onSearch$searchDisposable$3
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends SyncNoteModel> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle2 = DraftDocOverviewFragment.this.editorBundle;
                if (editorBundle2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    editorBundle2 = null;
                }
                return DocCommonActionsKt.createNoteObservable(editorBundle2, new Function1<NoteBundle, SyncNoteModel>() { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$onSearch$searchDisposable$3.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final SyncNoteModel invoke(@NotNull NoteBundle it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return it3.getNoteDoc().getNoteModel();
                    }
                });
            }
        }).doOnNext(new C12187g()).flatMap(new C12188h(companion.createSearchArgs(correspondingSearchTypes, nullToEmpty))).observeOn(AndroidSchedulers.mainThread()).map(C12189i.f59094e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Disposable subscribe = RxjavaKt.doOnNextIf(map, new Function1<List<? extends NoteSearchBean>, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$onSearch$searchDisposable$7
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<NoteSearchBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends NoteSearchBean> list) {
                return invoke2((List<NoteSearchBean>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.nhf
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DraftDocOverviewFragment.m46760R0(DraftDocOverviewFragment.this, (List) obj);
            }
        }).doOnNext(new C12190j()).doOnSubscribe(new C12183c()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.ohf
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DraftDocOverviewFragment.m46761S0(DraftDocOverviewFragment.this);
            }
        }).doOnError(new C12184d()).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: T0 */
    public final void m46782T0() {
        Disposable subscribe = Observable.just(Unit.INSTANCE).delay(100L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12191k()).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: U0 */
    public final void m46783U0() {
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46796u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.updateFilterStatus(layoutSearch, true);
        CommonEmptyView searchEmptyView = m46796u0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(8);
        TintLinearLayout searchStatusLayout = m46796u0().layoutSearch.searchStatusLayout;
        Intrinsics.checkNotNullExpressionValue(searchStatusLayout, "searchStatusLayout");
        searchStatusLayout.setVisibility(0);
        TintLinearLayout highlightNavLayout = m46796u0().layoutSearch.highlightNavLayout;
        Intrinsics.checkNotNullExpressionValue(highlightNavLayout, "highlightNavLayout");
        highlightNavLayout.setVisibility(8);
        this.viewModel.setSearching(true);
        this.viewModel.setUseCachedResult(false);
        this.viewModel.getCachedSearchResults().clear();
        this.searchHighlightRegionData = new SearchHighlightRegionData();
    }

    /* renamed from: V0 */
    public final void m46784V0() {
        this.compositeDisposable.clear();
        RenderBoundingRectThumbnailArgs renderBoundingRectThumbnailArgs = new RenderBoundingRectThumbnailArgs(false, false, 0, 7, null);
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Observable<RenderBoundingRectResult> doOnNext = new RenderBoundingRectThumbnailAction(editorBundle, renderBoundingRectThumbnailArgs).build().doOnSubscribe(new C12192l()).doOnNext(new C12193m());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: W0 */
    public final void m46785W0() {
        this.searchHighlightRegionData = NoteSearchBean.INSTANCE.createSearchHighlightRegionData(m46798w0());
    }

    /* renamed from: X0 */
    public final void m46786X0(int pageIndex) {
        this.searchHighlightRegionData.updateSelectedRegion(this.searchHighlightRegionData.getNearestRegion(pageIndex));
    }

    /* renamed from: Y0 */
    public final void m46787Y0() {
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this.adapter;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        this.searchHighlightRegionData.updateSelectedRegion(this.searchHighlightRegionData.getPageFirstRegion(docDraftOverviewPageListAdapter.getCurrentIndex()));
    }

    /* renamed from: Z0 */
    public final void m46788Z0() {
        if (m46777L0()) {
            EditorBundle editorBundle = null;
            m46796u0().recyclerView.setItemAnimator(null);
            m46796u0().recyclerView.stopScroll();
            EditorBundle editorBundle2 = this.editorBundle;
            if (editorBundle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle2 = null;
            }
            m46786X0(EditorBundleKt.currentPageIndex(editorBundle2));
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this.adapter;
            if (docDraftOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docDraftOverviewPageListAdapter = null;
            }
            EditorBundle editorBundle3 = this.editorBundle;
            if (editorBundle3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            } else {
                editorBundle = editorBundle3;
            }
            docDraftOverviewPageListAdapter.setCurrentIndex(EditorBundleKt.currentPageIndex(editorBundle));
            m46790b1();
            m46796u0().recyclerView.setItemAnimator(this.itemAnimatorBackup);
        }
    }

    /* renamed from: a1 */
    public final void m46789a1(boolean fullscreen) {
        m46796u0().recyclerView.setDisplayType(NoteDisplayType.DISPLAY_GRID);
        if (fullscreen) {
            return;
        }
        m46796u0().recyclerView.setSpanCount(m46793f1(this.currentVisibleLevel));
    }

    /* renamed from: b1 */
    public final void m46790b1() {
        m46796u0().layoutSearch.currentHighlightIndex.setText(this.searchHighlightRegionData.getIndicatorText());
        DocOverviewViewModel docOverviewViewModel = this.viewModel;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        docOverviewViewModel.updatePageSearchHighlightRender(editorBundle, this.searchHighlightRegionData.getSelectedRegion());
    }

    /* renamed from: c1 */
    public final void m46791c1(BoxInfo viewportBoxInfo) {
        Bitmap bitmap;
        RenderBoundingRectResult renderBoundingRectResult = this.result;
        if (renderBoundingRectResult == null || (bitmap = renderBoundingRectResult.getBitmap()) == null) {
            return;
        }
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(m46796u0().card, true);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(m46796u0().tvDescription, true);
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_21);
        int dimens2 = resManager.getDimens(C7384R.dimen.dp_21);
        int dimens3 = resManager.getDimens(C7384R.dimen.dp_21);
        RectF rectF = new RectF(0.0f, 0.0f, (m46796u0().llyNormalContent.getWidth() - dimens) - dimens2, (((m46796u0().llyNormalContent.getHeight() - m46796u0().tvDescription.getHeight()) - dimens3) - resManager.getDimens(C7384R.dimen.dp_8)) - resManager.getDimens(C7384R.dimen.dp_8));
        RectF boundingRectF = BitmapKt.boundingRectF(bitmap);
        float scaleToPage = RectFKt.scaleToPage(boundingRectF, rectF);
        TintFrameLayout card = m46796u0().card;
        Intrinsics.checkNotNullExpressionValue(card, "card");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutParams(card, (int) boundingRectF.width(), (int) boundingRectF.height());
        m46796u0().image.setImageBitmap(bitmap);
        renderBoundingRectResult.setViewBitmapScale(scaleToPage);
        m46792e1(viewportBoxInfo);
    }

    /* renamed from: e1 */
    public final void m46792e1(BoxInfo viewportBoxInfo) {
        RenderBoundingRectResult renderBoundingRectResult = this.result;
        if (renderBoundingRectResult == null) {
            return;
        }
        float actualScale = renderBoundingRectResult.getActualScale();
        RectF scaleBoundingRect = renderBoundingRectResult.getScaleBoundingRect();
        RectF copy = RectFKt.copy(viewportBoxInfo.getBox());
        Matrix matrix = new Matrix();
        float actualScale2 = actualScale / viewportBoxInfo.getActualScale();
        matrix.postScale(actualScale2, actualScale2);
        matrix.postTranslate(-scaleBoundingRect.left, -scaleBoundingRect.top);
        matrix.postScale(renderBoundingRectResult.getViewBitmapScale(), renderBoundingRectResult.getViewBitmapScale());
        matrix.mapRect(copy);
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8);
        int width = (int) copy.width();
        int height = (int) copy.height();
        if (width < dimens) {
            height = (int) ((viewportBoxInfo.height() / viewportBoxInfo.width()) * dimens);
        } else {
            dimens = width;
        }
        TintView tintView = m46796u0().viewport;
        tintView.setX(copy.left);
        tintView.setY(copy.top);
        if (m46796u0().viewport.getWidth() == dimens && m46796u0().viewport.getHeight() == height) {
            return;
        }
        TintView viewport = m46796u0().viewport;
        Intrinsics.checkNotNullExpressionValue(viewport, "viewport");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutParams(viewport, dimens, height);
    }

    /* renamed from: f1 */
    public final int m46793f1(int level) {
        return level + 1;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivationStateChangedEvent(@NotNull ActivationStateChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        LayoutDocSearchBinding layoutSearch = m46796u0().layoutSearch;
        Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
        docOutlineSearchUtils.updateAiSearchState(layoutSearch);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangedShapeBean(@NotNull ChangedShapeBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.loadThumbnailFilter.onNext(Boolean.TRUE);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m46796u0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (m46776K0()) {
            EditorBundle editorBundle = this.editorBundle;
            if (editorBundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle = null;
            }
            EditorBundleKt.renderManager(editorBundle).clearNoteSearchBeanList();
            EditorBundle editorBundle2 = this.editorBundle;
            if (editorBundle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                editorBundle2 = null;
            }
            EditorBundleKt.unregister(editorBundle2, this);
        }
        AccountDataBundle.INSTANCE.unregister(this);
        this.compositeDisposable.dispose();
        this.loadThumbnailFilter.dispose();
        this.result = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDraftCellAddedEvent(@NotNull DraftCellAddedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.loadThumbnailFilter.onNext(Boolean.TRUE);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteShapeChangedEvent(@NotNull NoteShapeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.loadThumbnailFilter.onNext(Boolean.TRUE);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOverviewSearchEvent(@NotNull final OverviewSearchEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isVisible() && isResumed()) {
            m46796u0().getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.lhf
                @Override // java.lang.Runnable
                public final void run() {
                    DraftDocOverviewFragment.m46759P0(DraftDocOverviewFragment.this, event);
                }
            });
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.compositeDisposable.clear();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (m46776K0()) {
            DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
            LayoutDocSearchBinding layoutSearch = m46796u0().layoutSearch;
            Intrinsics.checkNotNullExpressionValue(layoutSearch, "layoutSearch");
            docOutlineSearchUtils.clearInput(layoutSearch);
            m46781Q0("");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSidebarVisibleLevelChangedEvent(@NotNull SidebarVisibleLevelChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        setCurrentVisibleLevel(event.getLevel());
        m46796u0().recyclerView.setSpanCount(m46793f1(event.getLevel()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSidebarWidthChangedEvent(@NotNull SidebarWidthChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46762d1(this, null, 1, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateSearchProgressEvent(@NotNull UpdateSearchProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.viewModel.updateSearchProgress(event.getTotalProgress(), event.getDeltaProgress());
        m46796u0().layoutSearch.searchResult.setText(this.viewModel.getFormattedSearchProgress());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (m46776K0()) {
            m46779N0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.isViewportMoving) {
            return;
        }
        if (event.isScrolling()) {
            m46792e1(event.getVirtualDocViewInfo().getViewport());
        } else {
            m46791c1(event.getVirtualDocViewInfo().getViewport());
            com.onyx.android.sdk.base.extension.ViewKt.postSelf(m46796u0().recyclerView, new Function1<AutoFitRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.ui.DraftDocOverviewFragment$onVirtualDocViewInfoEvent$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AutoFitRecycleView autoFitRecycleView) {
                    invoke2(autoFitRecycleView);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull AutoFitRecycleView it2) {
                    boolean m46778M0;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m46778M0 = DraftDocOverviewFragment.this.m46778M0();
                    if (m46778M0) {
                        DraftDocOverviewFragment.this.m46788Z0();
                    }
                }
            });
        }
    }

    /* renamed from: s0 */
    public final void m46794s0() {
        if (this.viewModel.getSearching()) {
            return;
        }
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this.adapter;
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter2 = null;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        boolean isEmpty = docDraftOverviewPageListAdapter.getItems().isEmpty();
        CommonEmptyView searchEmptyView = m46796u0().searchEmptyView;
        Intrinsics.checkNotNullExpressionValue(searchEmptyView, "searchEmptyView");
        searchEmptyView.setVisibility(isEmpty && m46778M0() ? 0 : 8);
        DocOutlineSearchUtils docOutlineSearchUtils = DocOutlineSearchUtils.INSTANCE;
        TintTextView searchResult = m46796u0().layoutSearch.searchResult;
        Intrinsics.checkNotNullExpressionValue(searchResult, "searchResult");
        docOutlineSearchUtils.setSearchMatchingData(searchResult, this.searchHighlightRegionData.size(), m46778M0());
        TintLinearLayout highlightNavLayout = m46796u0().layoutSearch.highlightNavLayout;
        Intrinsics.checkNotNullExpressionValue(highlightNavLayout, "highlightNavLayout");
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter3 = this.adapter;
        if (docDraftOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docDraftOverviewPageListAdapter2 = docDraftOverviewPageListAdapter3;
        }
        highlightNavLayout.setVisibility(docDraftOverviewPageListAdapter2.getItemCount() > 0 ? 0 : 8);
    }

    public final void setCurrentVisibleLevel(int level) {
        this.currentVisibleLevel = level;
    }

    public final void setEditBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setSelectable(boolean selectable) {
        this.selectable = selectable;
    }

    /* renamed from: t0 */
    public final void m46795t0(TextSearchType type) {
        this.viewModel.setSearchType(type);
        List<PageDataModel> filterCachedResult = this.viewModel.filterCachedResult(type);
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this.adapter;
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter2 = null;
        if (docDraftOverviewPageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            docDraftOverviewPageListAdapter = null;
        }
        docDraftOverviewPageListAdapter.submitInObservable(filterCachedResult, new DraftDocOverviewFragment$filterSearchResult$1(this));
        m46785W0();
        DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter3 = this.adapter;
        if (docDraftOverviewPageListAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            docDraftOverviewPageListAdapter2 = docDraftOverviewPageListAdapter3;
        }
        m46799x0(docDraftOverviewPageListAdapter2.getCurrentIndex());
    }

    /* renamed from: u0 */
    public final FragmentDraftDocOverviewBinding m46796u0() {
        return (FragmentDraftDocOverviewBinding) this.binding.getValue();
    }

    /* renamed from: v0 */
    public final float m46797v0() {
        RenderBoundingRectResult renderBoundingRectResult = this.result;
        if (renderBoundingRectResult == null) {
            return 1.0f;
        }
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        return (EditorBundleKt.viewport(editorBundle).getActualScale() / renderBoundingRectResult.getViewBitmapScale()) / renderBoundingRectResult.getActualScale();
    }

    /* renamed from: w0 */
    public final List<NoteSearchBean> m46798w0() {
        List<PageDataModel> items;
        int collectionSizeOrDefault;
        List<NoteSearchBean> filterNotNull;
        if (this.viewModel.getUseCachedResult()) {
            DocOverviewViewModel docOverviewViewModel = this.viewModel;
            items = docOverviewViewModel.filterCachedResult(docOverviewViewModel.getSearchType());
        } else {
            DocDraftOverviewPageListAdapter docDraftOverviewPageListAdapter = this.adapter;
            if (docDraftOverviewPageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                docDraftOverviewPageListAdapter = null;
            }
            items = docDraftOverviewPageListAdapter.getItems();
        }
        List<PageDataModel> list = items;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageDataModel) it2.next()).getNoteSearchBean());
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
        return filterNotNull;
    }

    /* renamed from: x0 */
    public final void m46799x0(int pageIndex) {
        m46800y0(this.searchHighlightRegionData.getNearestRegion(pageIndex));
    }

    /* renamed from: y0 */
    public final void m46800y0(SearchHighlightRegion searchHighlightRegion) {
        if (searchHighlightRegion == null) {
            return;
        }
        this.searchHighlightRegionData.updateSelectedRegion(searchHighlightRegion);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        }
        Observable<LocateRectInPageAction> doOnNext = new LocateRectInPageAction(editorBundle, searchHighlightRegion.getPageId(), searchHighlightRegion.getRect()).build().doOnNext(new C12181a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        onyxErrorHandler.subscribeSilently(doOnNext);
    }

    /* renamed from: z0 */
    public final void m46801z0() {
        if (this.selectable) {
            return;
        }
        DynamicImageView imageView = m46796u0().searchEmptyView.getImageView();
        Intrinsics.checkNotNullExpressionValue(imageView, "<get-imageView>(...)");
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        ResManager resManager = ResManager.INSTANCE;
        layoutParams.width = resManager.getDimens(C7384R.dimen.dp_148);
        layoutParams.height = resManager.getDimens(C7384R.dimen.dp_148);
        imageView.setLayoutParams(layoutParams);
    }
}
