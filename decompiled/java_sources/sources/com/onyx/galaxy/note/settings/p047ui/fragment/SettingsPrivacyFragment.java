package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.p039ui.ObjectHolder;
import com.onyx.android.sdk.p039ui.ObjectHolderKt;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.AccountVerifyAction;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsPrivacyBinding;
import com.onyx.galaxy.note.editor.data.AuthenticateNotePasswordContext;
import com.onyx.galaxy.note.editor.data.ConfigNotePasswordContext;
import com.onyx.galaxy.note.editor.view.PalmCollectionSwitch;
import com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog;
import com.onyx.galaxy.note.editor.view.dialog.NoteAuthenticatePasswordDialog;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsPrivacyFragment;
import com.onyx.galaxy.note.settings.p047ui.popup.NoteAutoLockIntervalPopup;
import com.onyx.galaxy.note.settings.viewmodel.SettingsPrivacyViewModel;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b9\u0010:J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\u0016\u0010\u0013\u001a\u00020\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J(\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0017H\u0002J$\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020 2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010$\u001a\u00020\u0002H\u0016R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001b\u0010/\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010'\u001a\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u001a\u00108\u001a\b\u0012\u0004\u0012\u000205048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "", "O0", "L0", "F0", "z0", "T0", "H0", "J0", "B0", "S0", "W0", "D0", "w0", "v0", "R0", "Lkotlin/Function0;", "succeedCallback", "u0", "P0", "Landroid/content/Context;", "activityContext", "", "isDelete", "U0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroy", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsPrivacyBinding;", "d1", "Lkotlin/Lazy;", "x0", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsPrivacyBinding;", "binding", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;", "e1", "y0", "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;", "viewModel", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "f1", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/android/sdk/ui/ObjectHolder;", "Landroid/app/Dialog;", "g1", "Lcom/onyx/android/sdk/ui/ObjectHolder;", "dialogHolder", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsPrivacyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsPrivacyFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,253:1\n256#2,2:254\n256#2,2:256\n*S KotlinDebug\n*F\n+ 1 SettingsPrivacyFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment\n*L\n165#1:254,2\n166#1:256,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsPrivacyFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable compositeDisposable;

    /* renamed from: g1, reason: from kotlin metadata */
    @NotNull
    public final ObjectHolder<Dialog> dialogHolder;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12724a<T> implements Consumer {
        public C12724a() {
        }

        /* renamed from: a */
        public final void m51099a(boolean z) {
            if (z) {
                SettingsPrivacyFragment.this.m51097y0().configureNoteFingerLock(false);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51099a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12725b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61735a;

        public C12725b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61735a = function;
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
            return this.f61735a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61735a.invoke(obj);
        }
    }

    public SettingsPrivacyFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FragmentSettingsPrivacyBinding>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentSettingsPrivacyBinding invoke() {
                return FragmentSettingsPrivacyBinding.inflate(SettingsPrivacyFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SettingsPrivacyViewModel>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SettingsPrivacyViewModel invoke() {
                FragmentActivity requireActivity = SettingsPrivacyFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (SettingsPrivacyViewModel) FragmentActivityKt.getViewModel(requireActivity, SettingsPrivacyViewModel.class);
            }
        });
        this.viewModel = lazy2;
        this.compositeDisposable = new CompositeDisposable();
        this.dialogHolder = new ObjectHolder<>();
    }

    /* renamed from: A0 */
    public static final void m51061A0(SettingsPrivacyFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51092W0();
    }

    /* renamed from: C0 */
    public static final void m51062C0(SettingsPrivacyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51089S0();
    }

    /* renamed from: E0 */
    public static final void m51063E0(SettingsPrivacyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51095w0();
    }

    /* renamed from: G0 */
    public static final void m51064G0(SettingsPrivacyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51098z0();
    }

    /* renamed from: I0 */
    public static final void m51065I0(final SettingsPrivacyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        Integer value = this$0.m51097y0().getNoteIdleAutoLockInterval().getValue();
        Intrinsics.checkNotNull(value);
        new NoteAutoLockIntervalPopup(requireContext, value.intValue(), new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$initNoteIdleAutoLockIntervalContainer$1$1
            {
                super(1);
            }

            public final void invoke(int i) {
                FragmentSettingsPrivacyBinding m51096x0;
                m51096x0 = SettingsPrivacyFragment.this.m51096x0();
                m51096x0.includeSettingsPrivacyContainer.tvNoteIdleAutoLockInterval.setText(String.valueOf(i));
                SettingsPrivacyFragment.this.m51097y0().configureNoteEncryptionInterval(i);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }
        }).showAsDropDown(view, 0, 0, 1);
    }

    /* renamed from: K0 */
    public static final void m51066K0(final SettingsPrivacyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(this$0.m51097y0().getEnableNoteFingerLock().getValue(), Boolean.TRUE)) {
            this$0.m51088R0();
        } else {
            this$0.m51093u0(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$initNoteLockFingerContainer$1$1
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
                    SettingsPrivacyFragment.this.m51097y0().configureNoteFingerLock(true);
                }
            });
        }
    }

    /* renamed from: M0 */
    public static final void m51067M0(SettingsPrivacyFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51097y0().configureNoteEncryption(z);
    }

    /* renamed from: N0 */
    public static final void m51068N0(SettingsPrivacyFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51097y0().configureNoteFingerLock(z);
    }

    /* renamed from: Q0 */
    public static final void m51069Q0(SettingsPrivacyFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51096x0().switchNoteEncryption.setChecked(false);
    }

    /* renamed from: V0 */
    public static /* synthetic */ void m51070V0(SettingsPrivacyFragment settingsPrivacyFragment, Context context, Function0 function0, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        settingsPrivacyFragment.m51091U0(context, function0, z);
    }

    /* renamed from: B0 */
    public final void m51080B0() {
        TintTextView tvChangeNotePassword = m51096x0().includeSettingsPrivacyContainer.tvChangeNotePassword;
        Intrinsics.checkNotNullExpressionValue(tvChangeNotePassword, "tvChangeNotePassword");
        ViewKt.click$default(tvChangeNotePassword, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsPrivacyFragment.m51062C0(SettingsPrivacyFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: D0 */
    public final void m51081D0() {
        TintTextView tvDeleteNotePassword = m51096x0().includeSettingsPrivacyContainer.tvDeleteNotePassword;
        Intrinsics.checkNotNullExpressionValue(tvDeleteNotePassword, "tvDeleteNotePassword");
        ViewKt.click$default(tvDeleteNotePassword, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsPrivacyFragment.m51063E0(SettingsPrivacyFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: F0 */
    public final void m51082F0() {
        m51096x0().switchNoteEncryption.setClickCallback(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$initNoteEncryptionContainer$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                ObjectHolder objectHolder;
                if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
                    NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
                    FragmentActivity requireActivity = SettingsPrivacyFragment.this.requireActivity();
                    Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                    CommonDialog createNoteEncryptionLoginDialog = noteLockUtils.createNoteEncryptionLoginDialog(requireActivity);
                    objectHolder = SettingsPrivacyFragment.this.dialogHolder;
                    ObjectHolderKt.add(objectHolder, createNoteEncryptionLoginDialog);
                    createNoteEncryptionLoginDialog.show();
                    return Boolean.FALSE;
                }
                if (!NoteLockUtils.INSTANCE.isEncryptionEnabled()) {
                    SettingsPrivacyFragment.this.m51090T0();
                } else {
                    SettingsPrivacyFragment.this.m51087P0();
                }
                return Boolean.FALSE;
            }
        });
        TintTextView tvForget = m51096x0().includeSettingsPrivacyContainer.tvForget;
        Intrinsics.checkNotNullExpressionValue(tvForget, "tvForget");
        ViewKt.click$default(tvForget, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lkm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsPrivacyFragment.m51064G0(SettingsPrivacyFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: H0 */
    public final void m51083H0() {
        TintTextView tvNoteIdleAutoLockInterval = m51096x0().includeSettingsPrivacyContainer.tvNoteIdleAutoLockInterval;
        Intrinsics.checkNotNullExpressionValue(tvNoteIdleAutoLockInterval, "tvNoteIdleAutoLockInterval");
        ViewKt.click$default(tvNoteIdleAutoLockInterval, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.okm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsPrivacyFragment.m51065I0(SettingsPrivacyFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: J0 */
    public final void m51084J0() {
        NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        boolean checkFingerPrintAvailable = noteLockUtils.checkFingerPrintAvailable(requireContext);
        TintConstraintLayout noteLockFingerContainer = m51096x0().includeSettingsPrivacyContainer.noteLockFingerContainer;
        Intrinsics.checkNotNullExpressionValue(noteLockFingerContainer, "noteLockFingerContainer");
        noteLockFingerContainer.setVisibility(checkFingerPrintAvailable ? 0 : 8);
        TintTextView tvNoteFingerHint = m51096x0().includeSettingsPrivacyContainer.tvNoteFingerHint;
        Intrinsics.checkNotNullExpressionValue(tvNoteFingerHint, "tvNoteFingerHint");
        tvNoteFingerHint.setVisibility(checkFingerPrintAvailable ? 0 : 8);
        View vNoteFinger = m51096x0().includeSettingsPrivacyContainer.vNoteFinger;
        Intrinsics.checkNotNullExpressionValue(vNoteFinger, "vNoteFinger");
        ViewKt.click$default(vNoteFinger, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.skm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsPrivacyFragment.m51066K0(SettingsPrivacyFragment.this, view);
            }
        }, 1, null);
    }

    /* renamed from: L0 */
    public final void m51085L0() {
        m51096x0().switchNoteEncryption.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.qkm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsPrivacyFragment.m51067M0(SettingsPrivacyFragment.this, compoundButton, z);
            }
        });
        m51096x0().includeSettingsPrivacyContainer.switchNoteFinger.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.rkm
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsPrivacyFragment.m51068N0(SettingsPrivacyFragment.this, compoundButton, z);
            }
        });
        m51084J0();
        m51083H0();
        m51080B0();
        m51081D0();
        m51082F0();
    }

    /* renamed from: O0 */
    public final void m51086O0() {
        m51097y0().getEnableNoteFingerLock().observe(getViewLifecycleOwner(), new C12725b(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$initViewModel$1
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
                FragmentSettingsPrivacyBinding m51096x0;
                m51096x0 = SettingsPrivacyFragment.this.m51096x0();
                PalmCollectionSwitch palmCollectionSwitch = m51096x0.includeSettingsPrivacyContainer.switchNoteFinger;
                Intrinsics.checkNotNull(bool);
                palmCollectionSwitch.setChecked(bool.booleanValue());
            }
        }));
        m51097y0().getEnableNoteEncryption().observe(getViewLifecycleOwner(), new C12725b(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$initViewModel$2
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
                FragmentSettingsPrivacyBinding m51096x0;
                FragmentSettingsPrivacyBinding m51096x02;
                m51096x0 = SettingsPrivacyFragment.this.m51096x0();
                ManualSwitchCompat manualSwitchCompat = m51096x0.switchNoteEncryption;
                Intrinsics.checkNotNull(bool);
                manualSwitchCompat.setChecked(bool.booleanValue());
                m51096x02 = SettingsPrivacyFragment.this.m51096x0();
                TintLinearLayout root = m51096x02.includeSettingsPrivacyContainer.getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                root.setVisibility(bool.booleanValue() ? 0 : 8);
            }
        }));
        m51097y0().getNoteIdleAutoLockInterval().observe(getViewLifecycleOwner(), new C12725b(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$initViewModel$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                FragmentSettingsPrivacyBinding m51096x0;
                m51096x0 = SettingsPrivacyFragment.this.m51096x0();
                m51096x0.includeSettingsPrivacyContainer.tvNoteIdleAutoLockInterval.setText(num + ResManager.INSTANCE.getString(C10651R.string.privacy_settings_note_auto_lock_interval));
            }
        }));
    }

    /* renamed from: P0 */
    public final void m51087P0() {
        NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        Disposable subscribe = RxjavaKt.doOnNextIfTrue(NoteLockUtils.createAuthDialogObservable$default(noteLockUtils, requireActivity, null, 2, null), new Consumer() { // from class: com.sunia.HTREnginev2.nkm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SettingsPrivacyFragment.m51069Q0(SettingsPrivacyFragment.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: R0 */
    public final void m51088R0() {
        NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        Disposable subscribe = NoteLockUtils.createAuthDialogObservable$default(noteLockUtils, requireActivity, null, 2, null).subscribe(new C12724a());
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.compositeDisposable.add(subscribe);
    }

    /* renamed from: S0 */
    public final void m51089S0() {
        m51093u0(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$resetNotePassword$1
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
                SettingsPrivacyFragment.this.m51092W0();
            }
        });
    }

    /* renamed from: T0 */
    public final void m51090T0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        ConfigNotePasswordContext configNotePasswordContext = new ConfigNotePasswordContext(requireActivity, false);
        configNotePasswordContext.setConfirmCallback(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$setNotePassword$configNotePasswordContext$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_note_set_pwd_succeed_hint, false, 2, (Object) null);
                SettingsPrivacyFragment.this.m51097y0().configureNoteEncryption(true);
            }
        });
        ConfigNotePasswordDialog configNotePasswordDialog = new ConfigNotePasswordDialog(configNotePasswordContext);
        ObjectHolderKt.add(this.dialogHolder, configNotePasswordDialog);
        configNotePasswordDialog.show();
    }

    /* renamed from: U0 */
    public final void m51091U0(Context activityContext, final Function0<Unit> succeedCallback, boolean isDelete) {
        AuthenticateNotePasswordContext authenticateNotePasswordContext = new AuthenticateNotePasswordContext(activityContext, isDelete);
        authenticateNotePasswordContext.setConfirmCallback(new Function2<NoteAuthenticatePasswordDialog, String, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$showNoteAuthPasswordDialog$authContext$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(NoteAuthenticatePasswordDialog noteAuthenticatePasswordDialog, String str) {
                invoke2(noteAuthenticatePasswordDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteAuthenticatePasswordDialog dialog, @NotNull String pwd) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(pwd, "pwd");
                if (Intrinsics.areEqual(pwd, MMKVNote.INSTANCE.getNoteLockPasswordOption().get())) {
                    succeedCallback.invoke();
                    dialog.dismiss();
                } else {
                    ToastUtils.INSTANCE.show(C10651R.string.note_pwd_error, true);
                }
            }
        });
        NoteAuthenticatePasswordDialog noteAuthenticatePasswordDialog = new NoteAuthenticatePasswordDialog(authenticateNotePasswordContext);
        ObjectHolderKt.add(this.dialogHolder, noteAuthenticatePasswordDialog);
        noteAuthenticatePasswordDialog.show();
    }

    /* renamed from: W0 */
    public final void m51092W0() {
        ConfigNotePasswordDialog createNotePasswordDialog = NoteLockUtils.INSTANCE.createNotePasswordDialog(Activity.INSTANCE.getFrontActivity(), new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$showResetNotePasswordDialog$configNotePasswordDialog$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                SettingsPrivacyFragment.this.m51097y0().onChangeNotePassword();
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_note_reset_pwd_succeed_hint, false, 2, (Object) null);
            }
        });
        ObjectHolderKt.add(this.dialogHolder, createNotePasswordDialog);
        createNotePasswordDialog.show();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m51096x0().setLifecycleOwner(getViewLifecycleOwner());
        View root = m51096x0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ObjectHolderKt.dismissAllDialog(this.dialogHolder);
        this.compositeDisposable.clear();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51086O0();
        m51085L0();
    }

    /* renamed from: u0 */
    public final void m51093u0(Function0<Unit> succeedCallback) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        m51070V0(this, requireActivity, succeedCallback, false, 4, null);
    }

    /* renamed from: v0 */
    public final void m51094v0() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_note_input_delete_pwd_succeed_hint, false, 2, (Object) null);
        m51097y0().deleteNotePassword();
        m51097y0().configureNoteEncryption(false);
        m51097y0().clearNoteLock();
    }

    /* renamed from: w0 */
    public final void m51095w0() {
        FragmentKt.requireActivitySafety$default(this, null, new Function1<android.app.Activity, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$deleteNotePassword$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(android.app.Activity activity) {
                invoke2(activity);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull android.app.Activity it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                final SettingsPrivacyFragment settingsPrivacyFragment = SettingsPrivacyFragment.this;
                settingsPrivacyFragment.m51091U0(it2, new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsPrivacyFragment$deleteNotePassword$1.1
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
                        SettingsPrivacyFragment.this.m51094v0();
                    }
                }, true);
            }
        }, 1, null);
    }

    /* renamed from: x0 */
    public final FragmentSettingsPrivacyBinding m51096x0() {
        return (FragmentSettingsPrivacyBinding) this.binding.getValue();
    }

    /* renamed from: y0 */
    public final SettingsPrivacyViewModel m51097y0() {
        return (SettingsPrivacyViewModel) this.viewModel.getValue();
    }

    /* renamed from: z0 */
    public final void m51098z0() {
        AccountVerifyArgs accountVerifyArgs = new AccountVerifyArgs();
        String string = ResManager.INSTANCE.getString(C10651R.string.user_title_retrieve_note_password);
        if (string == null) {
            string = "";
        }
        accountVerifyArgs.setVerificationTitle(string);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Boolean> observeOn = new AccountVerifyAction(null, accountVerifyArgs, 1, null).build().observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.kkm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SettingsPrivacyFragment.m51061A0(SettingsPrivacyFragment.this, ((Boolean) obj).booleanValue());
            }
        }), null, null, 3, null);
    }
}
