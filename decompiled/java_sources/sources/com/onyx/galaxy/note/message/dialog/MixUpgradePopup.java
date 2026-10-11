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
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.PopupUpgradeMixBinding;
import com.onyx.galaxy.note.message.dialog.MixUpgradePopup;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/MixUpgradePopup;", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "", "initContentView", "r", "p", "Lcom/onyx/galaxy/note/databinding/PopupUpgradeMixBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupUpgradeMixBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class MixUpgradePopup extends NotificationBasePopup {

    /* renamed from: s, reason: from kotlin metadata */
    public PopupUpgradeMixBinding binding;

    /* renamed from: com.onyx.galaxy.note.message.dialog.MixUpgradePopup$a */
    /* loaded from: classes9.dex */
    public static final class C12625a<T> implements Consumer {
        public C12625a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
            notificationDisplayHandler.onPrimaryButtonClick(MixUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
            notificationDisplayHandler.navigateWithStrategy(MixUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getNavType(), MixUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getArgs());
            MixUpgradePopup mixUpgradePopup = MixUpgradePopup.this;
            notificationDisplayHandler.closeWithStrategy(mixUpgradePopup, mixUpgradePopup.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getCloseStrategy());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MixUpgradePopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, notification, viewModel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        m50576r();
        m50575p();
    }

    /* renamed from: q */
    public static final void m50573q(MixUpgradePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getCloseStrategy());
    }

    /* renamed from: s */
    public static final void m50574s(MixUpgradePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        PopupUpgradeMixBinding popupUpgradeMixBinding = this$0.binding;
        PopupUpgradeMixBinding popupUpgradeMixBinding2 = null;
        if (popupUpgradeMixBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding = null;
        }
        TintLinearLayout dialogRoot = popupUpgradeMixBinding.dialogRoot;
        Intrinsics.checkNotNullExpressionValue(dialogRoot, "dialogRoot");
        ViewKt.clipToRoundRect(dialogRoot, Integer.valueOf(dimens));
        PopupUpgradeMixBinding popupUpgradeMixBinding3 = this$0.binding;
        if (popupUpgradeMixBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding3 = null;
        }
        TintImageView image = popupUpgradeMixBinding3.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.clipToRoundRect(image, Integer.valueOf(dimens / 2));
        PopupUpgradeMixBinding popupUpgradeMixBinding4 = this$0.binding;
        if (popupUpgradeMixBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeMixBinding2 = popupUpgradeMixBinding4;
        }
        ViewKt.setViewVisibleOrInvisible(popupUpgradeMixBinding2.dialogRoot, true);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupUpgradeMixBinding inflate = PopupUpgradeMixBinding.inflate(LayoutInflater.from(getContext()));
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
    public final void m50575p() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        PopupUpgradeMixBinding popupUpgradeMixBinding = this.binding;
        PopupUpgradeMixBinding popupUpgradeMixBinding2 = null;
        if (popupUpgradeMixBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding = null;
        }
        TextView confirmButton = popupUpgradeMixBinding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        Observable<Unit> doOnNext = RxView.clicks(confirmButton).doOnNext(new C12625a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
        PopupUpgradeMixBinding popupUpgradeMixBinding3 = this.binding;
        if (popupUpgradeMixBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeMixBinding2 = popupUpgradeMixBinding3;
        }
        TintTextView cancelButton = popupUpgradeMixBinding2.cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.foj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixUpgradePopup.m50573q(MixUpgradePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: r */
    public final void m50576r() {
        PopupUpgradeMixBinding popupUpgradeMixBinding = this.binding;
        PopupUpgradeMixBinding popupUpgradeMixBinding2 = null;
        if (popupUpgradeMixBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding = null;
        }
        popupUpgradeMixBinding.titleText.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getTitle().getValue());
        PopupUpgradeMixBinding popupUpgradeMixBinding3 = this.binding;
        if (popupUpgradeMixBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding3 = null;
        }
        popupUpgradeMixBinding3.contentText.setRichText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getContent().getValue());
        PopupUpgradeMixBinding popupUpgradeMixBinding4 = this.binding;
        if (popupUpgradeMixBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding4 = null;
        }
        popupUpgradeMixBinding4.confirmButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getValue());
        PopupUpgradeMixBinding popupUpgradeMixBinding5 = this.binding;
        if (popupUpgradeMixBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding5 = null;
        }
        popupUpgradeMixBinding5.cancelButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getValue());
        GlideExt glideExt = GlideExt.INSTANCE;
        PopupUpgradeMixBinding popupUpgradeMixBinding6 = this.binding;
        if (popupUpgradeMixBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeMixBinding6 = null;
        }
        TintImageView image = popupUpgradeMixBinding6.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        GlideExt.load$default(glideExt, image, getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getValue(), null, 2, null);
        PopupUpgradeMixBinding popupUpgradeMixBinding7 = this.binding;
        if (popupUpgradeMixBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeMixBinding2 = popupUpgradeMixBinding7;
        }
        popupUpgradeMixBinding2.dialogRoot.post(new Runnable() { // from class: com.sunia.HTREnginev2.goj
            @Override // java.lang.Runnable
            public final void run() {
                MixUpgradePopup.m50574s(MixUpgradePopup.this);
            }
        });
    }
}
