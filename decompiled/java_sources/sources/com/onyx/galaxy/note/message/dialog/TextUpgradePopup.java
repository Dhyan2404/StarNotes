package com.onyx.galaxy.note.message.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.jakewharton.rxbinding4.view.RxView;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.PopupUpgradeTextBinding;
import com.onyx.galaxy.note.message.dialog.TextUpgradePopup;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "", "initContentView", "r", "p", "Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class TextUpgradePopup extends NotificationBasePopup {

    /* renamed from: s, reason: from kotlin metadata */
    public PopupUpgradeTextBinding binding;

    /* renamed from: com.onyx.galaxy.note.message.dialog.TextUpgradePopup$a */
    /* loaded from: classes9.dex */
    public static final class C12627a<T> implements Consumer {
        public C12627a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
            notificationDisplayHandler.onPrimaryButtonClick(TextUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
            notificationDisplayHandler.navigateWithStrategy(TextUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getNavType(), TextUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getArgs());
            TextUpgradePopup textUpgradePopup = TextUpgradePopup.this;
            notificationDisplayHandler.closeWithStrategy(textUpgradePopup, textUpgradePopup.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getCloseStrategy());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextUpgradePopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, notification, viewModel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        m50607r();
        m50606p();
    }

    /* renamed from: q */
    public static final void m50604q(TextUpgradePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getCloseStrategy());
    }

    /* renamed from: s */
    public static final void m50605s(TextUpgradePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        PopupUpgradeTextBinding popupUpgradeTextBinding = this$0.binding;
        PopupUpgradeTextBinding popupUpgradeTextBinding2 = null;
        if (popupUpgradeTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeTextBinding = null;
        }
        TintLinearLayout dialogRoot = popupUpgradeTextBinding.dialogRoot;
        Intrinsics.checkNotNullExpressionValue(dialogRoot, "dialogRoot");
        ViewKt.clipToRoundRect(dialogRoot, Integer.valueOf(dimens));
        PopupUpgradeTextBinding popupUpgradeTextBinding3 = this$0.binding;
        if (popupUpgradeTextBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeTextBinding2 = popupUpgradeTextBinding3;
        }
        ViewKt.setViewVisibleOrInvisible(popupUpgradeTextBinding2.dialogRoot, true);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupUpgradeTextBinding inflate = PopupUpgradeTextBinding.inflate(LayoutInflater.from(getContext()));
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

    /* renamed from: p */
    public final void m50606p() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        PopupUpgradeTextBinding popupUpgradeTextBinding = this.binding;
        PopupUpgradeTextBinding popupUpgradeTextBinding2 = null;
        if (popupUpgradeTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeTextBinding = null;
        }
        TextView confirmButton = popupUpgradeTextBinding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        Observable<Unit> doOnNext = RxView.clicks(confirmButton).doOnNext(new C12627a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
        PopupUpgradeTextBinding popupUpgradeTextBinding3 = this.binding;
        if (popupUpgradeTextBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeTextBinding2 = popupUpgradeTextBinding3;
        }
        TintTextView cancelButton = popupUpgradeTextBinding2.cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lgn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextUpgradePopup.m50604q(TextUpgradePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: r */
    public final void m50607r() {
        PopupUpgradeTextBinding popupUpgradeTextBinding = this.binding;
        PopupUpgradeTextBinding popupUpgradeTextBinding2 = null;
        if (popupUpgradeTextBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeTextBinding = null;
        }
        popupUpgradeTextBinding.titleText.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getTitle().getValue());
        PopupUpgradeTextBinding popupUpgradeTextBinding3 = this.binding;
        if (popupUpgradeTextBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeTextBinding3 = null;
        }
        popupUpgradeTextBinding3.contentText.setRichText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getContent().getValue());
        PopupUpgradeTextBinding popupUpgradeTextBinding4 = this.binding;
        if (popupUpgradeTextBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeTextBinding4 = null;
        }
        popupUpgradeTextBinding4.confirmButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getValue());
        PopupUpgradeTextBinding popupUpgradeTextBinding5 = this.binding;
        if (popupUpgradeTextBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeTextBinding5 = null;
        }
        popupUpgradeTextBinding5.cancelButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getValue());
        PopupUpgradeTextBinding popupUpgradeTextBinding6 = this.binding;
        if (popupUpgradeTextBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeTextBinding2 = popupUpgradeTextBinding6;
        }
        popupUpgradeTextBinding2.dialogRoot.post(new Runnable() { // from class: com.sunia.HTREnginev2.kgn
            @Override // java.lang.Runnable
            public final void run() {
                TextUpgradePopup.m50605s(TextUpgradePopup.this);
            }
        });
    }
}
