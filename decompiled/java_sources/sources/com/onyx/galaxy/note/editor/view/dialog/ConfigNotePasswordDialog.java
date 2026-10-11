package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.C1126e;
import com.blankj.utilcode.util.KeyboardUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.material.textfield.TextInputEditText;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogConfigNotePasswordBinding;
import com.onyx.galaxy.note.editor.data.ConfigNotePasswordContext;
import com.onyx.galaxy.note.editor.event.NotePasswordChangedEvent;
import com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b \u0010!J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0011\u0010\u0017R\u001b\u0010\u001c\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001f\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0015\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "l", C4921e.f26537n, "r", "", C6998g.f39679a, "Lcom/google/android/material/textfield/TextInputEditText;", "textInputEditText", "Landroid/view/View;", "btnView", "q", "Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;", "configContext", "Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;", "i", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/StringOption;", "j", "()Lcom/onyx/android/sdk/data/utils/StringOption;", "noteLockPasswordOption", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "()Lcom/onyx/android/sdk/data/utils/BooleanOption;", "noteFingerLockPasswordOption", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nConfigNotePasswordDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigNotePasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,134:1\n256#2,2:135\n*S KotlinDebug\n*F\n+ 1 ConfigNotePasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog\n*L\n72#1:135,2\n*E\n"})
/* loaded from: classes17.dex */
public final class ConfigNotePasswordDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ConfigNotePasswordContext configContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteLockPasswordOption;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteFingerLockPasswordOption;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigNotePasswordDialog(@NotNull ConfigNotePasswordContext configContext) {
        super(configContext.getActivityContext());
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(configContext, "configContext");
        this.configContext = configContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogConfigNotePasswordBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogConfigNotePasswordBinding invoke() {
                return DialogConfigNotePasswordBinding.inflate(LayoutInflater.from(ConfigNotePasswordDialog.this.getContext()));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<StringOption>() { // from class: com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog$noteLockPasswordOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final StringOption invoke() {
                return MMKVNote.INSTANCE.getNoteLockPasswordOption();
            }
        });
        this.noteLockPasswordOption = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<BooleanOption>() { // from class: com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog$noteFingerLockPasswordOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BooleanOption invoke() {
                return MMKVNote.INSTANCE.getNoteFingerLockPasswordOption();
            }
        });
        this.noteFingerLockPasswordOption = lazy3;
    }

    /* renamed from: m */
    public static final void m47890m(ConfigNotePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47901r();
    }

    /* renamed from: n */
    public static final void m47891n(ConfigNotePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0<Unit> cancelCallback = this$0.configContext.getCancelCallback();
        if (cancelCallback != null) {
            cancelCallback.invoke();
        }
        this$0.dismiss();
    }

    /* renamed from: o */
    public static final void m47892o(ConfigNotePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MaxLengthInputTextEdit tiePwd = this$0.m47895h().tiePwd;
        Intrinsics.checkNotNullExpressionValue(tiePwd, "tiePwd");
        Intrinsics.checkNotNull(view);
        this$0.m47900q(tiePwd, view);
    }

    /* renamed from: p */
    public static final void m47893p(ConfigNotePasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MaxLengthInputTextEdit tieConfirmPwd = this$0.m47895h().tieConfirmPwd;
        Intrinsics.checkNotNullExpressionValue(tieConfirmPwd, "tieConfirmPwd");
        Intrinsics.checkNotNull(view);
        this$0.m47900q(tieConfirmPwd, view);
    }

    /* renamed from: g */
    public final boolean m47894g() {
        CharSequence trim;
        CharSequence trim2;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m47895h().tiePwd.getText()));
        String obj = trim.toString();
        trim2 = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m47895h().tieConfirmPwd.getText()));
        if (!Intrinsics.areEqual(obj, trim2.toString())) {
            ToastUtils.INSTANCE.show(C10651R.string.dialog_note_set_pwd_error, true);
            return false;
        }
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.note_pwd_max_input_length);
        int integer2 = resManager.getInteger(C10651R.integer.note_pwd_min_input_length);
        int length = obj.length();
        if (length >= integer2 && length <= integer) {
            return true;
        }
        ToastUtils.INSTANCE.show(C10651R.string.dialog_note_pwd_length_error, true);
        return false;
    }

    /* renamed from: h */
    public final DialogConfigNotePasswordBinding m47895h() {
        return (DialogConfigNotePasswordBinding) this.binding.getValue();
    }

    /* renamed from: i */
    public final BooleanOption m47896i() {
        return (BooleanOption) this.noteFingerLockPasswordOption.getValue();
    }

    /* renamed from: j */
    public final StringOption m47897j() {
        return (StringOption) this.noteLockPasswordOption.getValue();
    }

    /* renamed from: k */
    public final void m47898k() {
        m47895h().tvTitle.setText(ResManager.INSTANCE.getString(this.configContext.getIsReset() ? C10651R.string.dialog_note_reset_pwd_title : C10651R.string.dialog_note_set_pwd_title));
    }

    /* renamed from: l */
    public final void m47899l() {
        m47895h().tvOk.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c9e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigNotePasswordDialog.m47890m(ConfigNotePasswordDialog.this, view);
            }
        });
        m47895h().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.d9e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigNotePasswordDialog.m47891n(ConfigNotePasswordDialog.this, view);
            }
        });
        TintImageView btnTogglePwdVisible = m47895h().btnTogglePwdVisible;
        Intrinsics.checkNotNullExpressionValue(btnTogglePwdVisible, "btnTogglePwdVisible");
        ViewKt.click$default(btnTogglePwdVisible, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.e9e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigNotePasswordDialog.m47892o(ConfigNotePasswordDialog.this, view);
            }
        }, 1, null);
        TintImageView btnToggleConfirmPwdVisible = m47895h().btnToggleConfirmPwdVisible;
        Intrinsics.checkNotNullExpressionValue(btnToggleConfirmPwdVisible, "btnToggleConfirmPwdVisible");
        ViewKt.click$default(btnToggleConfirmPwdVisible, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f9e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigNotePasswordDialog.m47893p(ConfigNotePasswordDialog.this, view);
            }
        }, 1, null);
        MaxLengthInputTextEdit tieConfirmPwd = m47895h().tieConfirmPwd;
        Intrinsics.checkNotNullExpressionValue(tieConfirmPwd, "tieConfirmPwd");
        TextViewKt.onEditorDoneActionListener(tieConfirmPwd, new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog$initView$5
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                ConfigNotePasswordDialog.this.m47901r();
                return Boolean.TRUE;
            }
        });
        m47895h().switchFinger.setChecked(m47896i().get());
        Group groupFinger = m47895h().groupFinger;
        Intrinsics.checkNotNullExpressionValue(groupFinger, "groupFinger");
        NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        groupFinger.setVisibility(noteLockUtils.checkFingerPrintAvailable(context) ? 0 : 8);
        m47898k();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063280, this, savedInstanceState);
    }

    /* renamed from: q */
    public final void m47900q(TextInputEditText textInputEditText, View btnView) {
        boolean isSelected = btnView.isSelected();
        TransformationMethod passwordTransformationMethod = isSelected ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance();
        Editable text = textInputEditText.getText();
        int length = text != null ? text.length() : 0;
        textInputEditText.setTransformationMethod(passwordTransformationMethod);
        btnView.setSelected(!isSelected);
        textInputEditText.setSelection(length);
    }

    /* renamed from: r */
    public final void m47901r() {
        CharSequence trim;
        KeyboardUtils.hideSoftInput(getWindow());
        if (m47894g()) {
            trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m47895h().tiePwd.getText()));
            String obj = trim.toString();
            m47897j().put(obj);
            m47896i().put(m47895h().switchFinger.isChecked());
            Function1<String, Unit> confirmCallback = this.configContext.getConfirmCallback();
            if (confirmCallback != null) {
                confirmCallback.invoke(obj);
            }
            GlobalBundle.INSTANCE.postEvent(new NotePasswordChangedEvent());
            dismiss();
        }
    }
}
