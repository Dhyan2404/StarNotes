package com.onyx.galaxy.note.editor.view.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.C1126e;
import androidx.navigation.fragment.FragmentKt;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.view.AutoFitViewPagerHeightCallback;
import com.onyx.galaxy.note.databinding.FragmentEditCounterSettingBinding;
import com.onyx.galaxy.note.editor.event.SaveCounterSettingEvent;
import com.onyx.galaxy.note.editor.event.UpdateSaveButtonEvent;
import com.onyx.galaxy.note.editor.view.adapter.CounterEditPagerAdapter;
import com.onyx.galaxy.note.editor.view.fragment.EditCounterSettingFragment;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\b\u0010\u0011\u001a\u00020\u000bH\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0002R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0015\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onDestroyView", "Lcom/onyx/galaxy/note/editor/event/UpdateSaveButtonEvent;", NotificationCompat.CATEGORY_EVENT, "onUpdateSaveButtonEvent", "t0", "r0", "Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;", "d1", "Lkotlin/Lazy;", "p0", "()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;", "binding", "Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;", "e1", "q0", "()Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;", "pageChangeCallback", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EditCounterSettingFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy pageChangeCallback;

    public EditCounterSettingFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentEditCounterSettingBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditCounterSettingFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentEditCounterSettingBinding invoke() {
                return FragmentEditCounterSettingBinding.inflate(LayoutInflater.from(EditCounterSettingFragment.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<AutoFitViewPagerHeightCallback>() { // from class: com.onyx.galaxy.note.editor.view.fragment.EditCounterSettingFragment$pageChangeCallback$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AutoFitViewPagerHeightCallback invoke() {
                FragmentEditCounterSettingBinding m48374p0;
                m48374p0 = EditCounterSettingFragment.this.m48374p0();
                ViewPager2 vpContainer = m48374p0.vpContainer;
                Intrinsics.checkNotNullExpressionValue(vpContainer, "vpContainer");
                return new AutoFitViewPagerHeightCallback(vpContainer);
            }
        });
        this.pageChangeCallback = lazy2;
    }

    /* renamed from: s0 */
    public static final void m48370s0(EditCounterSettingFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48374p0().radioGroup.check(this$0.m48374p0().rbCountDownMultiple.getId());
    }

    /* renamed from: u0 */
    public static final void m48371u0(EditCounterSettingFragment this$0, RadioGroup radioGroup, int i) {
        int indexOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RadioButton radioButton = (RadioButton) this$0.m48374p0().radioGroup.findViewById(i);
        ViewPager2 viewPager2 = this$0.m48374p0().vpContainer;
        RadioGroup radioGroup2 = this$0.m48374p0().radioGroup;
        Intrinsics.checkNotNullExpressionValue(radioGroup2, "radioGroup");
        indexOf = SequencesKt___SequencesKt.indexOf(ViewGroupKt.getChildren(radioGroup2), radioButton);
        viewPager2.setCurrentItem(indexOf, true);
    }

    /* renamed from: v0 */
    public static final void m48372v0(View view) {
        GlobalBundle.INSTANCE.postEvent(new SaveCounterSettingEvent());
    }

    /* renamed from: w0 */
    public static final void m48373w0(EditCounterSettingFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.findNavController(this$0).navigateUp();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48374p0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        m48374p0().vpContainer.unregisterOnPageChangeCallback(m48375q0());
        GlobalBundle.INSTANCE.unregister(this);
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateSaveButtonEvent(@NotNull UpdateSaveButtonEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48374p0().tvSave.setEnabled(event.getCanSave());
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        GlobalBundle.INSTANCE.register(this);
        m48377t0();
        m48376r0();
    }

    /* renamed from: p0 */
    public final FragmentEditCounterSettingBinding m48374p0() {
        return (FragmentEditCounterSettingBinding) this.binding.getValue();
    }

    /* renamed from: q0 */
    public final AutoFitViewPagerHeightCallback m48375q0() {
        return (AutoFitViewPagerHeightCallback) this.pageChangeCallback.getValue();
    }

    /* renamed from: r0 */
    public final void m48376r0() {
        CounterTaskModel parseTaskModelBundle = CounterUtils.INSTANCE.parseTaskModelBundle(getArguments());
        if (parseTaskModelBundle != null) {
            m48374p0().radioGroup.setEnabled(false);
            if (parseTaskModelBundle.getType() != CounterType.COUNT_DOWN_MULTIPLE.ordinal()) {
                m48374p0().rbCountDownMultiple.setEnabled(false);
            } else {
                m48374p0().rbCountDownNormal.setEnabled(false);
                m48374p0().vpContainer.post(new Runnable() { // from class: com.sunia.HTREnginev2.zkf
                    @Override // java.lang.Runnable
                    public final void run() {
                        EditCounterSettingFragment.m48370s0(EditCounterSettingFragment.this);
                    }
                });
            }
        }
    }

    /* renamed from: t0 */
    public final void m48377t0() {
        m48374p0().radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.alf
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                EditCounterSettingFragment.m48371u0(EditCounterSettingFragment.this, radioGroup, i);
            }
        });
        CounterEditPagerAdapter counterEditPagerAdapter = new CounterEditPagerAdapter(this, getArguments());
        m48374p0().vpContainer.setOffscreenPageLimit(counterEditPagerAdapter.getItemCount());
        m48374p0().vpContainer.setSaveEnabled(false);
        m48374p0().vpContainer.setUserInputEnabled(false);
        m48374p0().vpContainer.setAdapter(counterEditPagerAdapter);
        m48374p0().vpContainer.registerOnPageChangeCallback(m48375q0());
        m48374p0().radioGroup.check(m48374p0().rbCountDownNormal.getId());
        m48374p0().tvTitle.setText((getArguments() == null || requireArguments().isEmpty()) ? C10651R.string.counter_add_task : C10651R.string.counter_edit_task);
        TintTextView tvSave = m48374p0().tvSave;
        Intrinsics.checkNotNullExpressionValue(tvSave, "tvSave");
        ViewKt.click$default(tvSave, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.blf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditCounterSettingFragment.m48372v0(view);
            }
        }, 1, null);
        TintTextView tvCancel = m48374p0().tvCancel;
        Intrinsics.checkNotNullExpressionValue(tvCancel, "tvCancel");
        ViewKt.click$default(tvCancel, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.clf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditCounterSettingFragment.m48373w0(EditCounterSettingFragment.this, view);
            }
        }, 1, null);
    }
}
