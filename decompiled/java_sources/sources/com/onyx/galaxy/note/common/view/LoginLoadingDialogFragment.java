package com.onyx.galaxy.note.common.view;

import android.R;
import android.app.Dialog;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.Observer;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportedEvent;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportingEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.viewmodel.LoginLoadingDialogViewModel;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.DialogLoginLoadingBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.math3.dfp.Dfp;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0012H\u0007R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroy", "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportingEvent;", NotificationCompat.CATEGORY_EVENT, "onUserNoteListImportingEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;", "onUserNoteListImportedEvent", "Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;", "z1", "Lkotlin/Lazy;", "r0", "()Lcom/onyx/galaxy/note/account/viewmodel/LoginLoadingDialogViewModel;", "viewModel", "Lcom/onyx/galaxy/note/databinding/DialogLoginLoadingBinding;", "A1", "Lcom/onyx/galaxy/note/databinding/DialogLoginLoadingBinding;", "binding", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class LoginLoadingDialogFragment extends DialogFragment {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TAG = "LoginLoadingDialogFragm";

    /* renamed from: A1, reason: from kotlin metadata */
    public DialogLoginLoadingBinding binding;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment$Companion;", "", "()V", "TAG", "", Dfp.f108018r, "Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LoginLoadingDialogFragment newInstance() {
            Bundle bundle = new Bundle();
            LoginLoadingDialogFragment loginLoadingDialogFragment = new LoginLoadingDialogFragment();
            loginLoadingDialogFragment.setArguments(bundle);
            return loginLoadingDialogFragment;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.view.LoginLoadingDialogFragment$a */
    /* loaded from: classes9.dex */
    public static final class C11667a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f56234a;

        public C11667a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f56234a = function;
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
            return this.f56234a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f56234a.invoke(obj);
        }
    }

    public LoginLoadingDialogFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LoginLoadingDialogViewModel>() { // from class: com.onyx.galaxy.note.common.view.LoginLoadingDialogFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LoginLoadingDialogViewModel invoke() {
                return (LoginLoadingDialogViewModel) FragmentKt.getViewModel(LoginLoadingDialogFragment.this, LoginLoadingDialogViewModel.class);
            }
        });
        this.viewModel = lazy;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063288, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setCancelable(false);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        DialogLoginLoadingBinding inflate = DialogLoginLoadingBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUserNoteListImportedEvent(@NotNull UserNoteListImportedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LoginLoadingDialogViewModel m45170r0 = m45170r0();
        String string = requireContext().getString(C10651R.string.migrate_note_data_done);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        m45170r0.updateTitle(string);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUserNoteListImportingEvent(@NotNull UserNoteListImportingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String string = StringKt.isEmpty(event.getNoteName()) ? requireContext().getString(C10651R.string.start_migrate_note_data) : requireContext().getString(C10651R.string.migrating_note_data, event.getNoteName());
        Intrinsics.checkNotNull(string);
        m45170r0().updateTitle(string);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        DialogLoginLoadingBinding dialogLoginLoadingBinding = this.binding;
        if (dialogLoginLoadingBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogLoginLoadingBinding = null;
        }
        Drawable background = dialogLoginLoadingBinding.f56442iv.getBackground();
        Intrinsics.checkNotNull(background, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) background).start();
        m45170r0().getHintText().observe(getViewLifecycleOwner(), new C11667a(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.common.view.LoginLoadingDialogFragment$onViewCreated$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String str) {
                DialogLoginLoadingBinding dialogLoginLoadingBinding2;
                dialogLoginLoadingBinding2 = LoginLoadingDialogFragment.this.binding;
                if (dialogLoginLoadingBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogLoginLoadingBinding2 = null;
                }
                dialogLoginLoadingBinding2.f56443tv.setText(str);
            }
        }));
    }

    /* renamed from: r0 */
    public final LoginLoadingDialogViewModel m45170r0() {
        return (LoginLoadingDialogViewModel) this.viewModel.getValue();
    }
}
