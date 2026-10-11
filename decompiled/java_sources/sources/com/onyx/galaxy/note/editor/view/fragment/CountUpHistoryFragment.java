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
import com.onyx.galaxy.note.editor.view.adapter.CountUpHistoryAdapter;
import com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment;
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

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\b\u0010\u0011\u001a\u00020\u000bH\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0002J\b\u0010\u0013\u001a\u00020\u000bH\u0002J\b\u0010\u0014\u001a\u00020\u000bH\u0002J\b\u0010\u0015\u001a\u00020\u000bH\u0002J\b\u0010\u0016\u001a\u00020\u000bH\u0002J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\b\u0010\u0018\u001a\u00020\u000bH\u0002R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001b\u001a\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;", NotificationCompat.CATEGORY_EVENT, "onEditDoneEvent", "F0", "B0", "w0", "v0", "I0", "H0", "J0", "G0", "Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;", "d1", "Lkotlin/Lazy;", "t0", "()Lcom/onyx/galaxy/note/databinding/FragmentCounterHistoryBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;", "e1", "s0", "()Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;", "adapter", "Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;", "f1", "u0", "()Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;", "viewmodel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CountUpHistoryFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy adapter;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewmodel;

    /* renamed from: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12356a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f60019a;

        public C12356a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f60019a = function;
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
            return this.f60019a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f60019a.invoke(obj);
        }
    }

    public CountUpHistoryFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentCounterHistoryBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentCounterHistoryBinding invoke() {
                return FragmentCounterHistoryBinding.inflate(LayoutInflater.from(CountUpHistoryFragment.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CountUpHistoryAdapter>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$adapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CountUpHistoryAdapter invoke() {
                return new CountUpHistoryAdapter();
            }
        });
        this.adapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<CountHistoryViewModel>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$viewmodel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CountHistoryViewModel invoke() {
                return (CountHistoryViewModel) FragmentKt.getViewModel(CountUpHistoryFragment.this, CountHistoryViewModel.class);
            }
        });
        this.viewmodel = lazy3;
    }

    /* renamed from: A0 */
    public static final void m48327A0(CountUpHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48343G0();
    }

    /* renamed from: C0 */
    public static final void m48328C0(CountUpHistoryFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.m48347s0().toggleItemExpandState(i);
    }

    /* renamed from: D0 */
    public static final void m48329D0(final CountUpHistoryFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        Context context = v.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        CounterHistoryOptionsPopup counterHistoryOptionsPopup = new CounterHistoryOptionsPopup(context);
        counterHistoryOptionsPopup.setCallback(new CounterHistoryOptionsPopup.OperationCallback() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$initRecyclerContent$4$1
            @Override // com.onyx.galaxy.note.editor.view.popup.CounterHistoryOptionsPopup.OperationCallback
            public void onDelete() {
                CountUpHistoryAdapter m48347s0;
                CountHistoryViewModel m48349u0;
                List<CounterRecordModel> listOf;
                CountUpHistoryAdapter m48347s02;
                m48347s0 = CountUpHistoryFragment.this.m48347s0();
                CounterRecordModel item = m48347s0.getItem(i);
                if (item == null) {
                    return;
                }
                m48349u0 = CountUpHistoryFragment.this.m48349u0();
                Context requireContext = CountUpHistoryFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
                m48347s02 = CountUpHistoryFragment.this.m48347s0();
                m48349u0.deleteCount(requireContext, listOf, m48347s02.getSelectionMode());
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.CounterHistoryOptionsPopup.OperationCallback
            public void onEditCountName() {
                CountUpHistoryAdapter m48347s0;
                m48347s0 = CountUpHistoryFragment.this.m48347s0();
                m48347s0.onEditCountName(i);
            }
        });
        View root = this$0.m48348t0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PopupExtKt.showActionPopup$default(counterHistoryOptionsPopup, v, ViewKt.globalVisibleRect(root), 0, ViewKt.globalVisibleRect(v).height() / 2, 4, null);
    }

    /* renamed from: E0 */
    public static final void m48330E0(CountUpHistoryFragment this$0, BaseQuickAdapter baseQuickAdapter, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(v, "v");
        CounterRecordModel item = this$0.m48347s0().getItem(i);
        if (item == null) {
            return;
        }
        this$0.m48347s0().onItemClick(item);
        this$0.m48346J0();
    }

    /* renamed from: x0 */
    public static final void m48338x0(CountUpHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48345I0();
    }

    /* renamed from: y0 */
    public static final void m48339y0(CountUpHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48345I0();
        this$0.m48346J0();
    }

    /* renamed from: z0 */
    public static final void m48340z0(CountUpHistoryFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48344H0();
    }

    /* renamed from: B0 */
    public final void m48341B0() {
        final ThemeRecyclerView themeRecyclerView = m48348t0().rvHistory;
        themeRecyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        themeRecyclerView.addItemDecoration(new Function0<RecyclerView.ItemDecoration>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$initRecyclerContent$1$1
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
        themeRecyclerView.setAdapter(m48347s0());
        ThemeRecyclerView rvHistory = m48348t0().rvHistory;
        Intrinsics.checkNotNullExpressionValue(rvHistory, "rvHistory");
        ViewKt.setClearEditFocusTouchListener(rvHistory, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$initRecyclerContent$2
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
                CountUpHistoryAdapter m48347s0;
                m48347s0 = CountUpHistoryFragment.this.m48347s0();
                m48347s0.quitEditAndSave();
            }
        });
        m48347s0().setStateViewLayout(ResManager.INSTANCE.getContext(), C10651R.layout.layout_counter_history_empty);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48347s0(), C10651R.id.iv_expand_flag_arrow, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.fee
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CountUpHistoryFragment.m48328C0(CountUpHistoryFragment.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48347s0(), C10651R.id.iv_more_option, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.gee
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CountUpHistoryFragment.m48329D0(CountUpHistoryFragment.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(m48347s0(), C10651R.id.checkbox, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.hee
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CountUpHistoryFragment.m48330E0(CountUpHistoryFragment.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
    }

    /* renamed from: F0 */
    public final void m48342F0() {
        m48341B0();
    }

    /* renamed from: G0 */
    public final void m48343G0() {
        List<CounterRecordModel> list;
        list = CollectionsKt___CollectionsKt.toList(m48347s0().getSelectedItems());
        CountHistoryViewModel m48349u0 = m48349u0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        m48349u0.deleteCount(requireContext, list, m48347s0().getSelectionMode());
    }

    /* renamed from: H0 */
    public final void m48344H0() {
        m48347s0().toggleSelectAll();
        m48346J0();
    }

    /* renamed from: I0 */
    public final void m48345I0() {
        boolean z = m48347s0().toggleSelectionMode();
        ViewKt.setViewVisibleOrInvisible(m48348t0().selection, !z);
        ViewKt.setViewVisibleOrInvisible(m48348t0().selectionLayout, z);
    }

    /* renamed from: J0 */
    public final void m48346J0() {
        m48348t0().selectAll.setSelected(m48347s0().isAllItemSelected());
        m48348t0().delete.setEnabled(m48347s0().hasItemContains());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48348t0().getRoot();
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
        m48347s0().quitEditAndSave();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        GlobalBundle.INSTANCE.register(this);
        m48342F0();
        m48351w0();
        m48350v0();
    }

    /* renamed from: s0 */
    public final CountUpHistoryAdapter m48347s0() {
        return (CountUpHistoryAdapter) this.adapter.getValue();
    }

    /* renamed from: t0 */
    public final FragmentCounterHistoryBinding m48348t0() {
        return (FragmentCounterHistoryBinding) this.binding.getValue();
    }

    /* renamed from: u0 */
    public final CountHistoryViewModel m48349u0() {
        return (CountHistoryViewModel) this.viewmodel.getValue();
    }

    /* renamed from: v0 */
    public final void m48350v0() {
        m48349u0().getCountListData().observe(getViewLifecycleOwner(), new C12356a(new Function1<List<? extends CounterRecordModel>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CountUpHistoryFragment$initData$1
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
                CountUpHistoryAdapter m48347s0;
                CountUpHistoryAdapter m48347s02;
                CountUpHistoryAdapter m48347s03;
                FragmentCounterHistoryBinding m48348t0;
                FragmentCounterHistoryBinding m48348t02;
                FragmentCounterHistoryBinding m48348t03;
                FragmentCounterHistoryBinding m48348t04;
                m48347s0 = CountUpHistoryFragment.this.m48347s0();
                m48347s0.setStateViewEnable(true);
                m48347s02 = CountUpHistoryFragment.this.m48347s0();
                m48347s02.getSelectedItems().clear();
                m48347s03 = CountUpHistoryFragment.this.m48347s0();
                m48347s03.submitList(list);
                CountUpHistoryFragment.this.m48346J0();
                m48348t0 = CountUpHistoryFragment.this.m48348t0();
                TintTextView tintTextView = m48348t0.selectAll;
                Intrinsics.checkNotNull(list);
                tintTextView.setEnabled(!list.isEmpty());
                if (list.isEmpty()) {
                    m48348t03 = CountUpHistoryFragment.this.m48348t0();
                    TintTextView selection = m48348t03.selection;
                    Intrinsics.checkNotNullExpressionValue(selection, "selection");
                    selection.setVisibility(8);
                    m48348t04 = CountUpHistoryFragment.this.m48348t0();
                    RelativeLayout selectionLayout = m48348t04.selectionLayout;
                    Intrinsics.checkNotNullExpressionValue(selectionLayout, "selectionLayout");
                    selectionLayout.setVisibility(8);
                    return;
                }
                m48348t02 = CountUpHistoryFragment.this.m48348t0();
                RelativeLayout selectionLayout2 = m48348t02.selectionLayout;
                Intrinsics.checkNotNullExpressionValue(selectionLayout2, "selectionLayout");
                if (selectionLayout2.getVisibility() == 0) {
                    CountUpHistoryFragment.this.m48345I0();
                }
            }
        }));
        m48349u0().loadCountData(true);
    }

    /* renamed from: w0 */
    public final void m48351w0() {
        TintTextView selection = m48348t0().selection;
        Intrinsics.checkNotNullExpressionValue(selection, "selection");
        com.onyx.android.sdk.extension.ViewKt.click$default(selection, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountUpHistoryFragment.m48338x0(CountUpHistoryFragment.this, view);
            }
        }, 1, null);
        TintTextView finish = m48348t0().finish;
        Intrinsics.checkNotNullExpressionValue(finish, "finish");
        com.onyx.android.sdk.extension.ViewKt.click$default(finish, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountUpHistoryFragment.m48339y0(CountUpHistoryFragment.this, view);
            }
        }, 1, null);
        TintTextView selectAll = m48348t0().selectAll;
        Intrinsics.checkNotNullExpressionValue(selectAll, "selectAll");
        com.onyx.android.sdk.extension.ViewKt.click$default(selectAll, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountUpHistoryFragment.m48340z0(CountUpHistoryFragment.this, view);
            }
        }, 1, null);
        TintTextView delete = m48348t0().delete;
        Intrinsics.checkNotNullExpressionValue(delete, "delete");
        com.onyx.android.sdk.extension.ViewKt.click$default(delete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.eee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountUpHistoryFragment.m48327A0(CountUpHistoryFragment.this, view);
            }
        }, 1, null);
    }
}
