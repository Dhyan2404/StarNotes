package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.data.FolderCreateFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.TagCreateFrom;
import com.onyx.android.sdk.data.account.event.UpdateAvatarEvent;
import com.onyx.android.sdk.replicator.event.LoginOnyxAccountEvent;
import com.onyx.android.sdk.replicator.event.LogoutOnyxAccountEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.event.OnDeleteNoteEvent;
import com.onyx.galaxy.note.category.event.OnDeleteTagEvent;
import com.onyx.galaxy.note.category.p044ui.NoteListDrawerFunctionFragment;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.dialog.CreateFolderDialog;
import com.onyx.galaxy.note.category.view.dialog.CreateTagDialog;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentNoteListDrawerFunctionBinding;
import com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding;
import com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b*\u0001>\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bH\u0010IJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0011\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0012\u0010\u0017\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0007J\u0010\u0010'\u001a\u00020\u00022\u0006\u0010$\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010$\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010$\u001a\u00020*H\u0007J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010$\u001a\u00020,H\u0007R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00100\u001a\u0004\b;\u0010<R\u0014\u0010A\u001a\u00020>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010D¨\u0006J"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListDrawerFunctionFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "F0", "y0", "q0", "r0", "H0", "E0", "I0", "G0", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "filter", "x0", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "nodes", "s0", "", "deleteId", "t0", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;", NotificationCompat.CATEGORY_EVENT, "onDeleteNoteEvent", "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;", "onDeleteTagEvent", "Lcom/onyx/android/sdk/data/account/event/UpdateAvatarEvent;", "onUpdateAvatarEvent", "Lcom/onyx/android/sdk/replicator/event/LoginOnyxAccountEvent;", "onLoginOnyxAccountEvent", "Lcom/onyx/android/sdk/replicator/event/LogoutOnyxAccountEvent;", "onLogoutOnyxAccountEvent", "Lcom/onyx/galaxy/note/databinding/FragmentNoteListDrawerFunctionBinding;", "d1", "Lkotlin/Lazy;", "u0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListDrawerFunctionBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "e1", "w0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;", "f1", "v0", "()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;", "filterAdapter", "com/onyx/galaxy/note/category/ui/NoteListDrawerFunctionFragment$onDragListener$1", "g1", "Lcom/onyx/galaxy/note/category/ui/NoteListDrawerFunctionFragment$onDragListener$1;", "onDragListener", "", "h1", Constants.HASIDCALL_INDEX_SIG, "scrollTop", "i1", "scrollBottom", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListDrawerFunctionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListDrawerFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListDrawerFunctionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n766#2:346\n857#2,2:347\n1549#2:349\n1620#2,3:350\n350#2,7:353\n1549#2:360\n1620#2,3:361\n350#2,7:364\n*S KotlinDebug\n*F\n+ 1 NoteListDrawerFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListDrawerFunctionFragment\n*L\n290#1:346\n290#1:347,2\n294#1:349\n294#1:350,3\n297#1:353,7\n332#1:360\n332#1:361,3\n334#1:364,7\n*E\n"})
/* loaded from: classes17.dex */
public final class NoteListDrawerFunctionFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy filterAdapter;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final NoteListDrawerFunctionFragment$onDragListener$1 onDragListener;

    /* renamed from: h1, reason: from kotlin metadata */
    public boolean scrollTop;

    /* renamed from: i1, reason: from kotlin metadata */
    public boolean scrollBottom;

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11280a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54694a;

        public C11280a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54694a = function;
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
            return this.f54694a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54694a.invoke(obj);
        }
    }

    public NoteListDrawerFunctionFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteListDrawerFunctionBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteListDrawerFunctionBinding invoke() {
                return FragmentNoteListDrawerFunctionBinding.inflate(NoteListDrawerFunctionFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = NoteListDrawerFunctionFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<FilterAdapter>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$filterAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilterAdapter invoke() {
                NoteListViewModel m43266w0;
                FragmentNoteListDrawerFunctionBinding m43264u0;
                FragmentNoteListDrawerFunctionBinding m43264u02;
                m43266w0 = NoteListDrawerFunctionFragment.this.m43266w0();
                m43264u0 = NoteListDrawerFunctionFragment.this.m43264u0();
                ItemNoteShadowViewLayoutBinding noteShadowView = m43264u0.noteShadowView;
                Intrinsics.checkNotNullExpressionValue(noteShadowView, "noteShadowView");
                m43264u02 = NoteListDrawerFunctionFragment.this.m43264u0();
                ItemTagShadowViewLayoutBinding tagShadowView = m43264u02.tagShadowView;
                Intrinsics.checkNotNullExpressionValue(tagShadowView, "tagShadowView");
                return new FilterAdapter(m43266w0, noteShadowView, tagShadowView);
            }
        });
        this.filterAdapter = lazy3;
        this.onDragListener = new NoteListDrawerFunctionFragment$onDragListener$1(this);
        this.scrollTop = true;
    }

    /* renamed from: A0 */
    public static final void m43245A0(NoteListDrawerFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m43261r0();
    }

    /* renamed from: B0 */
    public static final void m43246B0(NoteListDrawerFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m43266w0().toggleNoteSetExpand();
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, this$0.m43266w0().isNoteSetExpand() ? OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_ALL_EXPAND_CLICK : OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_ALL_COLLAPSE_CLICK, null, 2, null);
        this$0.m43258H0();
    }

    /* renamed from: C0 */
    public static final void m43247C0(NoteListDrawerFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m43266w0().toggleFolderExpand();
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, this$0.m43266w0().isFolderExpand() ? OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_FOLDER_ROOT_EXPAND_CLICK : OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_FOLDER_ROOT_COLLAPSE_CLICK, null, 2, null);
        this$0.m43258H0();
    }

    /* renamed from: D0 */
    public static final void m43248D0(NoteListDrawerFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m43266w0().toggleTagExpand();
        this$0.m43258H0();
    }

    /* renamed from: z0 */
    public static final void m43254z0(NoteListDrawerFunctionFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        StatisticsBundle.reportEvent$default(StatisticsBundle.INSTANCE, OnyxStatisticConstant.ID_HOME_PAGE_FILTER_NOTE_FOLDER_ROOT_CREATE_CLICK, null, 2, null);
        this$0.m43260q0();
    }

    /* renamed from: E0 */
    public final void m43255E0() {
        m43264u0().vScrollDown.setOnDragListener(this.onDragListener);
        m43264u0().vScrollUp.setOnDragListener(this.onDragListener);
        m43264u0().rvFilter.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$initDragScroll$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int newState) {
                FragmentNoteListDrawerFunctionBinding m43264u0;
                FragmentNoteListDrawerFunctionBinding m43264u02;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                NoteListDrawerFunctionFragment noteListDrawerFunctionFragment = NoteListDrawerFunctionFragment.this;
                m43264u0 = noteListDrawerFunctionFragment.m43264u0();
                noteListDrawerFunctionFragment.scrollTop = !m43264u0.rvFilter.canScrollVertically(-1);
                NoteListDrawerFunctionFragment noteListDrawerFunctionFragment2 = NoteListDrawerFunctionFragment.this;
                m43264u02 = noteListDrawerFunctionFragment2.m43264u0();
                noteListDrawerFunctionFragment2.scrollBottom = !m43264u02.rvFilter.canScrollVertically(1);
            }
        });
    }

    /* renamed from: F0 */
    public final void m43256F0() {
        m43268y0();
        m43255E0();
        m43259I0();
    }

    /* renamed from: G0 */
    public final void m43257G0() {
        m43266w0().getFilterInfo().observe(requireActivity(), new C11280a(new Function1<FilterInfo, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FilterInfo filterInfo) {
                invoke2(filterInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(FilterInfo filterInfo) {
                NoteListDrawerFunctionFragment noteListDrawerFunctionFragment = NoteListDrawerFunctionFragment.this;
                Intrinsics.checkNotNull(filterInfo);
                noteListDrawerFunctionFragment.m43267x0(filterInfo);
            }
        }));
        m43266w0().getFilterList().observe(requireActivity(), new C11280a(new Function1<List<? extends FilterInfo>, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$initViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends FilterInfo> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends FilterInfo> list) {
                FilterAdapter m43265v0;
                ArrayList arrayList = new ArrayList();
                Intrinsics.checkNotNull(list);
                arrayList.addAll(list);
                m43265v0 = NoteListDrawerFunctionFragment.this.m43265v0();
                m43265v0.submitList(arrayList);
            }
        }));
    }

    /* renamed from: H0 */
    public final void m43258H0() {
        m43266w0().loadFilterList();
    }

    /* renamed from: I0 */
    public final void m43259I0() {
        m43265v0().notifyItemChanged(0);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        m43264u0().rvFilter.setAdapter(m43265v0());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063320, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43264u0().setLifecycleOwner(getViewLifecycleOwner());
        View root = m43264u0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteNoteEvent(@NotNull OnDeleteNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43262s0(event.getNodes());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTagEvent(@NotNull OnDeleteTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43263t0(event.getNode().getUniqueId());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLoginOnyxAccountEvent(@NotNull LoginOnyxAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43259I0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLogoutOnyxAccountEvent(@NotNull LogoutOnyxAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43259I0();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateAvatarEvent(@NotNull UpdateAvatarEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m43259I0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m43256F0();
        m43257G0();
    }

    /* renamed from: q0 */
    public final void m43260q0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new CreateFolderDialog(requireContext, NoteTreeBundle.INSTANCE.getFolderRootNote(), FolderCreateFrom.HOME_FUNC_ROOT_FOLDER_CREATE).show();
    }

    /* renamed from: r0 */
    public final void m43261r0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new CreateTagDialog(requireContext, NoteTreeBundle.INSTANCE.getTagRootNote(), TagCreateFrom.HOME_FUNC_ROOT_TAG_CREATE).show();
    }

    /* renamed from: s0 */
    public final void m43262s0(List<SyncNoteModel> nodes) {
        int collectionSizeOrDefault;
        FilterInfo value = m43266w0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() != 5) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : nodes) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            TreeNode<NoteModelBean> findNode = NoteTreeBundle.INSTANCE.getFolderRootNote().findNode(((SyncNoteModel) it2.next()).getUniqueId());
            if (findNode != null) {
                List flatten$default = TreeNode.flatten$default(findNode, null, 1, null);
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(flatten$default, 10);
                ArrayList<String> arrayList2 = new ArrayList(collectionSizeOrDefault);
                Iterator it3 = flatten$default.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(((NoteModelBean) ((TreeNode) it3.next()).getData()).getUniqueId());
                }
                for (String str : arrayList2) {
                    Iterator<FilterInfo> it4 = m43265v0().getItems().iterator();
                    int i = 0;
                    while (true) {
                        if (!it4.hasNext()) {
                            i = -1;
                            break;
                        } else if (Intrinsics.areEqual(it4.next().getUniqueId(), str)) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (i != -1) {
                        m43265v0().removeAt(i);
                    }
                }
            }
        }
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            final String uniqueId = ((SyncNoteModel) it5.next()).getUniqueId();
            FilterInfo value2 = m43266w0().getFilterInfo().getValue();
            Intrinsics.checkNotNull(value2);
            final String uniqueId2 = value2.getUniqueId();
            TreeNode<NoteModelBean> findNode2 = NoteTreeBundle.INSTANCE.getFolderRootNote().findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$deleteFolderFromTree$deleteNode$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it6) {
                    Intrinsics.checkNotNullParameter(it6, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it6.getData().getUniqueId(), uniqueId));
                }
            });
            if ((findNode2 != null ? findNode2.findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$deleteFolderFromTree$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it6) {
                    Intrinsics.checkNotNullParameter(it6, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it6.getData().getUniqueId(), uniqueId2));
                }
            }) : null) != null) {
                m43266w0().gotoNoteSet();
                return;
            }
        }
    }

    /* renamed from: t0 */
    public final void m43263t0(final String deleteId) {
        int collectionSizeOrDefault;
        FilterInfo value = m43266w0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value);
        if (value.getType() != 7) {
            return;
        }
        FilterInfo value2 = m43266w0().getFilterInfo().getValue();
        Intrinsics.checkNotNull(value2);
        final String uniqueId = value2.getUniqueId();
        TreeNode<NoteTagBean> findNode = NoteTreeBundle.INSTANCE.getTagRootNote().findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$deleteTagFromTree$deleteTag$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getData().getUniqueId(), deleteId));
            }
        });
        if (findNode == null) {
            return;
        }
        List flatten$default = TreeNode.flatten$default(findNode, null, 1, null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(flatten$default, 10);
        ArrayList<String> arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = flatten$default.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        for (String str : arrayList) {
            Iterator<FilterInfo> it3 = m43265v0().getItems().iterator();
            int i = 0;
            while (true) {
                if (!it3.hasNext()) {
                    i = -1;
                    break;
                } else if (Intrinsics.areEqual(it3.next().getUniqueId(), str)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                m43265v0().removeAt(i);
            }
        }
        if (findNode.findNode(new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.ui.NoteListDrawerFunctionFragment$deleteTagFromTree$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it4) {
                Intrinsics.checkNotNullParameter(it4, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it4.getData().getUniqueId(), uniqueId));
            }
        }) != null) {
            m43266w0().gotoNoteSet();
        }
    }

    /* renamed from: u0 */
    public final FragmentNoteListDrawerFunctionBinding m43264u0() {
        return (FragmentNoteListDrawerFunctionBinding) this.binding.getValue();
    }

    /* renamed from: v0 */
    public final FilterAdapter m43265v0() {
        return (FilterAdapter) this.filterAdapter.getValue();
    }

    /* renamed from: w0 */
    public final NoteListViewModel m43266w0() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: x0 */
    public final void m43267x0(FilterInfo filter) {
        m43265v0().updateSelectId(filter.getUniqueId());
    }

    /* renamed from: y0 */
    public final void m43268y0() {
        FilterAdapter m43265v0 = m43265v0();
        m43265v0.addOnItemChildClickListener(C10651R.id.iv_create_folder, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.uwj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListDrawerFunctionFragment.m43254z0(NoteListDrawerFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43265v0.addOnItemChildClickListener(C10651R.id.iv_create_tag, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.vwj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListDrawerFunctionFragment.m43245A0(NoteListDrawerFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43265v0.addOnItemChildClickListener(C10651R.id.iv_note_series_expand, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.wwj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListDrawerFunctionFragment.m43246B0(NoteListDrawerFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43265v0.addOnItemChildClickListener(C10651R.id.iv_note_folder_expand, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.xwj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListDrawerFunctionFragment.m43247C0(NoteListDrawerFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43265v0.addOnItemChildClickListener(C10651R.id.iv_note_tag_expand, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.ywj
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteListDrawerFunctionFragment.m43248D0(NoteListDrawerFunctionFragment.this, baseQuickAdapter, view, i);
            }
        });
        m43264u0().rvFilter.setAdapter(m43265v0());
    }
}
