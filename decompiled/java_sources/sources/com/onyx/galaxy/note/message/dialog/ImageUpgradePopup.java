package com.onyx.galaxy.note.message.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
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
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.PopupUpgradeImageBinding;
import com.onyx.galaxy.note.message.dialog.ImageUpgradePopup;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "", "initContentView", "r", "p", "Lcom/onyx/galaxy/note/databinding/PopupUpgradeImageBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupUpgradeImageBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ImageUpgradePopup extends NotificationBasePopup {

    /* renamed from: s, reason: from kotlin metadata */
    public PopupUpgradeImageBinding binding;

    /* renamed from: com.onyx.galaxy.note.message.dialog.ImageUpgradePopup$a */
    /* loaded from: classes9.dex */
    public static final class C12624a<T> implements Consumer {
        public C12624a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
            notificationDisplayHandler.onPrimaryButtonClick(ImageUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
            notificationDisplayHandler.navigateWithStrategy(ImageUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getNavType(), ImageUpgradePopup.this.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getArgs());
            ImageUpgradePopup imageUpgradePopup = ImageUpgradePopup.this;
            notificationDisplayHandler.closeWithStrategy(imageUpgradePopup, imageUpgradePopup.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getCloseStrategy());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageUpgradePopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, notification, viewModel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        m50561r();
        m50560p();
    }

    /* renamed from: q */
    public static final void m50558q(ImageUpgradePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String());
        notificationDisplayHandler.navigateWithStrategy(this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getNavType(), this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getArgs());
        notificationDisplayHandler.closeWithStrategy(this$0, this$0.getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getCloseStrategy());
    }

    /* renamed from: s */
    public static final void m50559s(ImageUpgradePopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        PopupUpgradeImageBinding popupUpgradeImageBinding = this$0.binding;
        PopupUpgradeImageBinding popupUpgradeImageBinding2 = null;
        if (popupUpgradeImageBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeImageBinding = null;
        }
        TintLinearLayout dialogRoot = popupUpgradeImageBinding.dialogRoot;
        Intrinsics.checkNotNullExpressionValue(dialogRoot, "dialogRoot");
        ViewKt.clipToRoundRect(dialogRoot, Integer.valueOf(dimens));
        PopupUpgradeImageBinding popupUpgradeImageBinding3 = this$0.binding;
        if (popupUpgradeImageBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeImageBinding3 = null;
        }
        ImageView image = popupUpgradeImageBinding3.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.clipToRoundRect(image, Integer.valueOf(dimens / 2));
        PopupUpgradeImageBinding popupUpgradeImageBinding4 = this$0.binding;
        if (popupUpgradeImageBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeImageBinding2 = popupUpgradeImageBinding4;
        }
        ViewKt.setViewVisibleOrInvisible(popupUpgradeImageBinding2.dialogRoot, true);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupUpgradeImageBinding inflate = PopupUpgradeImageBinding.inflate(LayoutInflater.from(getContext()));
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
    public final void m50560p() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        PopupUpgradeImageBinding popupUpgradeImageBinding = this.binding;
        PopupUpgradeImageBinding popupUpgradeImageBinding2 = null;
        if (popupUpgradeImageBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeImageBinding = null;
        }
        TextView confirmButton = popupUpgradeImageBinding.confirmButton;
        Intrinsics.checkNotNullExpressionValue(confirmButton, "confirmButton");
        Observable<Unit> doOnNext = RxView.clicks(confirmButton).doOnNext(new C12624a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
        PopupUpgradeImageBinding popupUpgradeImageBinding3 = this.binding;
        if (popupUpgradeImageBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeImageBinding2 = popupUpgradeImageBinding3;
        }
        TintTextView cancelButton = popupUpgradeImageBinding2.cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.bhi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageUpgradePopup.m50558q(ImageUpgradePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: r */
    public final void m50561r() {
        PopupUpgradeImageBinding popupUpgradeImageBinding = this.binding;
        PopupUpgradeImageBinding popupUpgradeImageBinding2 = null;
        if (popupUpgradeImageBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeImageBinding = null;
        }
        popupUpgradeImageBinding.titleText.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getTitle().getValue());
        PopupUpgradeImageBinding popupUpgradeImageBinding3 = this.binding;
        if (popupUpgradeImageBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeImageBinding3 = null;
        }
        popupUpgradeImageBinding3.confirmButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton1().getValue());
        PopupUpgradeImageBinding popupUpgradeImageBinding4 = this.binding;
        if (popupUpgradeImageBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeImageBinding4 = null;
        }
        popupUpgradeImageBinding4.cancelButton.setText(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getButton2().getValue());
        GlideExt glideExt = GlideExt.INSTANCE;
        PopupUpgradeImageBinding popupUpgradeImageBinding5 = this.binding;
        if (popupUpgradeImageBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupUpgradeImageBinding5 = null;
        }
        ImageView image = popupUpgradeImageBinding5.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        GlideExt.load$default(glideExt, image, getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getImage().getValue(), null, 2, null);
        PopupUpgradeImageBinding popupUpgradeImageBinding6 = this.binding;
        if (popupUpgradeImageBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupUpgradeImageBinding2 = popupUpgradeImageBinding6;
        }
        popupUpgradeImageBinding2.dialogRoot.post(new Runnable() { // from class: com.sunia.HTREnginev2.ahi
            @Override // java.lang.Runnable
            public final void run() {
                ImageUpgradePopup.m50559s(ImageUpgradePopup.this);
            }
        });
    }
}
