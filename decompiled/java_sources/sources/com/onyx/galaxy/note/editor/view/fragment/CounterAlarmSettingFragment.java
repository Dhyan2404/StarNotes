package com.onyx.galaxy.note.editor.view.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.galaxy.note.common.audio.ResourceRingPlayer;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentCounterAlarmSettingBinding;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarView;
import com.onyx.galaxy.note.editor.view.fragment.CounterAlarmSettingFragment;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0016R\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "onStop", "onDestroy", "Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;", "d1", "Lkotlin/Lazy;", "o0", "()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;", "binding", "Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;", "e1", "n0", "()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;", "audioPlayer", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterAlarmSettingFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy audioPlayer;

    public CounterAlarmSettingFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentCounterAlarmSettingBinding>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CounterAlarmSettingFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentCounterAlarmSettingBinding invoke() {
                return FragmentCounterAlarmSettingBinding.inflate(LayoutInflater.from(CounterAlarmSettingFragment.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ResourceRingPlayer>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CounterAlarmSettingFragment$audioPlayer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ResourceRingPlayer invoke() {
                FragmentActivity requireActivity = CounterAlarmSettingFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return new ResourceRingPlayer(requireActivity, CounterPreference.INSTANCE.getAlarmRes(), false, 4, null);
            }
        });
        this.audioPlayer = lazy2;
    }

    /* renamed from: p0 */
    public static final void m48354p0(CompoundButton compoundButton, boolean z) {
        CounterPreference.getAlarmNormalCountDownOption$default(CounterPreference.INSTANCE, null, 1, null).put(z);
    }

    /* renamed from: q0 */
    public static final void m48355q0(CompoundButton compoundButton, boolean z) {
        CounterPreference.getAlarmMultipleCountDownOption$default(CounterPreference.INSTANCE, null, 1, null).put(z);
    }

    /* renamed from: n0 */
    public final ResourceRingPlayer m48356n0() {
        return (ResourceRingPlayer) this.audioPlayer.getValue();
    }

    /* renamed from: o0 */
    public final FragmentCounterAlarmSettingBinding m48357o0() {
        return (FragmentCounterAlarmSettingBinding) this.binding.getValue();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m48357o0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m48356n0().release();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        m48356n0().stop();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        TintSwitchCompat tintSwitchCompat = m48357o0().switchAlarmCountDown;
        CounterPreference counterPreference = CounterPreference.INSTANCE;
        tintSwitchCompat.setChecked(CounterPreference.getAlarmNormalCountDownOption$default(counterPreference, null, 1, null).get());
        m48357o0().switchAlarmCountDown.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.lee
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CounterAlarmSettingFragment.m48354p0(compoundButton, z);
            }
        });
        m48357o0().switchAlarmMultipleCount.setChecked(CounterPreference.getAlarmMultipleCountDownOption$default(counterPreference, null, 1, null).get());
        m48357o0().switchAlarmMultipleCount.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.mee
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CounterAlarmSettingFragment.m48355q0(compoundButton, z);
            }
        });
        StickSeekBarView stickSeekBarView = m48357o0().seekBarVolume;
        stickSeekBarView.setProgress(CounterPreference.getAlarmVolumeOption$default(counterPreference, null, 1, null).get() * 100.0f);
        stickSeekBarView.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.fragment.CounterAlarmSettingFragment$onViewCreated$3$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                ResourceRingPlayer m48356n0;
                ResourceRingPlayer m48356n02;
                ResourceRingPlayer m48356n03;
                if (z) {
                    float f3 = f / 100.0f;
                    m48356n0 = CounterAlarmSettingFragment.this.m48356n0();
                    m48356n0.setVolume(f3);
                    m48356n02 = CounterAlarmSettingFragment.this.m48356n0();
                    if (!m48356n02.isPlaying()) {
                        m48356n03 = CounterAlarmSettingFragment.this.m48356n0();
                        m48356n03.play();
                    }
                    CounterPreference.getAlarmVolumeOption$default(CounterPreference.INSTANCE, null, 1, null).put(f3);
                }
            }
        });
        stickSeekBarView.invalidate();
    }
}
