package com.onyx.galaxy.note.category.p044ui;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.category.p044ui.NoteListViewPageFragment;
import com.onyx.galaxy.note.category.p044ui.NoteListViewPageFragment$pageCallBack$2;
import com.onyx.galaxy.note.category.view.adapter.NoteListViewPagerAdapter;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentNoteListViewPageBinding;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000q\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\t*\u00012\u0018\u0000 92\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b7\u00108J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u000bH\u0002J\b\u0010\u0010\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010 R-\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00110#0\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u0019\u001a\u0004\b&\u0010'R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u001b\u00101\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\u0019\u001a\u0004\b/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010\u0019\u001a\u0004\b4\u00105¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "v0", "s0", "t0", "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "noteSelectType", "w0", "", "enable", "m0", "Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;", "d1", "Lkotlin/Lazy;", "n0", "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;", "binding", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "e1", "r0", "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "", "Lkotlin/Pair;", "", "f1", "q0", "()Ljava/util/List;", "tabDataList", "Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;", "g1", "Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;", "pagerAdapter", "Ljava/lang/Runnable;", "h1", "o0", "()Ljava/lang/Runnable;", "delayRunnable", "com/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1", "i1", "p0", "()Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1;", "pageCallBack", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteListViewPageFragment extends BaseFragment {
    public static final int TAB_ALL_INDEX = 0;
    public static final int TAB_NOTE_INDEX = 1;
    public static final int TAB_PDF_INDEX = 2;

    /* renamed from: j1 */
    public static final int f54821j1 = 3;

    /* renamed from: k1 */
    public static final long f54822k1 = 1000;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy tabDataList;

    /* renamed from: g1, reason: from kotlin metadata */
    @Nullable
    public NoteListViewPagerAdapter pagerAdapter;

    /* renamed from: h1, reason: from kotlin metadata */
    @NotNull
    public final Lazy delayRunnable;

    /* renamed from: i1, reason: from kotlin metadata */
    @NotNull
    public final Lazy pageCallBack;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NoteSelectType.values().length];
            try {
                iArr[NoteSelectType.TAB_ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoteSelectType.TAB_NOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NoteSelectType.TAB_PDF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11313a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54829a;

        public C11313a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54829a = function;
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
            return this.f54829a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54829a.invoke(obj);
        }
    }

    public NoteListViewPageFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentNoteListViewPageBinding>() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentNoteListViewPageBinding invoke() {
                return FragmentNoteListViewPageBinding.inflate(NoteListViewPageFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewModel>() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteListViewModel invoke() {
                FragmentActivity requireActivity = NoteListViewPageFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (NoteListViewModel) FragmentActivityKt.getViewModel(requireActivity, NoteListViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<List<Pair<? extends String, ? extends NoteSelectType>>>() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$tabDataList$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<Pair<? extends String, ? extends NoteSelectType>> invoke() {
                ArrayList arrayList = new ArrayList();
                NoteListViewPageFragment noteListViewPageFragment = NoteListViewPageFragment.this;
                arrayList.add(TuplesKt.m61535to(noteListViewPageFragment.getString(C10651R.string.all), NoteSelectType.TAB_ALL));
                arrayList.add(TuplesKt.m61535to(noteListViewPageFragment.getString(C10651R.string.note), NoteSelectType.TAB_NOTE));
                arrayList.add(TuplesKt.m61535to(noteListViewPageFragment.getString(C10651R.string.pdf), NoteSelectType.TAB_PDF));
                return arrayList;
            }
        });
        this.tabDataList = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new NoteListViewPageFragment$delayRunnable$2(this));
        this.delayRunnable = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<NoteListViewPageFragment$pageCallBack$2.C113141>() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$pageCallBack$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$pageCallBack$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final C113141 invoke() {
                final NoteListViewPageFragment noteListViewPageFragment = NoteListViewPageFragment.this;
                return new ViewPager2.OnPageChangeCallback() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$pageCallBack$2.1
                    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                    public void onPageScrollStateChanged(int state) {
                        NoteListViewModel m43488r0;
                        super.onPageScrollStateChanged(state);
                        m43488r0 = NoteListViewPageFragment.this.m43488r0();
                        m43488r0.isViewPagerAnimating().setValue(Boolean.valueOf(state != 0));
                    }
                };
            }
        });
        this.pageCallBack = lazy5;
    }

    /* renamed from: u0 */
    public static final void m43482u0(NoteListViewPageFragment this$0, TabLayout.Tab tab, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tab, "tab");
        Pair<String, NoteSelectType> pair = this$0.m43487q0().get(i);
        tab.setText(pair.getFirst());
        tab.setTag(pair.getSecond());
    }

    /* renamed from: m0 */
    public final void m43483m0(boolean enable) {
        int tabCount = m43484n0().tabLayout.getTabCount();
        for (int i = 0; i < tabCount; i++) {
            TabLayout.Tab tabAt = m43484n0().tabLayout.getTabAt(i);
            TabLayout.TabView tabView = tabAt != null ? tabAt.view : null;
            if (tabView != null) {
                tabView.setClickable(enable);
            }
        }
    }

    /* renamed from: n0 */
    public final FragmentNoteListViewPageBinding m43484n0() {
        return (FragmentNoteListViewPageBinding) this.binding.getValue();
    }

    /* renamed from: o0 */
    public final Runnable m43485o0() {
        return (Runnable) this.delayRunnable.getValue();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m43484n0().setLifecycleOwner(getViewLifecycleOwner());
        m43484n0().setViewModel(m43488r0());
        View root = m43484n0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.pagerAdapter = null;
        m43484n0().viewPager.setAdapter(null);
        m43484n0().viewPager.unregisterOnPageChangeCallback(m43486p0());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m43491v0();
        m43489s0();
        m43490t0();
    }

    /* renamed from: p0 */
    public final NoteListViewPageFragment$pageCallBack$2.C113141 m43486p0() {
        return (NoteListViewPageFragment$pageCallBack$2.C113141) this.pageCallBack.getValue();
    }

    /* renamed from: q0 */
    public final List<Pair<String, NoteSelectType>> m43487q0() {
        return (List) this.tabDataList.getValue();
    }

    /* renamed from: r0 */
    public final NoteListViewModel m43488r0() {
        return (NoteListViewModel) this.viewModel.getValue();
    }

    /* renamed from: s0 */
    public final void m43489s0() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
        this.pagerAdapter = new NoteListViewPagerAdapter(childFragmentManager, getViewLifecycleOwner().getLifecycle());
        ViewPager2 viewPager2 = m43484n0().viewPager;
        viewPager2.setAdapter(this.pagerAdapter);
        viewPager2.setOffscreenPageLimit(3);
    }

    /* renamed from: t0 */
    public final void m43490t0() {
        m43492w0(m43488r0().getSelectTypeOp().get());
        m43484n0().tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$initTabLayout$1
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(@NotNull TabLayout.Tab tab) {
                NoteListViewModel m43488r0;
                NoteListViewModel m43488r02;
                NoteListViewModel m43488r03;
                Intrinsics.checkNotNullParameter(tab, "tab");
                Object tag = tab.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.NoteSelectType");
                NoteSelectType noteSelectType = (NoteSelectType) tag;
                m43488r0 = NoteListViewPageFragment.this.m43488r0();
                if (noteSelectType != m43488r0.getSelectType().getValue()) {
                    m43488r02 = NoteListViewPageFragment.this.m43488r0();
                    m43488r02.getSelectTypeOp().put(noteSelectType);
                    m43488r03 = NoteListViewPageFragment.this.m43488r0();
                    m43488r03.getSelectType().setValue(noteSelectType);
                }
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }
        });
        m43484n0().tabLayout.setTabRippleColor(ColorStateList.valueOf(0));
        new TabLayoutMediator(m43484n0().tabLayout, m43484n0().viewPager, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.sunia.HTREnginev2.pyj
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i) {
                NoteListViewPageFragment.m43482u0(NoteListViewPageFragment.this, tab, i);
            }
        }).attach();
        m43484n0().viewPager.registerOnPageChangeCallback(m43486p0());
    }

    /* renamed from: v0 */
    public final void m43491v0() {
        m43488r0().getSelectType().observe(requireActivity(), new C11313a(new Function1<NoteSelectType, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$initViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteSelectType noteSelectType) {
                invoke2(noteSelectType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NoteSelectType noteSelectType) {
                NoteListViewPageFragment noteListViewPageFragment = NoteListViewPageFragment.this;
                Intrinsics.checkNotNull(noteSelectType);
                noteListViewPageFragment.m43492w0(noteSelectType);
            }
        }));
        m43488r0().isSlideAnimating().observe(requireActivity(), new C11313a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$initViewModel$2
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
                FragmentNoteListViewPageBinding m43484n0;
                Runnable m43485o0;
                FragmentNoteListViewPageBinding m43484n02;
                Intrinsics.checkNotNull(bool);
                if (bool.booleanValue()) {
                    m43484n02 = NoteListViewPageFragment.this.m43484n0();
                    m43484n02.viewPager.setUserInputEnabled(false);
                    NoteListViewPageFragment.this.m43483m0(false);
                } else {
                    m43484n0 = NoteListViewPageFragment.this.m43484n0();
                    ViewPager2 viewPager = m43484n0.viewPager;
                    Intrinsics.checkNotNullExpressionValue(viewPager, "viewPager");
                    m43485o0 = NoteListViewPageFragment.this.m43485o0();
                    ViewKt.repostDelayed(viewPager, m43485o0, 1000L);
                }
            }
        }));
        m43488r0().isMulSelect().observe(getViewLifecycleOwner(), new C11313a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.ui.NoteListViewPageFragment$initViewModel$3
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
                FragmentNoteListViewPageBinding m43484n0;
                m43484n0 = NoteListViewPageFragment.this.m43484n0();
                m43484n0.viewPager.setUserInputEnabled(!bool.booleanValue());
            }
        }));
    }

    /* renamed from: w0 */
    public final void m43492w0(NoteSelectType noteSelectType) {
        int i = WhenMappings.$EnumSwitchMapping$0[noteSelectType.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            i2 = 2;
        }
        TintTabLayoutView tintTabLayoutView = m43484n0().tabLayout;
        if (tintTabLayoutView.getSelectedTabPosition() != i2) {
            tintTabLayoutView.selectTab(tintTabLayoutView.getTabAt(i2));
        }
    }
}
