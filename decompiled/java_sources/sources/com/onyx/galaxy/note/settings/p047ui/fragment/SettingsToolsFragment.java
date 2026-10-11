package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.fragment.app.C1126e;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.GraphFillToggleFrom;
import com.onyx.android.sdk.data.SettingToggleKt;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.event.StatisticsNoteToolbarGraphFillToggleEvent;
import com.onyx.android.sdk.event.StatisticsOneStrokeSharpeToggleEvent;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.universal.editor.events.note.GraphConvertOptionUpdatedEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentSettingsToolsBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsToolsFragment;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001b¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "q0", "w0", "z0", "", "enable", "y0", "x0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;)V", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "d1", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "graphConvertOption", "e1", "graphConvertWithPressureOption", "f1", "longPressOption", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsToolsFragment extends BaseFragment {
    public FragmentSettingsToolsBinding binding;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption graphConvertOption;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption graphConvertWithPressureOption;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption longPressOption;

    public SettingsToolsFragment() {
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        this.graphConvertOption = noteConfigManager.getGraphConvert();
        this.graphConvertWithPressureOption = noteConfigManager.getGraphConvertWithPressure();
        this.longPressOption = noteConfigManager.getLongPressOfPageMenuOption();
    }

    /* renamed from: r0 */
    public static final void m51151r0(SettingsToolsFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.graphConvertOption.put(z);
        DocCollectionBundle.INSTANCE.postEvent(new GraphConvertOptionUpdatedEvent(z));
        this$0.m51158x0(z);
        this$0.m51160z0();
    }

    /* renamed from: s0 */
    public static final void m51152s0(SettingsToolsFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.graphConvertOption.get()) {
            this$0.graphConvertWithPressureOption.put(z);
        }
    }

    /* renamed from: t0 */
    public static final void m51153t0(SettingsToolsFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        noteConfigManager.setGraphFill(z);
        this$0.m51159y0(z);
        if (z) {
            noteConfigManager.getNoteEditConfigInfo().getPenProperty().selectFirstFillColorIfInvalid(40);
        }
    }

    /* renamed from: u0 */
    public static final void m51154u0(CompoundButton compoundButton, boolean z) {
        NoteConfigManager.INSTANCE.setEnableStylusSelectText(z);
    }

    /* renamed from: v0 */
    public static final void m51155v0(SettingsToolsFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.longPressOption.put(z);
    }

    @NotNull
    public final FragmentSettingsToolsBinding getBinding() {
        FragmentSettingsToolsBinding fragmentSettingsToolsBinding = this.binding;
        if (fragmentSettingsToolsBinding != null) {
            return fragmentSettingsToolsBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsToolsBinding inflate = FragmentSettingsToolsBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        m51157w0();
        m51156q0();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* renamed from: q0 */
    public final void m51156q0() {
        getBinding().switchGraphConvert.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.elm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsToolsFragment.m51151r0(SettingsToolsFragment.this, compoundButton, z);
            }
        });
        getBinding().switchGraphConvertWithPressure.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.flm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsToolsFragment.m51152s0(SettingsToolsFragment.this, compoundButton, z);
            }
        });
        getBinding().switchGraphFilling.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.glm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsToolsFragment.m51153t0(SettingsToolsFragment.this, compoundButton, z);
            }
        });
        getBinding().switchStylusSelectText.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.hlm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsToolsFragment.m51154u0(compoundButton, z);
            }
        });
        getBinding().longPressOfPageMenu.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.ilm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsToolsFragment.m51155v0(SettingsToolsFragment.this, compoundButton, z);
            }
        });
    }

    public final void setBinding(@NotNull FragmentSettingsToolsBinding fragmentSettingsToolsBinding) {
        Intrinsics.checkNotNullParameter(fragmentSettingsToolsBinding, "<set-?>");
        this.binding = fragmentSettingsToolsBinding;
    }

    /* renamed from: w0 */
    public final void m51157w0() {
        getBinding().switchGraphConvert.setChecked(this.graphConvertOption.get());
        TintSwitchCompat tintSwitchCompat = getBinding().switchGraphFilling;
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        tintSwitchCompat.setChecked(noteConfigManager.getGraphFill());
        getBinding().switchStylusSelectText.setChecked(noteConfigManager.isEnableStylusSelectText());
        getBinding().longPressOfPageMenu.setChecked(this.longPressOption.get());
        m51160z0();
    }

    /* renamed from: x0 */
    public final void m51158x0(boolean enable) {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsOneStrokeSharpeToggleEvent(SettingToggleKt.getSettingToggle(enable)));
    }

    /* renamed from: y0 */
    public final void m51159y0(boolean enable) {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteToolbarGraphFillToggleEvent(SettingToggleKt.getSettingToggle(enable), GraphFillToggleFrom.SETTING_TOOL));
    }

    /* renamed from: z0 */
    public final void m51160z0() {
        boolean z = this.graphConvertOption.get();
        getBinding().switchGraphConvertWithPressure.setChecked(this.graphConvertWithPressureOption.get());
        getBinding().switchGraphConvertWithPressure.setEnabled(z);
        getBinding().tvSwitchGraphConvertWithPressure.setEnabled(z);
        if (z) {
            getBinding().switchGraphConvertWithPressure.setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.max_alpha));
        } else {
            getBinding().switchGraphConvertWithPressure.setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.half_alpha));
        }
    }
}
