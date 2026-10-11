package com.onyx.galaxy.note.message.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.galaxy.note.databinding.PopupLinkWebsiteBinding;
import com.onyx.galaxy.note.message.dialog.WebsiteLinkPopup;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\b\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0004\u0010\u0007¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "", "initContentView", "s", "p", "Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;", "Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class WebsiteLinkPopup extends NotificationBasePopup {

    /* renamed from: s, reason: from kotlin metadata */
    public PopupLinkWebsiteBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebsiteLinkPopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, notification, viewModel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        m50619s();
        m50618p();
    }

    /* renamed from: q */
    public static final void m50616q(WebsiteLinkPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onPrimaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getCloseStrategy());
    }

    /* renamed from: r */
    public static final void m50617r(WebsiteLinkPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getCloseStrategy());
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupLinkWebsiteBinding inflate = PopupLinkWebsiteBinding.inflate(LayoutInflater.from(getContext()));
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
    public final void m50618p() {
        PopupLinkWebsiteBinding popupLinkWebsiteBinding = this.binding;
        PopupLinkWebsiteBinding popupLinkWebsiteBinding2 = null;
        if (popupLinkWebsiteBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupLinkWebsiteBinding = null;
        }
        ImageView image = popupLinkWebsiteBinding.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.click$default(image, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m6o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebsiteLinkPopup.m50616q(WebsiteLinkPopup.this, view);
            }
        }, 1, null);
        PopupLinkWebsiteBinding popupLinkWebsiteBinding3 = this.binding;
        if (popupLinkWebsiteBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupLinkWebsiteBinding2 = popupLinkWebsiteBinding3;
        }
        ImageView closeButton = popupLinkWebsiteBinding2.closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n6o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebsiteLinkPopup.m50617r(WebsiteLinkPopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: s */
    public final void m50619s() {
        PopupLinkWebsiteBinding popupLinkWebsiteBinding = null;
        if (getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getResize()) {
            int width = getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getWidth();
            PopupLinkWebsiteBinding popupLinkWebsiteBinding2 = this.binding;
            if (popupLinkWebsiteBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupLinkWebsiteBinding2 = null;
            }
            int defaultIfZero = IntKt.defaultIfZero(width, popupLinkWebsiteBinding2.image.getMeasuredWidth());
            int height = getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getHeight();
            PopupLinkWebsiteBinding popupLinkWebsiteBinding3 = this.binding;
            if (popupLinkWebsiteBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupLinkWebsiteBinding3 = null;
            }
            int defaultIfZero2 = IntKt.defaultIfZero(height, popupLinkWebsiteBinding3.image.getMeasuredHeight());
            PopupLinkWebsiteBinding popupLinkWebsiteBinding4 = this.binding;
            if (popupLinkWebsiteBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                popupLinkWebsiteBinding4 = null;
            }
            ImageView image = popupLinkWebsiteBinding4.image;
            Intrinsics.checkNotNullExpressionValue(image, "image");
            com.onyx.android.sdk.base.extension.ViewKt.setLayoutParams(image, defaultIfZero, defaultIfZero2);
        }
        GlideExt glideExt = GlideExt.INSTANCE;
        PopupLinkWebsiteBinding popupLinkWebsiteBinding5 = this.binding;
        if (popupLinkWebsiteBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupLinkWebsiteBinding = popupLinkWebsiteBinding5;
        }
        ImageView image2 = popupLinkWebsiteBinding.image;
        Intrinsics.checkNotNullExpressionValue(image2, "image");
        GlideExt.load$default(glideExt, image2, getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getValue(), null, 2, null);
    }
}
