package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogNoteAuthPasswordBinding;
import com.onyx.galaxy.note.editor.data.AuthenticateNotePasswordContext;
import com.onyx.galaxy.note.editor.view.dialog.NoteAuthenticatePasswordDialog;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "i", C6999h.f39688c, C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;", "Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;", "authContext", "Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;", "Lkotlin/Lazy;", C6998g.f39679a, "()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class NoteAuthenticatePasswordDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AuthenticateNotePasswordContext authContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteAuthenticatePasswordDialog(@NotNull AuthenticateNotePasswordContext authContext) {
        super(authContext.getActivityContext());
        Lazy lazy;
        Intrinsics.checkNotNullParameter(authContext, "authContext");
        this.authContext = authContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogNoteAuthPasswordBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteAuthenticatePasswordDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogNoteAuthPasswordBinding invoke() {
                return DialogNoteAuthPasswordBinding.inflate(LayoutInflater.from(NoteAuthenticatePasswordDialog.this.getContext()));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: j */
    public static final void m48036j(NoteAuthenticatePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48044o();
    }

    /* renamed from: k */
    public static final void m48037k(NoteAuthenticatePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0<Unit> cancelCallback = this$0.authContext.getCancelCallback();
        if (cancelCallback != null) {
            cancelCallback.invoke();
        }
        this$0.dismiss();
    }

    /* renamed from: l */
    public static final void m48038l(NoteAuthenticatePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48043n();
    }

    /* renamed from: m */
    public static final void m48039m(NoteAuthenticatePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
        Context context = this$0.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        NoteLockUtils.showForgetNotePasswordDialog$default(noteLockUtils, context, null, 2, null);
    }

    /* renamed from: g */
    public final DialogNoteAuthPasswordBinding m48040g() {
        return (DialogNoteAuthPasswordBinding) this.binding.getValue();
    }

    /* renamed from: h */
    public final void m48041h() {
        int i;
        int i2;
        int i3;
        int i4;
        if (this.authContext.getIsDelete()) {
            i = C10651R.string.dialog_note_input_delete_pwd_title;
            i2 = C10651R.string.dialog_note_input_delete_pwd_sub_title;
            i3 = C10651R.string.dialog_note_input_delete_pwd_confirm_deletion;
            i4 = C7996R.color.theme_error_color_01;
        } else {
            i = C10651R.string.dialog_note_input_pwd_title;
            i2 = C10651R.string.dialog_note_input_pwd_sub_title;
            i3 = C10651R.string.confirm;
            i4 = C7996R.color.theme_primary_color_01;
        }
        MediumTextView mediumTextView = m48040g().tvTitle;
        ResManager resManager = ResManager.INSTANCE;
        mediumTextView.setText(resManager.getString(i));
        m48040g().tvSubTitle.setText(resManager.getString(i2));
        m48040g().tvOk.setText(resManager.getString(i3));
        m48040g().tvOk.setTextColor(ThemeUtils.getColorById(i4));
    }

    /* renamed from: i */
    public final void m48042i() {
        m48040g().tvOk.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.luj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteAuthenticatePasswordDialog.m48036j(NoteAuthenticatePasswordDialog.this, view);
            }
        });
        m48040g().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.muj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteAuthenticatePasswordDialog.m48037k(NoteAuthenticatePasswordDialog.this, view);
            }
        });
        m48040g().tieName.requestFocus();
        MaxLengthInputTextEdit tieName = m48040g().tieName;
        Intrinsics.checkNotNullExpressionValue(tieName, "tieName");
        TextViewKt.onEditorDoneActionListener(tieName, new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteAuthenticatePasswordDialog$initView$3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                NoteAuthenticatePasswordDialog.this.m48044o();
                return Boolean.TRUE;
            }
        });
        TintImageView btnTogglePwdVisible = m48040g().btnTogglePwdVisible;
        Intrinsics.checkNotNullExpressionValue(btnTogglePwdVisible, "btnTogglePwdVisible");
        ViewKt.click$default(btnTogglePwdVisible, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nuj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteAuthenticatePasswordDialog.m48038l(NoteAuthenticatePasswordDialog.this, view);
            }
        }, 1, null);
        TintTextView tvForget = m48040g().tvForget;
        Intrinsics.checkNotNullExpressionValue(tvForget, "tvForget");
        ViewKt.click$default(tvForget, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ouj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteAuthenticatePasswordDialog.m48039m(NoteAuthenticatePasswordDialog.this, view);
            }
        }, 1, null);
        m48041h();
    }

    /* renamed from: n */
    public final void m48043n() {
        boolean isSelected = m48040g().btnTogglePwdVisible.isSelected();
        TransformationMethod passwordTransformationMethod = isSelected ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance();
        Editable text = m48040g().tieName.getText();
        int length = text != null ? text.length() : 0;
        m48040g().tieName.setTransformationMethod(passwordTransformationMethod);
        m48040g().btnTogglePwdVisible.setSelected(!isSelected);
        m48040g().tieName.setSelection(length);
    }

    /* renamed from: o */
    public final void m48044o() {
        CharSequence trim;
        KeyboardUtils.hideSoftInput(getWindow());
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m48040g().tieName.getText()));
        String obj = trim.toString();
        if (!StringKt.isNotBlank(obj)) {
            ToastUtils.INSTANCE.show(C10651R.string.dialog_note_input_pwd_empty, true);
            return;
        }
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.note_pwd_max_input_length);
        int integer2 = resManager.getInteger(C10651R.integer.note_pwd_min_input_length);
        int length = obj.length();
        if (length < integer2 || length > integer) {
            ToastUtils.INSTANCE.show(C10651R.string.dialog_note_pwd_length_error, true);
            return;
        }
        Function2<NoteAuthenticatePasswordDialog, String, Unit> confirmCallback = this.authContext.getConfirmCallback();
        if (confirmCallback != null) {
            confirmCallback.invoke(this, obj);
        }
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063277, this, savedInstanceState);
    }
}
