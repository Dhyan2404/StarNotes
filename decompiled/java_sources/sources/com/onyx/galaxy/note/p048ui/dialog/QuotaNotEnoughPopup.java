package com.onyx.galaxy.note.p048ui.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupQuotaNotEnoughBinding;
import com.onyx.galaxy.note.p048ui.dialog.QuotaNotEnoughPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u0018\u0012\u0006\u0010!\u001a\u00020\u0018¢\u0006\u0004\b+\u0010,J\b\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u0007\u001a\u00020\u00002\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0004j\b\u0012\u0004\u0012\u00020\u0000`\u0005J$\u0010\b\u001a\u00020\u00002\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0004j\b\u0012\u0004\u0012\u00020\u0000`\u0005J(\u0010\u000f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0014H\u0007J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001aR\u0014\u0010!\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001aR\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R0\u0010\u0007\u001a\u001c\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R0\u0010\b\u001a\u001c\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010'¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/dialog/QuotaNotEnoughPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "initContentView", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "callback", "onPositive", "onNegative", "Landroid/view/View;", "parent", "", NotificationCompat.WearableExtender.f5060z, "x", "y", "showAtLocation", "dismiss", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", NotificationCompat.CATEGORY_EVENT, "onAccountChange", "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;", "onVipRoleChange", "p", "m", "", "q", Constants.STRING_SIG, "title", "r", "content", "s", "button1", "t", "button2", "Lcom/onyx/galaxy/note/databinding/PopupQuotaNotEnoughBinding;", "u", "Lcom/onyx/galaxy/note/databinding/PopupQuotaNotEnoughBinding;", "binding", "v", "Lkotlin/jvm/functions/Function1;", "w", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class QuotaNotEnoughPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final String title;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final String content;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final String button1;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final String button2;

    /* renamed from: u, reason: from kotlin metadata */
    public PopupQuotaNotEnoughBinding binding;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public Function1<? super QuotaNotEnoughPopup, Unit> onPositive;

    /* renamed from: w, reason: from kotlin metadata */
    @Nullable
    public Function1<? super QuotaNotEnoughPopup, Unit> onNegative;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuotaNotEnoughPopup(@NotNull Context context, @NotNull String title, @NotNull String content, @NotNull String button1, @NotNull String button2) {
        super(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(button1, "button1");
        Intrinsics.checkNotNullParameter(button2, "button2");
        this.title = title;
        this.content = content;
        this.button1 = button1;
        this.button2 = button2;
        m51335p();
        m51334m();
    }

    /* renamed from: n */
    public static final void m51332n(QuotaNotEnoughPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<? super QuotaNotEnoughPopup, Unit> function1 = this$0.onPositive;
        if (function1 != null) {
            function1.invoke(this$0);
        }
    }

    /* renamed from: o */
    public static final void m51333o(QuotaNotEnoughPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        Function1<? super QuotaNotEnoughPopup, Unit> function1 = this$0.onNegative;
        if (function1 != null) {
            function1.invoke(this$0);
        }
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        GlobalBundle.INSTANCE.unregister(this);
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this);
        super.dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupQuotaNotEnoughBinding inflate = PopupQuotaNotEnoughBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setBackgroundDrawable(new ColorDrawable(ResManager.INSTANCE.getColor(C7106R.color.black_percent_30)));
    }

    /* renamed from: m */
    public final void m51334m() {
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding = this.binding;
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding2 = null;
        if (popupQuotaNotEnoughBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupQuotaNotEnoughBinding = null;
        }
        TintTextView confirmButton = popupQuotaNotEnoughBinding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        ViewKt.click$default(confirmButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rbl
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuotaNotEnoughPopup.m51332n(QuotaNotEnoughPopup.this, view);
            }
        }, 1, null);
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding3 = this.binding;
        if (popupQuotaNotEnoughBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupQuotaNotEnoughBinding2 = popupQuotaNotEnoughBinding3;
        }
        TintTextView closeButton = popupQuotaNotEnoughBinding2.closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sbl
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuotaNotEnoughPopup.m51333o(QuotaNotEnoughPopup.this, view);
            }
        }, 1, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAccountChange(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AccountDataBundle.INSTANCE.isVipRole()) {
            dismiss();
        }
    }

    @NotNull
    public final QuotaNotEnoughPopup onNegative(@NotNull Function1<? super QuotaNotEnoughPopup, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.onNegative = callback;
        return this;
    }

    @NotNull
    public final QuotaNotEnoughPopup onPositive(@NotNull Function1<? super QuotaNotEnoughPopup, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.onPositive = callback;
        return this;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVipRoleChange(@NotNull VipRoleChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AccountDataBundle.INSTANCE.isVipRole()) {
            dismiss();
        }
    }

    /* renamed from: p */
    public final void m51335p() {
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding = this.binding;
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding2 = null;
        if (popupQuotaNotEnoughBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupQuotaNotEnoughBinding = null;
        }
        popupQuotaNotEnoughBinding.titleText.setText(this.title);
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding3 = this.binding;
        if (popupQuotaNotEnoughBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupQuotaNotEnoughBinding3 = null;
        }
        popupQuotaNotEnoughBinding3.contentText.setText(this.content);
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding4 = this.binding;
        if (popupQuotaNotEnoughBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupQuotaNotEnoughBinding4 = null;
        }
        popupQuotaNotEnoughBinding4.confirmButton.setText(this.button1);
        PopupQuotaNotEnoughBinding popupQuotaNotEnoughBinding5 = this.binding;
        if (popupQuotaNotEnoughBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupQuotaNotEnoughBinding2 = popupQuotaNotEnoughBinding5;
        }
        popupQuotaNotEnoughBinding2.closeButton.setText(this.button2);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        super.showAtLocation(parent, gravity, x, y);
        GlobalBundle.INSTANCE.register(this);
        AccountDataBundle.INSTANCE.getEventBusHolder().register(this);
    }
}
