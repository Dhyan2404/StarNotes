package com.onyx.galaxy.note.message.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.databinding.PopupGuideMixBinding;
import com.onyx.galaxy.note.message.dialog.MixGuidePopup;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/MixGuidePopup;", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "", "initContentView", "t", "q", "Lcom/onyx/galaxy/note/databinding/PopupGuideMixBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupGuideMixBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class MixGuidePopup extends NotificationBasePopup {

    /* renamed from: s, reason: from kotlin metadata */
    public PopupGuideMixBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MixGuidePopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, notification, viewModel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        m50570t();
        m50569q();
    }

    /* renamed from: r */
    public static final void m50566r(MixGuidePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onPrimaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getCloseStrategy());
    }

    /* renamed from: s */
    public static final void m50567s(MixGuidePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getCloseStrategy());
    }

    /* renamed from: u */
    public static final void m50568u(MixGuidePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        PopupGuideMixBinding popupGuideMixBinding = this$0.binding;
        PopupGuideMixBinding popupGuideMixBinding2 = null;
        if (popupGuideMixBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupGuideMixBinding = null;
        }
        TintLinearLayout dialogRoot = popupGuideMixBinding.dialogRoot;
        Intrinsics.checkNotNullExpressionValue(dialogRoot, "dialogRoot");
        ViewKt.clipToRoundRect(dialogRoot, Integer.valueOf(dimens));
        PopupGuideMixBinding popupGuideMixBinding3 = this$0.binding;
        if (popupGuideMixBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupGuideMixBinding3 = null;
        }
        ImageView image = popupGuideMixBinding3.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.clipToRoundRect(image, Integer.valueOf(dimens / 2));
        PopupGuideMixBinding popupGuideMixBinding4 = this$0.binding;
        if (popupGuideMixBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupGuideMixBinding2 = popupGuideMixBinding4;
        }
        ViewKt.setViewVisibleOrInvisible(popupGuideMixBinding2.dialogRoot, true);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupGuideMixBinding inflate = PopupGuideMixBinding.inflate(LayoutInflater.from(getContext()));
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

    /* renamed from: q */
    public final void m50569q() {
        PopupGuideMixBinding popupGuideMixBinding = this.binding;
        PopupGuideMixBinding popupGuideMixBinding2 = null;
        if (popupGuideMixBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupGuideMixBinding = null;
        }
        TextView confirmButton = popupGuideMixBinding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(confirmButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.doj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixGuidePopup.m50566r(MixGuidePopup.this, view);
            }
        }, 1, null);
        PopupGuideMixBinding popupGuideMixBinding3 = this.binding;
        if (popupGuideMixBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupGuideMixBinding2 = popupGuideMixBinding3;
        }
        TintImageView closeButton = popupGuideMixBinding2.closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.eoj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MixGuidePopup.m50567s(MixGuidePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: t */
    public final void m50570t() {
        PopupGuideMixBinding popupGuideMixBinding = this.binding;
        PopupGuideMixBinding popupGuideMixBinding2 = null;
        if (popupGuideMixBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupGuideMixBinding = null;
        }
        popupGuideMixBinding.titleText.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getTitle().getValue());
        PopupGuideMixBinding popupGuideMixBinding3 = this.binding;
        if (popupGuideMixBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupGuideMixBinding3 = null;
        }
        popupGuideMixBinding3.contentText.setRichText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getContent().getValue());
        PopupGuideMixBinding popupGuideMixBinding4 = this.binding;
        if (popupGuideMixBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupGuideMixBinding4 = null;
        }
        popupGuideMixBinding4.confirmButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getValue());
        GlideExt glideExt = GlideExt.INSTANCE;
        PopupGuideMixBinding popupGuideMixBinding5 = this.binding;
        if (popupGuideMixBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupGuideMixBinding5 = null;
        }
        ImageView image = popupGuideMixBinding5.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        GlideExt.load$default(glideExt, image, getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getValue(), null, 2, null);
        PopupGuideMixBinding popupGuideMixBinding6 = this.binding;
        if (popupGuideMixBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupGuideMixBinding2 = popupGuideMixBinding6;
        }
        popupGuideMixBinding2.dialogRoot.post(new Runnable() { // from class: com.sunia.HTREnginev2.coj
            @Override // java.lang.Runnable
            public final void run() {
                MixGuidePopup.m50568u(MixGuidePopup.this);
            }
        });
    }
}
