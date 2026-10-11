package com.onyx.galaxy.note.category.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.LoginTriggerFrom;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.event.BaseStatisticsEvent;
import com.onyx.android.sdk.event.StatisticLoginPageShowEvent;
import com.onyx.android.sdk.event.StatisticRegisterGuideClickEvent;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.category.view.dialog.DialogNoteCountRegisterGuide;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogNoteCountRegisterGuideBinding;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;", "Landroid/app/Dialog;", "", "d", "", "key", "c", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", NotificationCompat.CATEGORY_EVENT, C6998g.f39679a, "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;", C6997f.f39671c, "Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DialogNoteCountRegisterGuide extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    public DialogNoteCountRegisterGuideBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogNoteCountRegisterGuide(@NotNull Context context) {
        super(context, C8037R.style.commonDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        m44338d();
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setDimAmount(0.3f);
        }
    }

    /* renamed from: e */
    public static final void m44335e(DialogNoteCountRegisterGuide this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44339g(new StatisticRegisterGuideClickEvent(true));
        this$0.dismiss();
    }

    /* renamed from: f */
    public static final void m44336f(DialogNoteCountRegisterGuide this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            return;
        }
        this$0.m44339g(new StatisticRegisterGuideClickEvent(false));
        this$0.m44339g(new StatisticLoginPageShowEvent(LoginTriggerFrom.NOTES_LIMIT));
        Navigator.navigateToLogin$default(Navigator.INSTANCE, null, 1, null);
    }

    /* renamed from: c */
    public final String m44337c(String key) {
        return MessageTemplateKt.getMessageTemplate(MessageTemplateKt.KEY_FUNC_NOTE_COUNT_REGISTER_GUIDE, key);
    }

    /* renamed from: d */
    public final void m44338d() {
        DialogNoteCountRegisterGuideBinding inflate = DialogNoteCountRegisterGuideBinding.inflate(LayoutInflater.from(this.context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        DialogNoteCountRegisterGuideBinding dialogNoteCountRegisterGuideBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        setContentView(inflate.getRoot());
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Intrinsics.checkNotNull(attributes, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
            attributes.width = -2;
            attributes.height = -2;
        }
        DialogNoteCountRegisterGuideBinding dialogNoteCountRegisterGuideBinding2 = this.binding;
        if (dialogNoteCountRegisterGuideBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogNoteCountRegisterGuideBinding2 = null;
        }
        TintImageView ivClose = dialogNoteCountRegisterGuideBinding2.ivClose;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        ViewKt.click$default(ivClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogNoteCountRegisterGuide.m44335e(DialogNoteCountRegisterGuide.this, view);
            }
        }, 1, null);
        DialogNoteCountRegisterGuideBinding dialogNoteCountRegisterGuideBinding3 = this.binding;
        if (dialogNoteCountRegisterGuideBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogNoteCountRegisterGuideBinding3 = null;
        }
        MediumTextView tvConfirm = dialogNoteCountRegisterGuideBinding3.tvConfirm;
        Intrinsics.checkNotNullExpressionValue(tvConfirm, "tvConfirm");
        ViewKt.click$default(tvConfirm, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogNoteCountRegisterGuide.m44336f(DialogNoteCountRegisterGuide.this, view);
            }
        }, 1, null);
        DialogNoteCountRegisterGuideBinding dialogNoteCountRegisterGuideBinding4 = this.binding;
        if (dialogNoteCountRegisterGuideBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogNoteCountRegisterGuideBinding4 = null;
        }
        dialogNoteCountRegisterGuideBinding4.tvContent.setText(m44337c(MessageTemplateKt.KEY_CONTENT1));
        DialogNoteCountRegisterGuideBinding dialogNoteCountRegisterGuideBinding5 = this.binding;
        if (dialogNoteCountRegisterGuideBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogNoteCountRegisterGuideBinding = dialogNoteCountRegisterGuideBinding5;
        }
        dialogNoteCountRegisterGuideBinding.tvConfirm.setText(m44337c("button1"));
    }

    /* renamed from: g */
    public final void m44339g(BaseStatisticsEvent event) {
        StatisticsBundle.INSTANCE.postEvent(event);
    }
}
