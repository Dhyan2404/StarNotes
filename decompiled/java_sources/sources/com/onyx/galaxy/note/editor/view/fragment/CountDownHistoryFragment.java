package com.onyx.galaxy.note.editor.view.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.counter.model.CounterRecordModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentCounterHistoryBinding;
import com.onyx.galaxy.note.editor.view.adapter.CountDownHistoryAdapter;
import com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment;
import com.onyx.galaxy.note.editor.view.popup.CounterHistoryOptionsPopup;
import com.onyx.galaxy.note.editor.viewmodel.CountHistoryViewModel;
import com.onyx.galaxy.note.p048ui.view.ThemeRecyclerView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\b\u0010\u0011\u001a\u00020\u000bH\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0002J\b\u0010\u0013\u001a\u00020\u000bH\u0002J\b\u0010\u0014\u001a\u00020\u000bH\u0002J\b\u0010\u0015\u001a\u00020\u000bH\u0002J\b\u0010\u0016\u001a\u00020\u000bH\u0002J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\b\u0010\u0018\u001a\u00020\u000bH\u0002R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001b\u001a\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/CountDownHistoryFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", NotificationCompat.CATEGORY_EVENT, "onEditDoneEvent", "D0", "A0", "v0", "u0", "G0", "F0", "H0", "E0", "Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;", "d1", "Lkotlin/Lazy;", "s0", "()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;", "e1", "r0", "()Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;", "adapter", "Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;", "f1", "t0", "()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountDownHistoryFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12351a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f60007a;

        public C12351a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f60007a = function;
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
            return this.f60007a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f60007a.invoke(obj);
        }
    }

    public CountDownHistoryFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentCounterHistoryBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentCounterHistoryBinding invoke() {
                return FragmentCounterHistoryBinding.inflate(LayoutInflater.from(CountDownHistoryFragment.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CountDownHistoryAdapter>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CountDownHistoryAdapter invoke() {
                return new CountDownHistoryAdapter();
            }
        });
        this.adapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<CountHistoryViewModel>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CountHistoryViewModel invoke() {
                return (CountHistoryViewModel) FragmentKt.getViewModel(CountDownHistoryFragment.this, CountHistoryViewModel.class);
            }
        });
        this.viewModel = lazy3;
    }

    /* renamed from: B0 */
    public static final void m48288B0(final CountDownHistoryFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        Context context = v.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        CounterHistoryOptionsPopup counterHistoryOptionsPopup = new CounterHistoryOptionsPopup(context);
        counterHistoryOptionsPopup.setCallback(new CounterHistoryOptionsPopup.OperationCallback() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$initRecyclerContent$3$1
            @Override // com.onyx.galaxy.note.editor.view.popup.CounterHistoryOptionsPopup.OperationCallback
            public void onDelete() {
                CountDownHistoryAdapter m48306r0;
                CountHistoryViewModel m48308t0;
                List<CounterRecordModel> listOf;
                CountDownHistoryAdapter m48306r02;
                m48306r0 = CountDownHistoryFragment.this.m48306r0();
                CounterRecordModel item = m48306r0.getItem(i);
                if (item == null) {
                    return;
                }
                m48308t0 = CountDownHistoryFragment.this.m48308t0();
                Context requireContext = CountDownHistoryFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
                m48306r02 = CountDownHistoryFragment.this.m48306r0();
                m48308t0.deleteCount(requireContext, listOf, m48306r02.getSelectionMode());
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.CounterHistoryOptionsPopup.OperationCallback
            public void onEditCountName() {
                CountDownHistoryAdapter m48306r0;
                m48306r0 = CountDownHistoryFragment.this.m48306r0();
                m48306r0.onEditCountName(i);
            }
        });
        View root = this$0.m48307s0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PopupExtKt.showActionPopup$default(counterHistoryOptionsPopup, v, ViewKt.globalVisibleRect(root), 0, ViewKt.globalVisibleRect(v).height(), 4, null);
    }

    /* renamed from: C0 */
    public static final void m48289C0(CountDownHistoryFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        CounterRecordModel item = this$0.m48306r0().getItem(i);
        if (item == null) {
            return;
        }
        this$0.m48306r0().onItemClick(item);
        this$0.m48305H0();
    }

    /* renamed from: w0 */
    public static final void m48296w0(CountDownHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48304G0();
    }

    /* renamed from: x0 */
    public static final void m48297x0(CountDownHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48304G0();
        this$0.m48305H0();
    }

    /* renamed from: y0 */
    public static final void m48298y0(CountDownHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48303F0();
    }

    /* renamed from: z0 */
    public static final void m48299z0(CountDownHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48302E0();
    }

    /* renamed from: A0 */
    public final void m48300A0() {
        final ThemeRecyclerView themeRecyclerView = m48307s0().rvHistory;
        themeRecyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        themeRecyclerView.addItemDecoration(new Function0<RecyclerView.ItemDecoration>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$initRecyclerContent$1$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RecyclerView.ItemDecoration invoke() {
                MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(ThemeRecyclerView.this.getContext(), 1);
                materialDividerItemDecoration.setDividerColor(ThemeUtils.getColorById(C7996R.color.theme_bg_overlay_color_01));
                ResManager resManager = ResManager.INSTANCE;
                materialDividerItemDecoration.setDividerThickness(resManager.getDimensionPixelSize(C7384R.dimen.dp_0_4));
                materialDividerItemDecoration.setDividerInsetStart(resManager.getDimens(C7384R.dimen.dp_16));
                materialDividerItemDecoration.setDividerInsetEnd(resManager.getDimens(C7384R.dimen.dp_16));
                materialDividerItemDecoration.setLastItemDecorated(false);
                return materialDividerItemDecoration;
            }
        });
        themeRecyclerView.setAdapter(m48306r0());
        ThemeRecyclerView rvHistory = m48307s0().rvHistory;
        Intrinsics.checkNotNullExpressionValue(rvHistory, "rvHistory");
        ViewKt.setClearEditFocusTouchListener(rvHistory, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$initRecyclerContent$2
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
                CountDownHistoryAdapter m48306r0;
                m48306r0 = CountDownHistoryFragment.this.m48306r0();
                m48306r0.quitEditAndSave();
            }
        });
        m48306r0().setStateViewLayout(ResManager.INSTANCE.getContext(), C10651R.layout.layout_counter_history_empty);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48306r0(), C10651R.id.iv_more_option, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.nde
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CountDownHistoryFragment.m48288B0(CountDownHistoryFragment.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48306r0(), C10651R.id.checkbox, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.ode
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CountDownHistoryFragment.m48289C0(CountDownHistoryFragment.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
    }

    /* renamed from: D0 */
    public final void m48301D0() {
        m48300A0();
    }

    /* renamed from: E0 */
    public final void m48302E0() {
        List<CounterRecordModel> list;
        list = CollectionsKt___CollectionsKt.toList(m48306r0().getSelectedItems());
        CountHistoryViewModel m48308t0 = m48308t0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        m48308t0.deleteCount(requireContext, list, m48306r0().getSelectionMode());
    }

    /* renamed from: F0 */
    public final void m48303F0() {
        m48306r0().toggleSelectAll();
        m48305H0();
    }

    /* renamed from: G0 */
    public final void m48304G0() {
        boolean z = m48306r0().toggleSelectionMode();
        ViewKt.setViewVisibleOrInvisible(m48307s0().selection, !z);
        ViewKt.setViewVisibleOrInvisible(m48307s0().selectionLayout, z);
    }

    /* renamed from: H0 */
    public final void m48305H0() {
        m48307s0().selectAll.setSelected(m48306r0().isAllItemSelected());
        m48307s0().delete.setEnabled(m48306r0().hasItemContains());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48307s0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        GlobalBundle.INSTANCE.unregister(this);
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditDoneEvent(@NotNull EditDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48306r0().quitEditAndSave();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        GlobalBundle.INSTANCE.register(this);
        m48301D0();
        m48310v0();
        m48309u0();
    }

    /* renamed from: r0 */
    public final CountDownHistoryAdapter m48306r0() {
        return (CountDownHistoryAdapter) this.adapter.getValue();
    }

    /* renamed from: s0 */
    public final FragmentCounterHistoryBinding m48307s0() {
        return (FragmentCounterHistoryBinding) this.binding.getValue();
    }

    /* renamed from: t0 */
    public final CountHistoryViewModel m48308t0() {
        return (CountHistoryViewModel) this.viewModel.getValue();
    }

    /* renamed from: u0 */
    public final void m48309u0() {
        m48308t0().getCountListData().observe(getViewLifecycleOwner(), new C12351a(new Function1<List<? extends CounterRecordModel>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountDownHistoryFragment$initData$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends CounterRecordModel> list) {
                invoke2((List<CounterRecordModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<CounterRecordModel> list) {
                CountDownHistoryAdapter m48306r0;
                CountDownHistoryAdapter m48306r02;
                CountDownHistoryAdapter m48306r03;
                FragmentCounterHistoryBinding m48307s0;
                FragmentCounterHistoryBinding m48307s02;
                FragmentCounterHistoryBinding m48307s03;
                FragmentCounterHistoryBinding m48307s04;
                m48306r0 = CountDownHistoryFragment.this.m48306r0();
                m48306r0.setStateViewEnable(true);
                m48306r02 = CountDownHistoryFragment.this.m48306r0();
                m48306r02.getSelectedItems().clear();
                m48306r03 = CountDownHistoryFragment.this.m48306r0();
                m48306r03.submitList(list);
                CountDownHistoryFragment.this.m48305H0();
                m48307s0 = CountDownHistoryFragment.this.m48307s0();
                TintTextView tintTextView = m48307s0.selectAll;
                Intrinsics.checkNotNull(list);
                tintTextView.setEnabled(!list.isEmpty());
                if (list.isEmpty()) {
                    m48307s03 = CountDownHistoryFragment.this.m48307s0();
                    TintTextView selection = m48307s03.selection;
                    Intrinsics.checkNotNullExpressionValue(selection, "selection");
                    selection.setVisibility(8);
                    m48307s04 = CountDownHistoryFragment.this.m48307s0();
                    RelativeLayout selectionLayout = m48307s04.selectionLayout;
                    Intrinsics.checkNotNullExpressionValue(selectionLayout, "selectionLayout");
                    selectionLayout.setVisibility(8);
                    return;
                }
                m48307s02 = CountDownHistoryFragment.this.m48307s0();
                RelativeLayout selectionLayout2 = m48307s02.selectionLayout;
                Intrinsics.checkNotNullExpressionValue(selectionLayout2, "selectionLayout");
                if (selectionLayout2.getVisibility() == 0) {
                    CountDownHistoryFragment.this.m48304G0();
                }
            }
        }));
        m48308t0().loadCountData(false);
    }

    /* renamed from: v0 */
    public final void m48310v0() {
        TintTextView selection = m48307s0().selection;
        Intrinsics.checkNotNullExpressionValue(selection, "selection");
        com.onyx.android.sdk.extension.ViewKt.click$default(selection, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pde
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountDownHistoryFragment.m48296w0(CountDownHistoryFragment.this, view);
            }
        }, 1, null);
        TintTextView finish = m48307s0().finish;
        Intrinsics.checkNotNullExpressionValue(finish, "finish");
        com.onyx.android.sdk.extension.ViewKt.click$default(finish, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qde
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountDownHistoryFragment.m48297x0(CountDownHistoryFragment.this, view);
            }
        }, 1, null);
        TintTextView selectAll = m48307s0().selectAll;
        Intrinsics.checkNotNullExpressionValue(selectAll, "selectAll");
        com.onyx.android.sdk.extension.ViewKt.click$default(selectAll, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rde
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountDownHistoryFragment.m48298y0(CountDownHistoryFragment.this, view);
            }
        }, 1, null);
        TintTextView delete = m48307s0().delete;
        Intrinsics.checkNotNullExpressionValue(delete, "delete");
        com.onyx.android.sdk.extension.ViewKt.click$default(delete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sde
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountDownHistoryFragment.m48299z0(CountDownHistoryFragment.this, view);
            }
        }, 1, null);
    }
}
