package com.onyx.galaxy.note.category.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.EditTextExtsKt;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.category.view.dialog.ContentInputDialog;
import com.onyx.galaxy.note.databinding.DialogContentInputBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001c¢\u0006\u0004\b.\u0010/J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013J$\u0010\u0019\u001a\u00020\u00002\u001c\u0010\u0018\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u0016j\b\u0012\u0004\u0012\u00020\u0006`\u0017J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010'R\u0016\u0010\u000b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R,\u0010\u0018\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u0016j\b\u0012\u0004\u0012\u00020\u0006`\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "title", "setTitle", "subTitle", "setSubTitle", "originText", "setOriginText", "", "closeOnFinish", "setCloseOnFinish", "", "maxLength", "setMaxLength", "Landroid/text/InputFilter;", "filter", "addInputFilter", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "onContentFinish", "addContentCallback", C6997f.f39671c, "e", "Landroid/content/Context;", C6999h.f39688c, "Landroid/content/Context;", "activityContext", "Lcom/onyx/galaxy/note/databinding/DialogContentInputBinding;", "i", "Lcom/onyx/galaxy/note/databinding/DialogContentInputBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogContentInputBinding;", "binding", "j", Constants.STRING_SIG, C4921e.f26537n, "l", "m", Constants.HASIDCALL_INDEX_SIG, GoogleApiAvailabilityLight.f29016b, "Lkotlin/jvm/functions/Function1;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nContentInputDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentInputDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ContentInputDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"})
/* loaded from: classes17.dex */
public final class ContentInputDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final DialogContentInputBinding binding;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String title;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String subTitle;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String originText;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean closeOnFinish;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Function1<? super String, Unit> onContentFinish;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInputDialog(@NotNull Context activityContext) {
        super(activityContext);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
        DialogContentInputBinding inflate = DialogContentInputBinding.inflate(LayoutInflater.from(activityContext));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.title = "";
        this.subTitle = "";
        this.originText = "";
        this.closeOnFinish = true;
        this.onContentFinish = new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.category.view.dialog.ContentInputDialog$onContentFinish$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }
        };
    }

    /* renamed from: g */
    public static final void m44260g(ContentInputDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: h */
    public static final void m44261h(ContentInputDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onContentFinish.invoke(String.valueOf(this$0.binding.contentEdit.getText()));
        if (this$0.closeOnFinish) {
            this$0.dismiss();
        }
    }

    @NotNull
    public final ContentInputDialog addContentCallback(@NotNull Function1<? super String, Unit> onContentFinish) {
        Intrinsics.checkNotNullParameter(onContentFinish, "onContentFinish");
        this.onContentFinish = onContentFinish;
        return this;
    }

    @NotNull
    public final ContentInputDialog addInputFilter(@NotNull InputFilter filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        MaxLengthInputTextEdit contentEdit = this.binding.contentEdit;
        Intrinsics.checkNotNullExpressionValue(contentEdit, "contentEdit");
        EditTextExtsKt.addFilter(contentEdit, filter);
        return this;
    }

    /* renamed from: e */
    public final void m44262e() {
        this.binding.contentEdit.setTextChangeCallback(new Function2<Integer, Integer, Unit>() { // from class: com.onyx.galaxy.note.category.view.dialog.ContentInputDialog$addTextWatcher$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                invoke(num.intValue(), num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int i2) {
                ContentInputDialog.this.getBinding().nextButton.setEnabled(i > 0);
                TintTextView tintTextView = ContentInputDialog.this.getBinding().countText;
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append('/');
                sb.append(i2);
                tintTextView.setText(sb.toString());
            }
        });
    }

    /* renamed from: f */
    public final void m44263f() {
        m44262e();
        TintTextView cancelButton = this.binding.cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jbe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContentInputDialog.m44260g(ContentInputDialog.this, view);
            }
        }, 1, null);
        TintTextView nextButton = this.binding.nextButton;
        Intrinsics.checkNotNullExpressionValue(nextButton, "nextButton");
        ViewKt.click$default(nextButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kbe
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContentInputDialog.m44261h(ContentInputDialog.this, view);
            }
        }, 1, null);
        this.binding.titleText.setText(this.title);
        this.binding.subTitleText.setText(this.subTitle);
        this.binding.contentEdit.setText(this.originText);
        this.binding.contentEdit.requestFocus();
    }

    @NotNull
    public final DialogContentInputBinding getBinding() {
        return this.binding;
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063313, this, savedInstanceState);
    }

    @NotNull
    public final ContentInputDialog setCloseOnFinish(boolean closeOnFinish) {
        this.closeOnFinish = closeOnFinish;
        return this;
    }

    public final void setMaxLength(int maxLength) {
        this.binding.contentEdit.setMaxLength(Integer.valueOf(maxLength), true);
    }

    @NotNull
    public final ContentInputDialog setOriginText(@NotNull String originText) {
        Intrinsics.checkNotNullParameter(originText, "originText");
        this.originText = originText;
        return this;
    }

    @NotNull
    public final ContentInputDialog setSubTitle(@NotNull String subTitle) {
        Intrinsics.checkNotNullParameter(subTitle, "subTitle");
        this.subTitle = subTitle;
        return this;
    }

    @NotNull
    public final ContentInputDialog setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        return this;
    }
}
