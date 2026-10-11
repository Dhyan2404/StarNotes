package com.onyx.galaxy.note.category.view.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.extension.StringRuleLengthKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.dialog.EditListNoteDialog;
import com.onyx.galaxy.note.databinding.DialogEditListNoteBinding;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001BJ\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0012\u0012\b\b\u0010\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00040\u0011\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016¢\u0006\u0004\b\u001f\u0010 J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0003J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000fR/\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0012\u0012\b\b\u0010\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00040\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u000b\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "i", C6998g.f39679a, "", C6997f.f39671c, "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "context", "", Constants.STRING_SIG, "name", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "j", "Lkotlin/jvm/functions/Function1;", "edit", "Lkotlin/Function0;", C4921e.f26537n, "Lkotlin/jvm/functions/Function0;", "onCancel", "Lcom/onyx/galaxy/note/databinding/DialogEditListNoteBinding;", "l", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogEditListNoteBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditListNoteDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditListNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,86:1\n65#2,16:87\n93#2,3:103\n*S KotlinDebug\n*F\n+ 1 EditListNoteDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog\n*L\n60#1:87,16\n60#1:103,3\n*E\n"})
/* loaded from: classes17.dex */
public final class EditListNoteDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final String name;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Function1<String, Unit> edit;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onCancel;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public EditListNoteDialog(@NotNull Context context, @Nullable String str, @NotNull Function1<? super String, Unit> edit, @NotNull Function0<Unit> onCancel) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(edit, "edit");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        this.context = context;
        this.name = str;
        this.edit = edit;
        this.onCancel = onCancel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogEditListNoteBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.EditListNoteDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogEditListNoteBinding invoke() {
                Context context2;
                context2 = EditListNoteDialog.this.context;
                return DialogEditListNoteBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: j */
    public static final void m44357j(EditListNoteDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44361g();
    }

    /* renamed from: k */
    public static final void m44358k(EditListNoteDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onCancel.invoke();
        this$0.dismiss();
    }

    /* renamed from: l */
    public static final boolean m44359l(EditListNoteDialog this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 6) {
            return true;
        }
        this$0.m44361g();
        return true;
    }

    /* renamed from: f */
    public final boolean m44360f() {
        if (StringKt.isNotBlank(String.valueOf(m44362h().tieName.getText()))) {
            return true;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_edit_list_note_error, false, 2, (Object) null);
        return false;
    }

    /* renamed from: g */
    public final void m44361g() {
        if (Intrinsics.areEqual(this.name, String.valueOf(m44362h().tieName.getText()))) {
            dismiss();
        } else if (m44360f()) {
            this.edit.invoke(String.valueOf(m44362h().tieName.getText()));
            dismiss();
        }
    }

    /* renamed from: h */
    public final DialogEditListNoteBinding m44362h() {
        return (DialogEditListNoteBinding) this.binding.getValue();
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: i */
    public final void m44363i() {
        m44362h().tvOk.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.flf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditListNoteDialog.m44357j(EditListNoteDialog.this, view);
            }
        });
        m44362h().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.glf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditListNoteDialog.m44358k(EditListNoteDialog.this, view);
            }
        });
        TintTextView tintTextView = m44362h().tvCounter;
        StringBuilder sb = new StringBuilder();
        sb.append(StringRuleLengthKt.getShowLength(this.name));
        sb.append('/');
        sb.append(m44362h().tieName.getMaxLengthDisplay());
        tintTextView.setText(sb.toString());
        m44362h().tieName.setText(this.name);
        m44362h().tieName.requestFocus();
        m44362h().tieName.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.hlf
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m44359l;
                m44359l = EditListNoteDialog.m44359l(EditListNoteDialog.this, textView, i, keyEvent);
                return m44359l;
            }
        });
        MaxLengthInputTextEdit tieName = m44362h().tieName;
        Intrinsics.checkNotNullExpressionValue(tieName, "tieName");
        tieName.addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.category.view.dialog.EditListNoteDialog$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
                DialogEditListNoteBinding m44362h;
                m44362h = EditListNoteDialog.this.m44362h();
                m44362h.tvCounter.setText(NoteConfigManager.INSTANCE.getFolderCounterStr(text));
            }
        });
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063307, this, savedInstanceState);
    }
}
