package com.onyx.galaxy.note.category.p044ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.TransitionManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.QuickAdapterHelper;
import com.google.android.material.transition.MaterialFade;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.replicator.event.SyncNoteProgressChangedEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentUrisEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageUrisEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.CopyNoteListAction;
import com.onyx.galaxy.note.category.action.DeleteFolderAction;
import com.onyx.galaxy.note.category.action.DeleteListNoteAction;
import com.onyx.galaxy.note.category.action.EditListNoteAction;
import com.onyx.galaxy.note.category.action.EditTagForNoteAction;
import com.onyx.galaxy.note.category.action.MoveToSelectFolderAction;
import com.onyx.galaxy.note.category.action.UpdateNoteExpandStatusAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.event.ActiveNoteListAnimateFinishedEvent;
import com.onyx.galaxy.note.category.event.ExpandParentFolderEvent;
import com.onyx.galaxy.note.category.event.MultiCopyEvent;
import com.onyx.galaxy.note.category.event.MultiDeleteEvent;
import com.onyx.galaxy.note.category.event.MultiExportEvent;
import com.onyx.galaxy.note.category.event.MultiMoveEvent;
import com.onyx.galaxy.note.category.event.NCreateNoteFolderEvent;
import com.onyx.galaxy.note.category.event.NoteListDragEndEvent;
import com.onyx.galaxy.note.category.event.ResetMultiOptionMenuEvent;
import com.onyx.galaxy.note.category.event.ToggleSelectAllEvent;
import com.onyx.galaxy.note.category.p044ui.FragmentNoteFolderRoot;
import com.onyx.galaxy.note.category.p044ui.NoteListOpPopup;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.GridDividerItemDecoration;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.category.view.adapter.NoteListFooterAdapter;
import com.onyx.galaxy.note.category.view.dialog.CreateSubFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.EditFolderDialog;
import com.onyx.galaxy.note.category.view.drag.NoteListDragListener;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.EditTagForNoteContext;
import com.onyx.galaxy.note.common.data.ManageFolderContext;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.databinding.FragmentNoteFolderRootBinding;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\b\b*\u0002\u0082\u0001\u0018\u0000 \u0088\u00012\u00020\u0001:\u0002\u0088\u0001B\t¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0003J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0019\u001a\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\b\u0010 \u001a\u00020\u0002H\u0002J\b\u0010!\u001a\u00020\u0002H\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\b\u0010$\u001a\u00020#H\u0002J\u0012\u0010&\u001a\u00020\u00022\b\b\u0002\u0010%\u001a\u00020#H\u0003J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u0007H\u0002J\b\u0010)\u001a\u00020\u0002H\u0002J\b\u0010*\u001a\u00020\u0002H\u0002J\b\u0010+\u001a\u00020\u0002H\u0002J\u0012\u0010.\u001a\u00020\u00022\b\u0010-\u001a\u0004\u0018\u00010,H\u0016J$\u00103\u001a\u00020\u000e2\u0006\u00100\u001a\u00020/2\b\u00102\u001a\u0004\u0018\u0001012\b\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u001a\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u000e2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u0010\u00108\u001a\u00020\u00022\u0006\u00107\u001a\u000206H\u0016J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010:\u001a\u000209H\u0007J\u0010\u0010=\u001a\u00020\u00022\u0006\u0010:\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010:\u001a\u00020>H\u0007J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010:\u001a\u00020@H\u0007J\u0010\u0010C\u001a\u00020\u00022\u0006\u0010:\u001a\u00020BH\u0007J\u0010\u0010E\u001a\u00020\u00022\u0006\u0010:\u001a\u00020DH\u0007J\u0010\u0010G\u001a\u00020\u00022\u0006\u0010:\u001a\u00020FH\u0007J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010:\u001a\u00020HH\u0007J\u0010\u0010K\u001a\u00020\u00022\u0006\u0010:\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00022\u0006\u0010:\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00022\u0006\u0010:\u001a\u00020NH\u0007R\u001b\u0010U\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010TR\u001b\u0010Z\u001a\u00020V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010R\u001a\u0004\bX\u0010YR\u001b\u0010_\u001a\u00020[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010R\u001a\u0004\b]\u0010^R\u001b\u0010d\u001a\u00020`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010R\u001a\u0004\bb\u0010cR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010kR\u001b\u0010q\u001a\u00020m8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bn\u0010R\u001a\u0004\bo\u0010pR\u001b\u0010v\u001a\u00020r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bs\u0010R\u001a\u0004\bt\u0010uR\u001b\u0010y\u001a\u00020r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bw\u0010R\u001a\u0004\bx\u0010uR\u0016\u0010|\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0016\u0010\u007f\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010~R\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001¨\u0006\u0089\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "U0", "S0", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "noteListModelBean", "", "pos", "I0", "R0", "P0", "Q0", "W0", "Landroid/view/View;", "v", "model", "a1", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "M0", "J0", "N0", "", "list", "Z0", "noteModel", "H0", "noteModelBean", "O0", "L0", "x0", "X0", "y0", "v0", "", "V0", "notifyAllDataChanged", "q0", "totalWidth", "E0", "Y0", "t0", "b1", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "onCreateView", "view", "onViewCreated", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;", NotificationCompat.CATEGORY_EVENT, "onCreateQuicklyFolderEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;", "onImportUriDocumentsEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;", "onImportImageUrisEvent", "Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;", "onNoteListDragEndEvent", "Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;", "onMultiDeleteEvent", "Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;", "onMultiMoveEvent", "Lcom/onyx/galaxy/note/category/event/MultiExportEvent;", "onMultiExportEvent", "Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;", "onMultiCopyEvent", "Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;", "onToggleSelectAllEvent", "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;", "onSyncNoteProgressChangedEvent", "Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;", "onActiveNoteListAnimateFinishedEvent", "Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;", "d1", "Lkotlin/Lazy;", "z0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "e1", "G0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;", "f1", "B0", "()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;", "footerAdapter", "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;", "g1", "A0", "()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;", "folderListAdapter", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "h1", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "adapterHelper", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "i1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Landroidx/recyclerview/widget/GridLayoutManager;", "j1", "C0", "()Landroidx/recyclerview/widget/GridLayoutManager;", "gridLayoutManager", "Ljava/lang/Runnable;", "k1", "D0", "()Ljava/lang/Runnable;", "hideGoTopRunnable", "l1", "F0", "updateNoteListViewRunnable", "m1", "I", "showGoTopRowCount", "n1", Constants.HASIDCALL_INDEX_SIG, "scrollTop", "o1", "scrollBottom", "com/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1", "p1", "Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;", "onDragListener", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,850:1\n1549#2:851\n1620#2,3:852\n1549#2:855\n1620#2,3:856\n766#2:859\n857#2,2:860\n1549#2:862\n1620#2,3:863\n766#2:866\n857#2,2:867\n1549#2:869\n1620#2,3:870\n1855#2:873\n1603#2,9:874\n1855#2:883\n1856#2:885\n1612#2:886\n1856#2:887\n1549#2:888\n1620#2,3:889\n1549#2:892\n1620#2,3:893\n1549#2:896\n1620#2,3:897\n1549#2:900\n1620#2,3:901\n1#3:884\n256#4,2:904\n254#4:906\n256#4,2:907\n254#4:909\n256#4,2:910\n310#4:912\n326#4,4:913\n311#4:917\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot\n*L\n616#1:851\n616#1:852,3\n631#1:855\n631#1:856,3\n634#1:859\n634#1:860,2\n635#1:862\n635#1:863,3\n639#1:866\n639#1:867,2\n640#1:869\n640#1:870,3\n644#1:873\n645#1:874,9\n645#1:883\n645#1:885\n645#1:886\n644#1:887\n653#1:888\n653#1:889,3\n663#1:892\n663#1:893,3\n677#1:896\n677#1:897,3\n687#1:900\n687#1:901,3\n645#1:884\n825#1:904,2\n834#1:906\n839#1:907,2\n842#1:909\n847#1:910,2\n747#1:912\n747#1:913,4\n747#1:917\n*E\n"})
/* loaded from: classes17.dex */
public final class FragmentNoteFolderRoot extends BaseFragment {

    @NotNull
    public static final String TAG = "FragmentNoteFolderRoot";

    /* renamed from: q1 */
    public static final long f54575q1 = 750;

    /* renamed from: r1 */
    public static final long f54576r1 = 50;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy footerAdapter;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final Lazy folderListAdapter;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final QuickAdapterHelper adapterHelper;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: j1, reason: from kotlin metadata */
    @NotNull
    public final Lazy gridLayoutManager;

    /* renamed from: k1, reason: from kotlin metadata */
    @NotNull
    public final Lazy hideGoTopRunnable;

    /* renamed from: l1, reason: from kotlin metadata */
    @NotNull
    public final Lazy updateNoteListViewRunnable;

    /* renamed from: m1, reason: from kotlin metadata */
    public int showGoTopRowCount;

    /* renamed from: n1, reason: from kotlin metadata */
    public boolean scrollTop;

    /* renamed from: o1, reason: from kotlin metadata */
    public boolean scrollBottom;

    /* renamed from: p1, reason: from kotlin metadata */
    @NotNull
    public final FragmentNoteFolderRoot$onDragListener$1 onDragListener;

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$a */
    /* loaded from: classes9.dex */
    public static final class C11244a<T, R> implements Function {
        public C11244a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull SyncNoteModel it2) {
            List mutableListOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            Context requireContext = FragmentNoteFolderRoot.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(it2);
            return new CopyNoteListAction(requireContext, null, mutableListOf).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$b */
    /* loaded from: classes9.dex */
    public static final class C11245b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f54591e;

        public C11245b(LoadingDialog loadingDialog) {
            this.f54591e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f54591e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$c */
    /* loaded from: classes9.dex */
    public static final class C11246c<T> implements Consumer {
        public C11246c() {
        }

        /* renamed from: a */
        public final void m43125a(boolean z) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            if (!z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_failed, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
                FragmentNoteFolderRoot.this.m43111W0();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43125a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$d */
    /* loaded from: classes9.dex */
    public static final class C11247d<T> implements Consumer {

        /* renamed from: e */
        public static final C11247d<T> f54593e = new C11247d<>();

        /* renamed from: a */
        public final void m43126a(boolean z) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43126a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$e */
    /* loaded from: classes9.dex */
    public static final class C11248e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ LoadingDialog f54594e;

        public C11248e(LoadingDialog loadingDialog) {
            this.f54594e = loadingDialog;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f54594e.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$f */
    /* loaded from: classes9.dex */
    public static final class C11249f<T> implements Consumer {
        public C11249f() {
        }

        /* renamed from: a */
        public final void m43128a(boolean z) {
            if (!z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_failed, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.option_copy_success, false, 2, (Object) null);
                FragmentNoteFolderRoot.this.m43111W0();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43128a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$g */
    /* loaded from: classes9.dex */
    public static final class C11250g<T> implements Consumer {

        /* renamed from: e */
        public static final C11250g<T> f54596e = new C11250g<>();

        /* renamed from: a */
        public final void m43129a(boolean z) {
            if (z) {
                return;
            }
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.edit_folder_conflicted, false, 2, (Object) null);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43129a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$h */
    /* loaded from: classes9.dex */
    public static final class C11251h<T> implements Consumer {

        /* renamed from: e */
        public static final C11251h<T> f54597e = new C11251h<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MoveToSelectFolderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$i */
    /* loaded from: classes9.dex */
    public static final class C11252i implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54598a;

        public C11252i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54598a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f54598a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54598a.invoke(obj);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$j */
    /* loaded from: classes9.dex */
    public static final class C11254j implements BaseQuickAdapter.OnItemChildClickListener, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function3 f54602a;

        public C11254j(Function3 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54602a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof BaseQuickAdapter.OnItemChildClickListener) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final kotlin.Function<?> getFunctionDelegate() {
            return this.f54602a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
        public final /* synthetic */ void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            this.f54602a.invoke(baseQuickAdapter, view, Integer.valueOf(i));
        }
    }

    public FragmentNoteFolderRoot() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteFolderRootBinding>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteFolderRootBinding invoke() {
                return FragmentNoteFolderRootBinding.inflate(FragmentNoteFolderRoot.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = FragmentNoteFolderRoot.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListFooterAdapter>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$footerAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListFooterAdapter invoke() {
                return new NoteListFooterAdapter();
            }
        });
        this.footerAdapter = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListAdapter>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$folderListAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListAdapter invoke() {
                return new NoteListAdapter(true);
            }
        });
        this.folderListAdapter = lazy4;
        this.adapterHelper = new QuickAdapterHelper.Builder(m43091A0()).build();
        this.compositeDisposable = new CompositeDisposable();
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<GridLayoutManager>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$gridLayoutManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GridLayoutManager invoke() {
                return new GridLayoutManager(FragmentNoteFolderRoot.this.requireContext(), 1);
            }
        });
        this.gridLayoutManager = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new FragmentNoteFolderRoot$hideGoTopRunnable$2(this));
        this.hideGoTopRunnable = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new FragmentNoteFolderRoot$updateNoteListViewRunnable$2(this));
        this.updateNoteListViewRunnable = lazy7;
        this.scrollTop = true;
        this.onDragListener = new FragmentNoteFolderRoot$onDragListener$1(this);
    }

    /* renamed from: K0 */
    public static final void m43080K0(LoadingDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* renamed from: T0 */
    public static final void m43081T0(FragmentNoteFolderRoot this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43113Y0();
    }

    /* renamed from: r0 */
    public static /* synthetic */ void m43087r0(FragmentNoteFolderRoot fragmentNoteFolderRoot, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        fragmentNoteFolderRoot.m43117q0(z);
    }

    /* renamed from: s0 */
    public static final void m43088s0(FragmentNoteFolderRoot this$0, boolean z) {
        Map mapOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ResManager resManager = ResManager.INSTANCE;
        float screenWidth = resManager.getScreenWidth() - (resManager.getDimension(C10651R.dimen.note_list_horizontal_margin) * 2);
        float dimension = resManager.getDimension(C10651R.dimen.note_list_left_container_width);
        int measuredWidth = this$0.m43122z0().f56746rv.getMeasuredWidth();
        if (Intrinsics.areEqual(this$0.m43097G0().isShowSlideMenu().getValue(), Boolean.TRUE)) {
            screenWidth -= dimension;
        }
        int i = (int) screenWidth;
        if (i <= 0) {
            return;
        }
        int spanCount = this$0.m43093C0().getSpanCount();
        if (measuredWidth != i) {
            RecyclerView rv = this$0.m43122z0().f56746rv;
            Intrinsics.checkNotNullExpressionValue(rv, "rv");
            ViewGroup.LayoutParams layoutParams = rv.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.width = i;
            rv.setLayoutParams(layoutParams);
        }
        if (this$0.m43097G0().getDisplayType().getValue() == NoteDisplayType.DISPLAY_GRID) {
            int m43095E0 = this$0.m43095E0(i);
            if (this$0.m43093C0().getSpanCount() != m43095E0) {
                this$0.m43093C0().setSpanCount(m43095E0);
            }
        } else if (this$0.m43093C0().getSpanCount() != 1) {
            this$0.m43093C0().setSpanCount(1);
        }
        if (spanCount == this$0.m43093C0().getSpanCount() && measuredWidth == i) {
            return;
        }
        if (z) {
            this$0.m43091A0().notifyDataSetChanged();
            return;
        }
        if (this$0.m43110V0()) {
            RecyclerView rv2 = this$0.m43122z0().f56746rv;
            Intrinsics.checkNotNullExpressionValue(rv2, "rv");
            ViewKt.repostDelayed(rv2, this$0.m43096F0(), 50L);
        }
        NoteListAdapter m43091A0 = this$0.m43091A0();
        int itemCount = this$0.m43091A0().getItemCount();
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to("pay_load_key_refresh_view", TAG));
        m43091A0.notifyItemRangeChanged(0, itemCount, mapOf);
    }

    /* renamed from: u0 */
    public static final void m43089u0(FragmentNoteFolderRoot this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView rv = this$0.m43122z0().f56746rv;
        Intrinsics.checkNotNullExpressionValue(rv, "rv");
        int measuredHeight = rv.getMeasuredHeight() - (rv.getPaddingTop() + rv.getPaddingBottom());
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C10651R.dimen.folder_gird_item_height);
        if (this$0.m43097G0().getDisplayType().getValue() != NoteDisplayType.DISPLAY_GRID) {
            dimens = resManager.getDimens(C10651R.dimen.folder_linear_item_height);
        }
        int i = (measuredHeight / dimens) * 2;
        this$0.showGoTopRowCount = i;
        if (measuredHeight % dimens != 0) {
            this$0.showGoTopRowCount = i + 1;
        }
    }

    /* renamed from: w0 */
    public static final void m43090w0(LoadingDialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* renamed from: A0 */
    public final NoteListAdapter m43091A0() {
        return (NoteListAdapter) this.folderListAdapter.getValue();
    }

    /* renamed from: B0 */
    public final NoteListFooterAdapter m43092B0() {
        return (NoteListFooterAdapter) this.footerAdapter.getValue();
    }

    /* renamed from: C0 */
    public final GridLayoutManager m43093C0() {
        return (GridLayoutManager) this.gridLayoutManager.getValue();
    }

    /* renamed from: D0 */
    public final Runnable m43094D0() {
        return (Runnable) this.hideGoTopRunnable.getValue();
    }

    /* renamed from: E0 */
    public final int m43095E0(int totalWidth) {
        int coerceAtLeast;
        ResManager resManager = ResManager.INSTANCE;
        float dimension = resManager.getDimension(C10651R.dimen.folder_gird_item_max_width);
        float dimension2 = resManager.getDimension(C10651R.dimen.note_grid_divider_min_width);
        float f = totalWidth;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast((int) (f / dimension), 1);
        while ((f - (coerceAtLeast * dimension)) - ((coerceAtLeast - 1) * dimension2) < 0.0f && coerceAtLeast > 1) {
            coerceAtLeast--;
        }
        return coerceAtLeast;
    }

    /* renamed from: F0 */
    public final Runnable m43096F0() {
        return (Runnable) this.updateNoteListViewRunnable.getValue();
    }

    /* renamed from: G0 */
    public final NoteListViewModel m43097G0() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: H0 */
    public final void m43098H0(NoteModelBean noteModel) {
        EditTagForNoteContext editTagForNoteContext = new EditTagForNoteContext();
        editTagForNoteContext.getSelectTagIds().addAll(noteModel.getTagIdList());
        editTagForNoteContext.setNoteModelBean(noteModel);
        EditTagForNoteAction editTagForNoteAction = new EditTagForNoteAction(editTagForNoteContext, TAG);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        editTagForNoteAction.setActivityContext(requireContext).build().subscribe();
    }

    /* renamed from: I0 */
    public final void m43099I0(NoteModelBean noteListModelBean, int pos) {
        m43091A0().updateSelect(m43097G0().toggleSelectList(noteListModelBean), pos);
    }

    /* renamed from: J0 */
    public final void m43100J0(SyncNoteModel syncNoteModel) {
        List mutableListOf;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(requireContext);
        createLoadingDialog.updateTitle(C10651R.string.option_copying);
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        String parentUniqueId = syncNoteModel.getParentUniqueId();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(syncNoteModel);
        Disposable subscribe = new CopyNoteListAction(requireContext2, parentUniqueId, mutableListOf).build().doOnSubscribe(new C11248e(createLoadingDialog)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.yug
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                FragmentNoteFolderRoot.m43080K0(LoadingDialog.this);
            }
        }).subscribe(new C11249f());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: L0 */
    public final void m43101L0(SyncNoteModel syncNoteModel) {
        List mutableListOf;
        int collectionSizeOrDefault;
        List mutableListOf2;
        if (syncNoteModel.isDocument()) {
            mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(syncNoteModel.getUniqueId());
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            Disposable subscribe = new DeleteListNoteAction(requireContext, mutableListOf2, mutableListOf2).build().subscribe();
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
            this.compositeDisposable.add(subscribe);
            return;
        }
        String title = syncNoteModel.getTitle();
        Intrinsics.checkNotNull(title);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(syncNoteModel.getUniqueId());
        TreeNode<NoteModelBean> value = m43097G0().getFolderRootNode().getValue();
        TreeNode<NoteModelBean> findNode = value != null ? value.findNode(syncNoteModel.getUniqueId()) : null;
        if (findNode != null) {
            List<TreeNode<NoteModelBean>> findChildrenNodes = findNode.findChildrenNodes();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = findChildrenNodes.iterator();
            while (it2.hasNext()) {
                arrayList.add(((NoteModelBean) ((TreeNode) it2.next()).getData()).getUniqueId());
            }
            mutableListOf.addAll(arrayList);
        }
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        Disposable subscribe2 = new DeleteFolderAction(requireContext2, title, mutableListOf).build().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe2, "subscribe(...)");
        this.compositeDisposable.add(subscribe2);
    }

    /* renamed from: M0 */
    public final void m43102M0(SyncNoteModel syncNoteModel) {
        if (syncNoteModel.isDocument()) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            Disposable subscribe = new EditListNoteAction(requireContext, syncNoteModel).create().subscribe(C11250g.f54596e);
            Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
            this.compositeDisposable.add(subscribe);
            return;
        }
        TreeNode<NoteModelBean> value = m43097G0().getFolderRootNode().getValue();
        Intrinsics.checkNotNull(value);
        TreeNode<NoteModelBean> findNode = value.findNode(syncNoteModel.getUniqueId());
        Intrinsics.checkNotNull(findNode);
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
        new EditFolderDialog(requireContext2, findNode, TAG).show();
    }

    /* renamed from: N0 */
    public final void m43103N0(SyncNoteModel syncNoteModel) {
        List<? extends SyncNoteModel> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel);
        m43114Z0(listOf);
    }

    /* renamed from: O0 */
    public final void m43104O0(NoteModelBean noteModelBean) {
        List<String> listOf;
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        noteModelBeanList.add(noteModelBean);
        ManageFolderContext manageFolderContext = new ManageFolderContext();
        manageFolderContext.setOldParentId(noteModelBean.getParentUniqueId());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteModelBean.getUniqueId());
        manageFolderContext.setOpNoteIds(listOf);
        manageFolderContext.setMoveNoteList(noteModelBeanList);
        CompositeDisposable compositeDisposable = this.compositeDisposable;
        MoveToSelectFolderAction moveToSelectFolderAction = new MoveToSelectFolderAction(manageFolderContext, TAG);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        compositeDisposable.add(moveToSelectFolderAction.setActivityContext(requireContext).build().subscribe());
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: P0 */
    public final void m43105P0() {
        Function3<BaseQuickAdapter<NoteModelBean, ?>, View, Integer, Unit> function3 = new Function3<BaseQuickAdapter<NoteModelBean, ?>, View, Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initAdapter$openClickCallback$1

            /* renamed from: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initAdapter$openClickCallback$1$a */
            /* loaded from: classes9.dex */
            public static final class C11253a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ NoteModelBean f54599e;

                public C11253a(NoteModelBean noteModelBean) {
                    this.f54599e = noteModelBean;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull UpdateNoteExpandStatusAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    DocCollectionBundle.INSTANCE.postEvent(new ExpandParentFolderEvent(this.f54599e.getUniqueId()));
                }
            }

            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(BaseQuickAdapter<NoteModelBean, ?> baseQuickAdapter, View view, Integer num) {
                invoke(baseQuickAdapter, view, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull BaseQuickAdapter<NoteModelBean, ?> adapter, @NotNull View v, int i) {
                NoteListViewModel m43097G0;
                NoteListViewModel m43097G02;
                NoteListViewModel m43097G03;
                List listOf;
                Intrinsics.checkNotNullParameter(adapter, "adapter");
                Intrinsics.checkNotNullParameter(v, "v");
                NoteListAdapter noteListAdapter = (NoteListAdapter) adapter;
                NoteModelBean item = noteListAdapter.getItem(i);
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item;
                m43097G0 = FragmentNoteFolderRoot.this.m43097G0();
                if (Intrinsics.areEqual(m43097G0.isMulSelect().getValue(), Boolean.FALSE)) {
                    m43097G03 = FragmentNoteFolderRoot.this.m43097G0();
                    m43097G03.gotoFolder(noteModelBean.getUniqueId());
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(noteModelBean.getUniqueId());
                    new UpdateNoteExpandStatusAction(listOf, 1).build().subscribe(new C11253a(noteModelBean));
                    return;
                }
                m43097G02 = FragmentNoteFolderRoot.this.m43097G0();
                noteListAdapter.updateSelect(m43097G02.toggleSelectList(noteModelBean), i);
            }
        };
        Function3<BaseQuickAdapter<NoteModelBean, ?>, View, Integer, Unit> function32 = new Function3<BaseQuickAdapter<NoteModelBean, ?>, View, Integer, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initAdapter$optionClickCallback$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(BaseQuickAdapter<NoteModelBean, ?> baseQuickAdapter, View view, Integer num) {
                invoke(baseQuickAdapter, view, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull BaseQuickAdapter<NoteModelBean, ?> adapter, @NotNull View v, int i) {
                NoteListViewModel m43097G0;
                NoteListViewModel m43097G02;
                Intrinsics.checkNotNullParameter(adapter, "adapter");
                Intrinsics.checkNotNullParameter(v, "v");
                NoteListAdapter noteListAdapter = (NoteListAdapter) adapter;
                NoteModelBean item = noteListAdapter.getItem(i);
                Intrinsics.checkNotNull(item);
                NoteModelBean noteModelBean = item;
                m43097G0 = FragmentNoteFolderRoot.this.m43097G0();
                if (Intrinsics.areEqual(m43097G0.isMulSelect().getValue(), Boolean.FALSE)) {
                    FragmentNoteFolderRoot.this.m43115a1(v, noteModelBean);
                } else {
                    m43097G02 = FragmentNoteFolderRoot.this.m43097G0();
                    noteListAdapter.updateSelect(m43097G02.toggleSelectList(noteModelBean), i);
                }
            }
        };
        m43091A0().addOnItemChildClickListener(C10651R.id.v_click_open, new C11254j(function3));
        m43091A0().addOnItemChildClickListener(C10651R.id.v_click_option, new C11254j(function32));
        if (this.adapterHelper.getAfterAdapterList().isEmpty()) {
            this.adapterHelper.addAfterAdapter(m43092B0());
        }
    }

    /* renamed from: Q0 */
    public final void m43106Q0() {
        m43111W0();
    }

    /* renamed from: R0 */
    public final void m43107R0() {
        m43122z0().includeEmptyView.setEmptyBean(CommonEmptyView.INSTANCE.getFOLDER_ROOT_EMPTY_BEAN());
    }

    /* renamed from: S0 */
    public final void m43108S0() {
        m43087r0(this, false, 1, null);
        m43118t0();
        m43122z0().f56746rv.setLayoutManager(m43093C0());
        m43122z0().f56746rv.setAdapter(this.adapterHelper.getMAdapter());
        m43122z0().f56746rv.addItemDecoration(new GridDividerItemDecoration(0, 0, false, false, 0, 31, null));
        m43122z0().getRoot().setOnDragListener(new NoteListDragListener());
        ShadowLayout slGoTop = m43122z0().slGoTop;
        Intrinsics.checkNotNullExpressionValue(slGoTop, "slGoTop");
        com.onyx.android.sdk.extension.ViewKt.click$default(slGoTop, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zug
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentNoteFolderRoot.m43081T0(FragmentNoteFolderRoot.this, view);
            }
        }, 1, null);
        m43122z0().f56746rv.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initView$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int newState) {
                FragmentNoteFolderRootBinding m43122z0;
                Runnable m43094D0;
                FragmentNoteFolderRootBinding m43122z02;
                FragmentNoteFolderRootBinding m43122z03;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                long integer = ResManager.INSTANCE.getInteger(C10651R.integer.hide_list_go_top_delay);
                m43122z0 = FragmentNoteFolderRoot.this.m43122z0();
                RecyclerView rv = m43122z0.f56746rv;
                Intrinsics.checkNotNullExpressionValue(rv, "rv");
                m43094D0 = FragmentNoteFolderRoot.this.m43094D0();
                ViewKt.repostDelayed(rv, m43094D0, integer);
                FragmentNoteFolderRoot fragmentNoteFolderRoot = FragmentNoteFolderRoot.this;
                m43122z02 = fragmentNoteFolderRoot.m43122z0();
                fragmentNoteFolderRoot.scrollTop = !m43122z02.f56746rv.canScrollVertically(-1);
                FragmentNoteFolderRoot fragmentNoteFolderRoot2 = FragmentNoteFolderRoot.this;
                m43122z03 = fragmentNoteFolderRoot2.m43122z0();
                fragmentNoteFolderRoot2.scrollBottom = !m43122z03.f56746rv.canScrollVertically(1);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView, int dx, int dy) {
                FragmentNoteFolderRootBinding m43122z0;
                int i;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if (dy > 0) {
                    i = FragmentNoteFolderRoot.this.showGoTopRowCount;
                    if (i > 0) {
                        FragmentNoteFolderRoot.this.m43116b1();
                        return;
                    }
                }
                m43122z0 = FragmentNoteFolderRoot.this.m43122z0();
                ShadowLayout slGoTop2 = m43122z0.slGoTop;
                Intrinsics.checkNotNullExpressionValue(slGoTop2, "slGoTop");
                slGoTop2.setVisibility(8);
            }
        });
        m43122z0().vScrollDown.setOnDragListener(this.onDragListener);
        m43122z0().vScrollUp.setOnDragListener(this.onDragListener);
        m43122z0().f56746rv.addOnItemTouchListener(new RecyclerViewSwipeListener() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initView$3
            @Override // com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener
            public boolean isEnableSwipe() {
                NoteListViewModel m43097G0;
                m43097G0 = FragmentNoteFolderRoot.this.m43097G0();
                return !Intrinsics.areEqual(m43097G0.isMulSelect().getValue(), Boolean.TRUE);
            }

            @Override // com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener
            public void updateChangeItems(@NotNull List<Integer> positionList) {
                NoteListAdapter m43091A0;
                Intrinsics.checkNotNullParameter(positionList, "positionList");
                FragmentNoteFolderRoot fragmentNoteFolderRoot = FragmentNoteFolderRoot.this;
                Iterator<T> it2 = positionList.iterator();
                while (it2.hasNext()) {
                    int intValue = ((Number) it2.next()).intValue();
                    m43091A0 = fragmentNoteFolderRoot.m43091A0();
                    NoteModelBean item = m43091A0.getItem(intValue);
                    if (item != null) {
                        fragmentNoteFolderRoot.m43099I0(item, intValue);
                    }
                }
            }
        });
        m43107R0();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: U0 */
    public final void m43109U0() {
        m43097G0().getDisplayType().observe(requireActivity(), new C11252i(new FragmentNoteFolderRoot$initViewModel$1(this)));
        m43097G0().isMulSelect().observe(requireActivity(), new C11252i(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteListViewModel m43097G0;
                NoteListAdapter m43091A0;
                NoteListAdapter m43091A02;
                NoteListAdapter m43091A03;
                NoteListViewModel m43097G02;
                m43097G0 = FragmentNoteFolderRoot.this.m43097G0();
                if (m43097G0.isFilterRootFolder()) {
                    m43091A02 = FragmentNoteFolderRoot.this.m43091A0();
                    Intrinsics.checkNotNull(bool);
                    m43091A02.enableMulSelect(bool.booleanValue());
                    if (bool.booleanValue()) {
                        return;
                    }
                    m43091A03 = FragmentNoteFolderRoot.this.m43091A0();
                    m43091A03.getSelectionList().clear();
                    m43097G02 = FragmentNoteFolderRoot.this.m43097G0();
                    m43097G02.getSelectList().setValue(new NoteModelBeanList());
                    return;
                }
                m43091A0 = FragmentNoteFolderRoot.this.m43091A0();
                m43091A0.enableMulSelect(false);
            }
        }));
        m43097G0().getFolderRootListData().observe(requireActivity(), new C11252i(new Function1<NoteModelBeanList, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initViewModel$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteModelBeanList noteModelBeanList) {
                invoke2(noteModelBeanList);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteModelBeanList noteModelBeanList) {
                NoteListAdapter m43091A0;
                NoteListViewModel m43097G0;
                NoteListAdapter m43091A02;
                m43091A0 = FragmentNoteFolderRoot.this.m43091A0();
                m43097G0 = FragmentNoteFolderRoot.this.m43097G0();
                m43091A0.setSelectedTagId(m43097G0.getTagIdOp().get());
                m43091A02 = FragmentNoteFolderRoot.this.m43091A0();
                m43091A02.submitList(noteModelBeanList);
            }
        }));
        m43097G0().getSortType().observe(requireActivity(), new C11252i(new Function1<SortBy, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initViewModel$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SortBy sortBy) {
                invoke2(sortBy);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SortBy sortBy) {
                NoteListAdapter m43091A0;
                NoteListAdapter m43091A02;
                m43091A0 = FragmentNoteFolderRoot.this.m43091A0();
                m43091A0.setShowUpdateAt(sortBy != SortBy.CreationTime);
                m43091A02 = FragmentNoteFolderRoot.this.m43091A0();
                Intrinsics.checkNotNull(sortBy);
                m43091A02.setSortBy(sortBy);
            }
        }));
        m43097G0().getSelectList().observe(requireActivity(), new C11252i(new Function1<NoteModelBeanList, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initViewModel$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteModelBeanList noteModelBeanList) {
                invoke2(noteModelBeanList);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteModelBeanList noteModelBeanList) {
                NoteListAdapter m43091A0;
                m43091A0 = FragmentNoteFolderRoot.this.m43091A0();
                Intrinsics.checkNotNull(noteModelBeanList);
                m43091A0.setSelectionList(noteModelBeanList);
            }
        }));
        m43097G0().isLoadingList().observe(requireActivity(), new C11252i(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initViewModel$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                NoteListViewModel m43097G0;
                FragmentNoteFolderRootBinding m43122z0;
                m43097G0 = FragmentNoteFolderRoot.this.m43097G0();
                NoteModelBeanList value = m43097G0.getFolderRootListData().getValue();
                boolean z = !bool.booleanValue() && (value != null && value.isEmpty());
                m43122z0 = FragmentNoteFolderRoot.this.m43122z0();
                CommonEmptyView includeEmptyView = m43122z0.includeEmptyView;
                Intrinsics.checkNotNullExpressionValue(includeEmptyView, "includeEmptyView");
                includeEmptyView.setVisibility(z ^ true ? 4 : 0);
            }
        }));
        m43097G0().isShowSlideMenu().observe(requireActivity(), new C11252i(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$initViewModel$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                FragmentNoteFolderRoot.m43087r0(FragmentNoteFolderRoot.this, false, 1, null);
                FragmentNoteFolderRoot.this.m43118t0();
            }
        }));
    }

    /* renamed from: V0 */
    public final boolean m43110V0() {
        return m43097G0().isFilterRootFolder();
    }

    /* renamed from: W0 */
    public final void m43111W0() {
        m43097G0().initList();
    }

    /* renamed from: X0 */
    public final void m43112X0() {
        int collectionSizeOrDefault;
        NoteModelBeanList value = m43097G0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getUniqueId());
        }
        ManageFolderContext manageFolderContext = new ManageFolderContext();
        manageFolderContext.setOldParentId(null);
        manageFolderContext.setOpNoteIds(arrayList);
        NoteModelBeanList value2 = m43097G0().getSelectList().getValue();
        Intrinsics.checkNotNull(value2);
        manageFolderContext.setMoveNoteList(value2);
        CompositeDisposable compositeDisposable = this.compositeDisposable;
        MoveToSelectFolderAction moveToSelectFolderAction = new MoveToSelectFolderAction(manageFolderContext, TAG);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        compositeDisposable.add(moveToSelectFolderAction.setActivityContext(requireContext).build().doOnNext(C11251h.f54597e).subscribe());
    }

    /* renamed from: Y0 */
    public final void m43113Y0() {
        m43122z0().f56746rv.smoothScrollBy(0, -m43122z0().f56746rv.computeVerticalScrollRange(), null, ResManager.INSTANCE.getInteger(C10651R.integer.list_go_top_animate_duration));
    }

    /* renamed from: Z0 */
    public final void m43114Z0(List<? extends SyncNoteModel> list) {
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteExportDialog noteExportDialog = new NoteExportDialog(docManagerBundle, requireContext, NoteExportArgs.INSTANCE.toNoteExportArgsList(list));
        noteExportDialog.setListener(new NoteExportDialog.ExportListener() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$showExportDialog$1$1
            @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportDialog.ExportListener
            public void onFileExported(@NotNull String filePath) {
                Intrinsics.checkNotNullParameter(filePath, "filePath");
                DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            }
        });
        noteExportDialog.show();
    }

    /* renamed from: a1 */
    public final void m43115a1(View v, NoteModelBean model) {
        NoteListOpPopup.NoteOperateListener noteOperateListener = new NoteListOpPopup.NoteOperateListener() { // from class: com.onyx.galaxy.note.category.ui.FragmentNoteFolderRoot$showNoteOpPopup$noteOperateListener$1
            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void addTagsToNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                FragmentNoteFolderRoot.this.m43098H0(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void changeNoteTemplate(@NotNull NoteModelBean noteModelBean) {
                NoteListOpPopup.NoteOperateListener.DefaultImpls.changeNoteTemplate(this, noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void copyNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                FragmentNoteFolderRoot.this.m43100J0(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void deleteNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                FragmentNoteFolderRoot.this.m43101L0(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void editNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                FragmentNoteFolderRoot.this.m43102M0(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void exportNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                FragmentNoteFolderRoot.this.m43103N0(noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void modifyNoteLock(@NotNull NoteModelBean noteModelBean) {
                NoteListOpPopup.NoteOperateListener.DefaultImpls.modifyNoteLock(this, noteModelBean);
            }

            @Override // com.onyx.galaxy.note.category.ui.NoteListOpPopup.NoteOperateListener
            public void moveNote(@NotNull NoteModelBean noteModelBean) {
                Intrinsics.checkNotNullParameter(noteModelBean, "noteModelBean");
                FragmentNoteFolderRoot.this.m43104O0(noteModelBean);
            }
        };
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        NoteListOpPopup noteListOpPopup = new NoteListOpPopup(requireContext, model, noteOperateListener);
        View root = m43122z0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Rect windowVisibleRect = ViewKt.windowVisibleRect(root);
        NoteDisplayType value = m43097G0().getDisplayType().getValue();
        noteListOpPopup.showCenterPositionPopView(v, windowVisibleRect, value != null ? Boolean.valueOf(value.isGrid()) : null);
    }

    /* renamed from: b1 */
    public final void m43116b1() {
        if (this.showGoTopRowCount <= 0) {
            ShadowLayout slGoTop = m43122z0().slGoTop;
            Intrinsics.checkNotNullExpressionValue(slGoTop, "slGoTop");
            slGoTop.setVisibility(8);
            return;
        }
        boolean z = m43093C0().findLastVisibleItemPosition() / m43093C0().getSpanCount() >= this.showGoTopRowCount;
        if (z) {
            ShadowLayout slGoTop2 = m43122z0().slGoTop;
            Intrinsics.checkNotNullExpressionValue(slGoTop2, "slGoTop");
            if (!(slGoTop2.getVisibility() == 0)) {
                View root = m43122z0().getRoot();
                Intrinsics.checkNotNull(root, "null cannot be cast to non-null type android.view.ViewGroup");
                TransitionManager.beginDelayedTransition((ViewGroup) root, new MaterialFade());
                ShadowLayout slGoTop3 = m43122z0().slGoTop;
                Intrinsics.checkNotNullExpressionValue(slGoTop3, "slGoTop");
                slGoTop3.setVisibility(0);
            }
        }
        if (z) {
            return;
        }
        ShadowLayout slGoTop4 = m43122z0().slGoTop;
        Intrinsics.checkNotNullExpressionValue(slGoTop4, "slGoTop");
        if (slGoTop4.getVisibility() == 0) {
            View root2 = m43122z0().getRoot();
            Intrinsics.checkNotNull(root2, "null cannot be cast to non-null type android.view.ViewGroup");
            TransitionManager.beginDelayedTransition((ViewGroup) root2, new MaterialFade());
            ShadowLayout slGoTop5 = m43122z0().slGoTop;
            Intrinsics.checkNotNullExpressionValue(slGoTop5, "slGoTop");
            slGoTop5.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    @SuppressLint({"NotifyDataSetChanged"})
    public final void onActiveNoteListAnimateFinishedEvent(@NotNull ActiveNoteListAnimateFinishedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            return;
        }
        m43087r0(this, false, 1, null);
        m43118t0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m43122z0().f56746rv.setAdapter(this.adapterHelper.getMAdapter());
        m43087r0(this, false, 1, null);
        m43118t0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063325, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateQuicklyFolderEvent(@NotNull NCreateNoteFolderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new CreateSubFolderDialog(requireContext, m43097G0().findFolder(m43097G0().getNormalizedFolderId()), FolderCreateFrom.HOME_LIST_ITEM_HEADER_CREATE).show();
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43122z0().setLifecycleOwner(getViewLifecycleOwner());
        m43122z0().setViewModel(m43097G0());
        View root = m43122z0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportImageUrisEvent(@NotNull ImportImageUrisEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            NoteListViewModel.importImages$default(m43097G0(), event.getUriList(), NoteCreateFrom.IMPORT_FILE, null, 4, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportUriDocumentsEvent(@NotNull ImportDocumentUrisEvent event) {
        FragmentActivity activity;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0() && (activity = getActivity()) != null) {
            m43097G0().importDocuments(activity, event.getUriList(), event.getImportSelectedContext());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiCopyEvent(@NotNull MultiCopyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            m43119v0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiDeleteEvent(@NotNull MultiDeleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            m43120x0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiExportEvent(@NotNull MultiExportEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            m43121y0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMultiMoveEvent(@NotNull MultiMoveEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            m43112X0();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteListDragEndEvent(@NotNull NoteListDragEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            m43091A0().resetDragView();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSyncNoteProgressChangedEvent(@NotNull SyncNoteProgressChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43091A0().handleSyncNoteProgressChangedEvent(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onToggleSelectAllEvent(@NotNull ToggleSelectAllEvent event) {
        boolean z;
        Map mutableMapOf;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m43110V0()) {
            if (CollectionKt.isNullOrEmpty(m43097G0().getSelectList().getValue())) {
                m43097G0().getSelectList().setValue(m43097G0().getFolderRootListData().getValue());
                z = true;
            } else {
                m43097G0().getSelectList().setValue(new NoteModelBeanList());
                z = false;
            }
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("pay_load_key_selected", Boolean.valueOf(z)));
            m43091A0().notifyItemRangeChanged(0, m43091A0().getItemCount(), mutableMapOf);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m43109U0();
        m43106Q0();
        m43105P0();
        m43108S0();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: q0 */
    public final void m43117q0(final boolean notifyAllDataChanged) {
        if (isAdded()) {
            m43122z0().f56746rv.post(new Runnable() { // from class: com.sunia.HTREnginev2.bvg
                @Override // java.lang.Runnable
                public final void run() {
                    FragmentNoteFolderRoot.m43088s0(FragmentNoteFolderRoot.this, notifyAllDataChanged);
                }
            });
        }
    }

    /* renamed from: t0 */
    public final void m43118t0() {
        m43122z0().f56746rv.post(new Runnable() { // from class: com.sunia.HTREnginev2.cvg
            @Override // java.lang.Runnable
            public final void run() {
                FragmentNoteFolderRoot.m43089u0(FragmentNoteFolderRoot.this);
            }
        });
    }

    /* renamed from: v0 */
    public final void m43119v0() {
        int collectionSizeOrDefault;
        List mutableList;
        NoteModelBeanList value = m43097G0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        if (mutableList.isEmpty()) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
            return;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(requireContext);
        createLoadingDialog.updateTitle(C10651R.string.option_copying);
        Disposable subscribe = Observable.fromIterable(mutableList).concatMap(new C11244a()).takeLast(1).doOnSubscribe(new C11245b(createLoadingDialog)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.avg
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                FragmentNoteFolderRoot.m43090w0(LoadingDialog.this);
            }
        }).subscribe(new C11246c());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: x0 */
    public final void m43120x0() {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        List<String> mutableList2;
        int collectionSizeOrDefault3;
        List mutableList3;
        int collectionSizeOrDefault4;
        NoteModelBeanList value = m43097G0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ArrayList arrayList2 = new ArrayList();
        List list = mutableList;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list) {
            if (((NoteModelBean) obj).isLibrary()) {
                arrayList3.add(obj);
            }
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((NoteModelBean) it3.next()).getUniqueId());
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList4);
        ArrayList arrayList5 = new ArrayList();
        for (Object obj2 : list) {
            if (((NoteModelBean) obj2).isDocument()) {
                arrayList5.add(obj2);
            }
        }
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList5, 10);
        ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault3);
        Iterator it4 = arrayList5.iterator();
        while (it4.hasNext()) {
            arrayList6.add(((NoteModelBean) it4.next()).getUniqueId());
        }
        mutableList3 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList6);
        arrayList2.addAll(mutableList2);
        Iterator<T> it5 = m43097G0().findFolders(mutableList2).iterator();
        while (it5.hasNext()) {
            List findChildrenNodes = ((TreeNode) it5.next()).findChildrenNodes();
            ArrayList arrayList7 = new ArrayList();
            Iterator it6 = findChildrenNodes.iterator();
            while (it6.hasNext()) {
                String id = ((TreeNode) it6.next()).getId();
                if (id != null) {
                    arrayList7.add(id);
                }
            }
            arrayList2.addAll(arrayList7);
        }
        ArrayList arrayList8 = new ArrayList();
        arrayList8.addAll(mutableList3);
        arrayList8.addAll(arrayList2);
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList9 = new ArrayList(collectionSizeOrDefault4);
        Iterator it7 = list.iterator();
        while (it7.hasNext()) {
            arrayList9.add(((NoteModelBean) it7.next()).getUniqueId());
        }
        Disposable subscribe = new DeleteListNoteAction(requireContext, arrayList8, arrayList9).create().subscribe(C11247d.f54593e);
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: y0 */
    public final void m43121y0() {
        int collectionSizeOrDefault;
        NoteModelBeanList value = m43097G0().getSelectList().getValue();
        Intrinsics.checkNotNull(value);
        NoteModelBeanList noteModelBeanList = value;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(noteModelBeanList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        if (arrayList.isEmpty()) {
            DocCollectionBundle.INSTANCE.postEvent(new ResetMultiOptionMenuEvent());
        } else {
            m43114Z0(arrayList);
        }
    }

    /* renamed from: z0 */
    public final FragmentNoteFolderRootBinding m43122z0() {
        return (FragmentNoteFolderRootBinding) this.binding.getValue();
    }
}
