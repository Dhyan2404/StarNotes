package com.onyx.galaxy.note.editor.view.dialog;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogInputPasswordBinding;
import com.onyx.galaxy.note.editor.view.dialog.InputPasswordDialog;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\r0\u001b\u0012\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0\u001f¢\u0006\u0004\b*\u0010+J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\rH\u0002J\b\u0010\u0011\u001a\u00020\rH\u0002J\b\u0010\u0012\u001a\u00020\rH\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\rH\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\r0\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010)\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "", "incorrect", "setPasswordIncorrect", "", "onStart", "y0", "E0", "w0", "v0", "", "tipRes", "D0", "x0", "", "z1", Constants.STRING_SIG, HuaweiYunQueryArgs.FILE_NAME, "Lkotlin/Function1;", "A1", "Lkotlin/jvm/functions/Function1;", "confirmCallback", "Lkotlin/Function0;", "B1", "Lkotlin/jvm/functions/Function0;", "cancelCallback", "Lcom/onyx/galaxy/note/databinding/DialogInputPasswordBinding;", "C1", "Lcom/onyx/galaxy/note/databinding/DialogInputPasswordBinding;", "binding", "D1", Constants.HASIDCALL_INDEX_SIG, "isPasswordIncorrect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInputPasswordDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputPasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,119:1\n65#2,16:120\n93#2,3:136\n*S KotlinDebug\n*F\n+ 1 InputPasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/InputPasswordDialog\n*L\n67#1:120,16\n67#1:136,3\n*E\n"})
/* loaded from: classes9.dex */
public final class InputPasswordDialog extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public final Function1<String, Unit> confirmCallback;

    /* renamed from: B1, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> cancelCallback;

    /* renamed from: C1, reason: from kotlin metadata */
    public DialogInputPasswordBinding binding;

    /* renamed from: D1, reason: from kotlin metadata */
    public boolean isPasswordIncorrect;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public final String fileName;

    /* JADX WARN: Multi-variable type inference failed */
    public InputPasswordDialog(@NotNull String fileName, @NotNull Function1<? super String, Unit> confirmCallback, @NotNull Function0<Unit> cancelCallback) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(confirmCallback, "confirmCallback");
        Intrinsics.checkNotNullParameter(cancelCallback, "cancelCallback");
        this.fileName = fileName;
        this.confirmCallback = confirmCallback;
        this.cancelCallback = cancelCallback;
    }

    /* renamed from: A0 */
    public static final void m47976A0(InputPasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47986v0();
    }

    /* renamed from: B0 */
    public static final void m47977B0(InputPasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47985E0();
    }

    /* renamed from: C0 */
    public static final boolean m47978C0(InputPasswordDialog this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 6) {
            return true;
        }
        this$0.m47987w0();
        return false;
    }

    /* renamed from: z0 */
    public static final void m47983z0(InputPasswordDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47987w0();
    }

    /* renamed from: D0 */
    public final void m47984D0(int tipRes) {
        DialogInputPasswordBinding dialogInputPasswordBinding = this.binding;
        DialogInputPasswordBinding dialogInputPasswordBinding2 = null;
        if (dialogInputPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding = null;
        }
        dialogInputPasswordBinding.tvErrorTip.setText(tipRes);
        DialogInputPasswordBinding dialogInputPasswordBinding3 = this.binding;
        if (dialogInputPasswordBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogInputPasswordBinding2 = dialogInputPasswordBinding3;
        }
        dialogInputPasswordBinding2.tvErrorTip.setVisibility(0);
    }

    /* renamed from: E0 */
    public final void m47985E0() {
        DialogInputPasswordBinding dialogInputPasswordBinding = this.binding;
        DialogInputPasswordBinding dialogInputPasswordBinding2 = null;
        if (dialogInputPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding = null;
        }
        int selectionEnd = dialogInputPasswordBinding.edtFilePassword.getSelectionEnd();
        DialogInputPasswordBinding dialogInputPasswordBinding3 = this.binding;
        if (dialogInputPasswordBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding3 = null;
        }
        if (dialogInputPasswordBinding3.ivFilePasswordToggle.getTag() == null) {
            DialogInputPasswordBinding dialogInputPasswordBinding4 = this.binding;
            if (dialogInputPasswordBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogInputPasswordBinding4 = null;
            }
            dialogInputPasswordBinding4.edtFilePassword.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            DialogInputPasswordBinding dialogInputPasswordBinding5 = this.binding;
            if (dialogInputPasswordBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogInputPasswordBinding5 = null;
            }
            dialogInputPasswordBinding5.ivFilePasswordToggle.setImageDrawable(ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_visible));
            DialogInputPasswordBinding dialogInputPasswordBinding6 = this.binding;
            if (dialogInputPasswordBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogInputPasswordBinding6 = null;
            }
            TintImageView tintImageView = dialogInputPasswordBinding6.ivFilePasswordToggle;
            DialogInputPasswordBinding dialogInputPasswordBinding7 = this.binding;
            if (dialogInputPasswordBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogInputPasswordBinding7 = null;
            }
            tintImageView.setTag(dialogInputPasswordBinding7.ivFilePasswordToggle);
        } else {
            DialogInputPasswordBinding dialogInputPasswordBinding8 = this.binding;
            if (dialogInputPasswordBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogInputPasswordBinding8 = null;
            }
            dialogInputPasswordBinding8.edtFilePassword.setTransformationMethod(PasswordTransformationMethod.getInstance());
            DialogInputPasswordBinding dialogInputPasswordBinding9 = this.binding;
            if (dialogInputPasswordBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogInputPasswordBinding9 = null;
            }
            dialogInputPasswordBinding9.ivFilePasswordToggle.setImageDrawable(ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_invisible));
            DialogInputPasswordBinding dialogInputPasswordBinding10 = this.binding;
            if (dialogInputPasswordBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogInputPasswordBinding10 = null;
            }
            dialogInputPasswordBinding10.ivFilePasswordToggle.setTag(null);
        }
        if (selectionEnd >= 0) {
            DialogInputPasswordBinding dialogInputPasswordBinding11 = this.binding;
            if (dialogInputPasswordBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogInputPasswordBinding2 = dialogInputPasswordBinding11;
            }
            dialogInputPasswordBinding2.edtFilePassword.setSelection(selectionEnd);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        DialogInputPasswordBinding inflate = DialogInputPasswordBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        m47989y0();
        DialogInputPasswordBinding dialogInputPasswordBinding = this.binding;
        if (dialogInputPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding = null;
        }
        View root = dialogInputPasswordBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        DialogInputPasswordBinding dialogInputPasswordBinding = this.binding;
        if (dialogInputPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding = null;
        }
        dialogInputPasswordBinding.edtFilePassword.requestFocus();
    }

    @NotNull
    public final InputPasswordDialog setPasswordIncorrect(boolean incorrect) {
        this.isPasswordIncorrect = incorrect;
        return this;
    }

    /* renamed from: v0 */
    public final void m47986v0() {
        this.cancelCallback.invoke();
        dismissAllowingStateLoss();
    }

    /* renamed from: w0 */
    public final void m47987w0() {
        DialogInputPasswordBinding dialogInputPasswordBinding = this.binding;
        if (dialogInputPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding = null;
        }
        String obj = dialogInputPasswordBinding.edtFilePassword.getText().toString();
        if (obj.length() == 0) {
            m47984D0(C10651R.string.password_can_not_empty_tip);
        } else {
            this.confirmCallback.invoke(obj);
            dismissAllowingStateLoss();
        }
    }

    /* renamed from: x0 */
    public final void m47988x0() {
        DialogInputPasswordBinding dialogInputPasswordBinding = this.binding;
        DialogInputPasswordBinding dialogInputPasswordBinding2 = null;
        if (dialogInputPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding = null;
        }
        if (ViewKt.isVisible(dialogInputPasswordBinding.tvErrorTip)) {
            DialogInputPasswordBinding dialogInputPasswordBinding3 = this.binding;
            if (dialogInputPasswordBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogInputPasswordBinding2 = dialogInputPasswordBinding3;
            }
            dialogInputPasswordBinding2.tvErrorTip.setVisibility(8);
        }
    }

    /* renamed from: y0 */
    public final void m47989y0() {
        DialogInputPasswordBinding dialogInputPasswordBinding = this.binding;
        DialogInputPasswordBinding dialogInputPasswordBinding2 = null;
        if (dialogInputPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding = null;
        }
        dialogInputPasswordBinding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputPasswordDialog.m47983z0(InputPasswordDialog.this, view);
            }
        });
        DialogInputPasswordBinding dialogInputPasswordBinding3 = this.binding;
        if (dialogInputPasswordBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding3 = null;
        }
        dialogInputPasswordBinding3.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputPasswordDialog.m47976A0(InputPasswordDialog.this, view);
            }
        });
        DialogInputPasswordBinding dialogInputPasswordBinding4 = this.binding;
        if (dialogInputPasswordBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding4 = null;
        }
        dialogInputPasswordBinding4.ivFilePasswordToggle.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.zki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InputPasswordDialog.m47977B0(InputPasswordDialog.this, view);
            }
        });
        DialogInputPasswordBinding dialogInputPasswordBinding5 = this.binding;
        if (dialogInputPasswordBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding5 = null;
        }
        dialogInputPasswordBinding5.tvFileName.setText(this.fileName);
        DialogInputPasswordBinding dialogInputPasswordBinding6 = this.binding;
        if (dialogInputPasswordBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogInputPasswordBinding6 = null;
        }
        dialogInputPasswordBinding6.edtFilePassword.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.ali
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m47978C0;
                m47978C0 = InputPasswordDialog.m47978C0(InputPasswordDialog.this, textView, i, keyEvent);
                return m47978C0;
            }
        });
        DialogInputPasswordBinding dialogInputPasswordBinding7 = this.binding;
        if (dialogInputPasswordBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogInputPasswordBinding2 = dialogInputPasswordBinding7;
        }
        TintEditText edtFilePassword = dialogInputPasswordBinding2.edtFilePassword;
        Intrinsics.checkNotNullExpressionValue(edtFilePassword, "edtFilePassword");
        edtFilePassword.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.editor.view.dialog.InputPasswordDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                if (text == null || text.length() == 0) {
                    return;
                }
                InputPasswordDialog.this.m47988x0();
            }
        });
        if (this.isPasswordIncorrect) {
            m47984D0(C10651R.string.password_incorrect_tip);
        }
        setCancelable(false);
    }
}
