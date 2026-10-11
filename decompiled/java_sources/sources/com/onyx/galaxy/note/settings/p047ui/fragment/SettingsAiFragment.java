package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.fragment.app.C1126e;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsAiBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsAiFragment;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "n0", "q0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;", "d1", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "e1", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "inkBeautifyEnableOption", "f1", "inkBeautifyTypesetEnableOption", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsAiFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    public FragmentSettingsAiBinding binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption inkBeautifyEnableOption;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption inkBeautifyTypesetEnableOption;

    public SettingsAiFragment() {
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        this.inkBeautifyEnableOption = noteConfigManager.getEnableInkBeautifyOption();
        this.inkBeautifyTypesetEnableOption = noteConfigManager.getEnableInkBeautifyTypesetOption();
    }

    /* renamed from: o0 */
    public static final void m50846o0(SettingsAiFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.inkBeautifyEnableOption.put(z);
        compoundButton.setChecked(z);
        FragmentSettingsAiBinding fragmentSettingsAiBinding = this$0.binding;
        if (fragmentSettingsAiBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsAiBinding = null;
        }
        fragmentSettingsAiBinding.typesetSwitchButton.setEnabled(z);
        if (z) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.ink_beautify_settings_open_hint, false, 2, (Object) null);
        }
        this$0.m50849q0();
    }

    /* renamed from: p0 */
    public static final void m50847p0(SettingsAiFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.inkBeautifyTypesetEnableOption.put(z);
        compoundButton.setChecked(z);
    }

    /* renamed from: n0 */
    public final void m50848n0() {
        FragmentSettingsAiBinding fragmentSettingsAiBinding = this.binding;
        FragmentSettingsAiBinding fragmentSettingsAiBinding2 = null;
        if (fragmentSettingsAiBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsAiBinding = null;
        }
        fragmentSettingsAiBinding.inkBeautySwitchButton.setChecked(this.inkBeautifyEnableOption.get());
        FragmentSettingsAiBinding fragmentSettingsAiBinding3 = this.binding;
        if (fragmentSettingsAiBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsAiBinding3 = null;
        }
        fragmentSettingsAiBinding3.inkBeautySwitchButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.dim
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsAiFragment.m50846o0(SettingsAiFragment.this, compoundButton, z);
            }
        });
        FragmentSettingsAiBinding fragmentSettingsAiBinding4 = this.binding;
        if (fragmentSettingsAiBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsAiBinding4 = null;
        }
        fragmentSettingsAiBinding4.typesetSwitchButton.setChecked(this.inkBeautifyTypesetEnableOption.get());
        FragmentSettingsAiBinding fragmentSettingsAiBinding5 = this.binding;
        if (fragmentSettingsAiBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentSettingsAiBinding2 = fragmentSettingsAiBinding5;
        }
        fragmentSettingsAiBinding2.typesetSwitchButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.eim
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsAiFragment.m50847p0(SettingsAiFragment.this, compoundButton, z);
            }
        });
        m50849q0();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsAiBinding inflate = FragmentSettingsAiBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m50848n0();
        FragmentSettingsAiBinding fragmentSettingsAiBinding = this.binding;
        if (fragmentSettingsAiBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsAiBinding = null;
        }
        View root = fragmentSettingsAiBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* renamed from: q0 */
    public final void m50849q0() {
        boolean z = this.inkBeautifyEnableOption.get();
        FragmentSettingsAiBinding fragmentSettingsAiBinding = this.binding;
        FragmentSettingsAiBinding fragmentSettingsAiBinding2 = null;
        if (fragmentSettingsAiBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSettingsAiBinding = null;
        }
        fragmentSettingsAiBinding.typesetSwitchButton.setEnabled(z);
        int i = z ? C10651R.dimen.max_alpha : C10651R.dimen.half_alpha;
        FragmentSettingsAiBinding fragmentSettingsAiBinding3 = this.binding;
        if (fragmentSettingsAiBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentSettingsAiBinding2 = fragmentSettingsAiBinding3;
        }
        fragmentSettingsAiBinding2.typesetSwitchButton.setAlpha(ResManager.INSTANCE.getFloat(i));
    }
}
