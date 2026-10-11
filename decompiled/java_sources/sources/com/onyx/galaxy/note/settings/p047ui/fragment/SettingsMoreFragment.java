package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.AppUtils;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.LanguageManager;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.device.ProcessTextExtKt;
import com.onyx.android.sdk.extension.ActivityExtKt;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.view.dialog.PolicyDialog;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsMoreBinding;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.data.LanguageType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.SettingsConfigConst;
import com.onyx.galaxy.note.settings.p047ui.adapter.LanguageAdapter;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsMoreFragment;
import com.onyx.galaxy.note.settings.utils.EyesComfortManager;
import com.onyx.galaxy.note.utils.ScreenLightUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.Arrays;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\nH\u0002R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "B0", "y0", "G0", "N0", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;)V", "Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;", "d1", "Lkotlin/Lazy;", "x0", "()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;", "languageAdapter", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "e1", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "screenOnOption", "f1", "hideStatusBarOption", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsMoreFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsMoreFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,159:1\n256#2,2:160\n256#2,2:162\n256#2,2:164\n256#2,2:166\n*S KotlinDebug\n*F\n+ 1 SettingsMoreFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment\n*L\n97#1:160,2\n101#1:162,2\n107#1:164,2\n111#1:166,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsMoreFragment extends BaseFragment {
    public FragmentSettingsMoreBinding binding;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy languageAdapter;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption screenOnOption;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public BooleanOption hideStatusBarOption;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsMoreFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12723a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61729a;

        public C12723a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61729a = function;
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
            return this.f61729a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61729a.invoke(obj);
        }
    }

    public SettingsMoreFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LanguageAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsMoreFragment$languageAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LanguageAdapter invoke() {
                return new LanguageAdapter();
            }
        });
        this.languageAdapter = lazy;
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        this.screenOnOption = noteConfigManager.getScreenOnOption();
        this.hideStatusBarOption = noteConfigManager.getStatusBarHideOption();
    }

    /* renamed from: A0 */
    public static final void m51031A0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout languageContainer = this$0.getBinding().includeLanguageContainer.languageContainer;
        Intrinsics.checkNotNullExpressionValue(languageContainer, "languageContainer");
        languageContainer.setVisibility(8);
    }

    /* renamed from: C0 */
    public static final void m51032C0(SettingsMoreFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.screenOnOption.put(z);
        ScreenLightUtils.INSTANCE.globalKeepScreenOnChange(z);
    }

    /* renamed from: D0 */
    public static final void m51033D0(SettingsMoreFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hideStatusBarOption.put(z);
        ActivityExtKt.updateFullScreenStyle(z);
    }

    /* renamed from: E0 */
    public static final void m51034E0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(SettingsConfigConst.INSTANCE.getSETTINGS_MORE_STAR_NOTE_WEBSITE()));
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        ProcessTextExtKt.startActivitySafely(requireActivity, intent);
    }

    /* renamed from: F0 */
    public static final void m51035F0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(SettingsConfigConst.INSTANCE.getSETTINGS_MORE_ICP_WEBSITE()));
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        ProcessTextExtKt.startActivitySafely(requireActivity, intent);
    }

    /* renamed from: H0 */
    public static final void m51036H0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new PolicyDialog(requireContext, PolicyType.PRIVACY).show();
    }

    /* renamed from: I0 */
    public static final void m51037I0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new PolicyDialog(requireContext, PolicyType.SERVICE).show();
    }

    /* renamed from: J0 */
    public static final void m51038J0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new PolicyDialog(requireContext, PolicyType.INFORMATION).show();
    }

    /* renamed from: K0 */
    public static final void m51039K0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout starNoteDiscoverContainer = this$0.getBinding().includeStarNoteDiscover.starNoteDiscoverContainer;
        Intrinsics.checkNotNullExpressionValue(starNoteDiscoverContainer, "starNoteDiscoverContainer");
        starNoteDiscoverContainer.setVisibility(0);
    }

    /* renamed from: L0 */
    public static final void m51040L0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout starNoteDiscoverContainer = this$0.getBinding().includeStarNoteDiscover.starNoteDiscoverContainer;
        Intrinsics.checkNotNullExpressionValue(starNoteDiscoverContainer, "starNoteDiscoverContainer");
        starNoteDiscoverContainer.setVisibility(8);
    }

    /* renamed from: M0 */
    public static final void m51041M0(SettingsMoreFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        LanguageType languageType = (LanguageType) adapter.getItem(i);
        if (languageType == null || languageType == this$0.m51058x0().getSelectLanguage()) {
            return;
        }
        this$0.m51058x0().setSelectLanguage(languageType);
        this$0.getBinding().tvLanguage.setText(this$0.getResources().getString(languageType.getDisplayName()));
        LanguageManager.INSTANCE.setLocale(languageType.getLocale(), languageType == LanguageType.DEFAULT, true);
        SyncStateOptions.INSTANCE.reset();
    }

    /* renamed from: z0 */
    public static final void m51054z0(SettingsMoreFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TintConstraintLayout languageContainer = this$0.getBinding().includeLanguageContainer.languageContainer;
        Intrinsics.checkNotNullExpressionValue(languageContainer, "languageContainer");
        languageContainer.setVisibility(0);
    }

    /* renamed from: B0 */
    public final void m51055B0() {
        m51059y0();
        m51056G0();
        getBinding().switchKeepScreenOn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.ckm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsMoreFragment.m51032C0(SettingsMoreFragment.this, compoundButton, z);
            }
        });
        getBinding().switchHideStatusBar.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.dkm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsMoreFragment.m51033D0(SettingsMoreFragment.this, compoundButton, z);
            }
        });
        EyesComfortManager.INSTANCE.getOpened().observe(getViewLifecycleOwner(), new C12723a(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsMoreFragment$initListener$3
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
                ManualSwitchCompat manualSwitchCompat = SettingsMoreFragment.this.getBinding().switchEyesComfortSetting;
                Intrinsics.checkNotNull(bool);
                manualSwitchCompat.setChecked(bool.booleanValue());
                ViewKt.setViewVisibleOrGone(SettingsMoreFragment.this.getBinding().eyesComfortSettingLayout, bool.booleanValue());
            }
        }));
        getBinding().switchEyesComfortSetting.setClickCallback(new SettingsMoreFragment$initListener$4(this));
        TintTextView tvDiscoverStartNote = getBinding().includeStarNoteDiscover.tvDiscoverStartNote;
        Intrinsics.checkNotNullExpressionValue(tvDiscoverStartNote, "tvDiscoverStartNote");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvDiscoverStartNote, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ekm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51034E0(SettingsMoreFragment.this, view);
            }
        }, 1, null);
        TintTextView tvIcp = getBinding().includeStarNoteDiscover.layoutIcpContainer.tvIcp;
        Intrinsics.checkNotNullExpressionValue(tvIcp, "tvIcp");
        com.onyx.android.sdk.extension.ViewKt.click$default(tvIcp, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51035F0(SettingsMoreFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: G0 */
    public final void m51056G0() {
        getBinding().aboutStartNoteContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51039K0(SettingsMoreFragment.this, view);
            }
        });
        getBinding().includeStarNoteDiscover.tvStarNoteBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51040L0(SettingsMoreFragment.this, view);
            }
        });
        m51058x0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.ikm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsMoreFragment.m51041M0(SettingsMoreFragment.this, baseQuickAdapter, view, i);
            }
        });
        getBinding().includeStarNoteDiscover.tvPrivacyAgreement.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51036H0(SettingsMoreFragment.this, view);
            }
        });
        getBinding().includeStarNoteDiscover.tvUserAgreement.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51037I0(SettingsMoreFragment.this, view);
            }
        });
        getBinding().includeStarNoteDiscover.tvInformationList.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.akm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51038J0(SettingsMoreFragment.this, view);
            }
        });
    }

    /* renamed from: N0 */
    public final void m51057N0() {
        LanguageType.Companion companion = LanguageType.INSTANCE;
        LanguageType byAppLanguageCode = companion.getByAppLanguageCode(LanguageManager.INSTANCE.getAppLanguageStrict());
        getBinding().switchKeepScreenOn.setChecked(this.screenOnOption.get());
        getBinding().switchHideStatusBar.setChecked(this.hideStatusBarOption.get());
        getBinding().tvLanguage.setText(getResources().getString(byAppLanguageCode.getDisplayName()));
        getBinding().includeLanguageContainer.rlLanguageList.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().includeLanguageContainer.rlLanguageList.setAdapter(m51058x0());
        m51058x0().submitList(companion.getLanguageListFromConfig());
        m51058x0().setSelectLanguage(byAppLanguageCode);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        ResManager resManager = ResManager.INSTANCE;
        String format = String.format(resManager.getStringSafely(C10651R.string.version), Arrays.copyOf(new Object[]{AppUtils.getAppVersionName()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        getBinding().includeStarNoteDiscover.tvVersion.setText(format);
        TintTextView tintTextView = getBinding().includeStarNoteDiscover.tvServiceContact;
        String format2 = String.format(resManager.getStringSafely(C10651R.string.service_contact_prefix), Arrays.copyOf(new Object[]{SettingsConfigConst.INSTANCE.getSETTINGS_SERVICE_CONTACT()}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        tintTextView.setText(format2);
    }

    @NotNull
    public final FragmentSettingsMoreBinding getBinding() {
        FragmentSettingsMoreBinding fragmentSettingsMoreBinding = this.binding;
        if (fragmentSettingsMoreBinding != null) {
            return fragmentSettingsMoreBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsMoreBinding inflate = FragmentSettingsMoreBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        m51057N0();
        m51055B0();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    public final void setBinding(@NotNull FragmentSettingsMoreBinding fragmentSettingsMoreBinding) {
        Intrinsics.checkNotNullParameter(fragmentSettingsMoreBinding, "<set-?>");
        this.binding = fragmentSettingsMoreBinding;
    }

    /* renamed from: x0 */
    public final LanguageAdapter m51058x0() {
        return (LanguageAdapter) this.languageAdapter.getValue();
    }

    /* renamed from: y0 */
    public final void m51059y0() {
        getBinding().flLanguageItem.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yjm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51054z0(SettingsMoreFragment.this, view);
            }
        });
        getBinding().includeLanguageContainer.tvLanguageBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsMoreFragment.m51031A0(SettingsMoreFragment.this, view);
            }
        });
    }
}
