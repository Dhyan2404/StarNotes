package com.onyx.galaxy.note.editor.view.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.C1126e;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentCounterSettingHomeBinding;
import com.onyx.galaxy.note.editor.view.adapter.CounterSettingPagerAdapter;
import com.onyx.galaxy.note.editor.view.fragment.CounterSettingHomeFragment;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\u000bH\u0002J\b\u0010\u0010\u001a\u00020\u000bH\u0002J\b\u0010\u0011\u001a\u00020\u000bH\u0002R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "onResume", "r0", "q0", "o0", "Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;", "d1", "Lkotlin/Lazy;", "n0", "()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;", "binding", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterSettingHomeFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    public CounterSettingHomeFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentCounterSettingHomeBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CounterSettingHomeFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentCounterSettingHomeBinding invoke() {
                return FragmentCounterSettingHomeBinding.inflate(LayoutInflater.from(CounterSettingHomeFragment.this.getContext()));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: p0 */
    public static final void m48360p0(int i, CounterSettingHomeFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == 1) {
            this$0.m48362n0().radioGroup.check(this$0.m48362n0().rbCountUp.getId());
        } else {
            this$0.m48362n0().radioGroup.check(this$0.m48362n0().rbCountDown.getId());
        }
    }

    /* renamed from: s0 */
    public static final void m48361s0(CounterSettingHomeFragment this$0, RadioGroup radioGroup, int i) {
        int indexOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RadioButton radioButton = (RadioButton) this$0.m48362n0().radioGroup.findViewById(i);
        ViewPager2 viewPager2 = this$0.m48362n0().vpContainer;
        RadioGroup radioGroup2 = this$0.m48362n0().radioGroup;
        Intrinsics.checkNotNullExpressionValue(radioGroup2, "radioGroup");
        indexOf = SequencesKt___SequencesKt.indexOf(ViewGroupKt.getChildren(radioGroup2), radioButton);
        viewPager2.setCurrentItem(indexOf, true);
    }

    /* renamed from: n0 */
    public final FragmentCounterSettingHomeBinding m48362n0() {
        return (FragmentCounterSettingHomeBinding) this.binding.getValue();
    }

    /* renamed from: o0 */
    public final void m48363o0() {
        final int parseTargetPage = CounterUtils.INSTANCE.parseTargetPage(getArguments());
        m48362n0().vpContainer.post(new Runnable() { // from class: com.sunia.HTREnginev2.xee
            @Override // java.lang.Runnable
            public final void run() {
                CounterSettingHomeFragment.m48360p0(parseTargetPage, this);
            }
        });
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48362n0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getArguments() != null) {
            m48363o0();
        }
        setArguments(null);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m48365r0();
        m48364q0();
    }

    /* renamed from: q0 */
    public final void m48364q0() {
        ThemeUtils.refreshView(m48362n0().titleContainer);
    }

    /* renamed from: r0 */
    public final void m48365r0() {
        m48362n0().radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.wee
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                CounterSettingHomeFragment.m48361s0(CounterSettingHomeFragment.this, radioGroup, i);
            }
        });
        CounterSettingPagerAdapter counterSettingPagerAdapter = new CounterSettingPagerAdapter(this);
        m48362n0().vpContainer.setOffscreenPageLimit(counterSettingPagerAdapter.getItemCount());
        m48362n0().vpContainer.setSaveEnabled(false);
        m48362n0().vpContainer.setUserInputEnabled(false);
        m48362n0().vpContainer.setAdapter(counterSettingPagerAdapter);
        m48362n0().radioGroup.check(m48362n0().rbCountDown.getId());
    }
}
