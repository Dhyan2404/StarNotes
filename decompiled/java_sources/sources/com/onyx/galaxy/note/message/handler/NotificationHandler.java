package com.onyx.galaxy.note.message.handler;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutBannerNotificationBinding;
import com.onyx.galaxy.note.databinding.LayoutSidebarNotificationBinding;
import com.onyx.galaxy.note.message.dialog.ImageGuidePopup;
import com.onyx.galaxy.note.message.dialog.ImageUpgradePopup;
import com.onyx.galaxy.note.message.dialog.MixGuidePopup;
import com.onyx.galaxy.note.message.dialog.MixUpgradePopup;
import com.onyx.galaxy.note.message.dialog.RedBookLinkPopup;
import com.onyx.galaxy.note.message.dialog.ReleaseNotePopup;
import com.onyx.galaxy.note.message.dialog.TextGuidePopup;
import com.onyx.galaxy.note.message.dialog.TextUpgradePopup;
import com.onyx.galaxy.note.message.dialog.WebViewPopup;
import com.onyx.galaxy.note.message.dialog.WebsiteLinkPopup;
import com.onyx.galaxy.note.message.handler.NotificationHandler;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.onyx.galaxy.note.p048ui.view.RatioImageView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b$\u0010%J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0014R\u0017\u0010 \u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010#\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b!\u0010\u001d\u001a\u0004\b\"\u0010\u001f¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/handler/NotificationHandler;", "", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Landroid/view/View;", "parentView", "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", "", "onNotification", "handleTextUpgradeNotification", "handleImageUpgradeNotification", "handleMixUpgradeNotification", "handleTextGuideNotification", "handleImageGuideNotification", "handleMixGuideNotification", "handleReleaseNoteNotification", "handleWebsiteLinkNotification", "handleRedBookLinkNotification", "handleWebViewNotification", "Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;", "binding", "notificationViewModel", "handleSidebarNotification", "Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;", "handleBannerNotification", "loadSidebarImage", "", "a", "I", "getDefaultCoverWidth", "()I", "defaultCoverWidth", "b", "getDefaultCoverHeight", "defaultCoverHeight", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NotificationHandler {

    @NotNull
    public static final NotificationHandler INSTANCE = new NotificationHandler();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int defaultCoverWidth;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int defaultCoverHeight;

    static {
        ResManager resManager = ResManager.INSTANCE;
        defaultCoverWidth = resManager.getInteger(C10651R.integer.default_notification_cover_width);
        defaultCoverHeight = resManager.getInteger(C10651R.integer.default_notification_cover_height);
    }

    /* renamed from: d */
    public static final void m50623d(NotificationModel notification, View view) {
        Intrinsics.checkNotNullParameter(notification, "$notification");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onPrimaryButtonClick(notification);
        notificationDisplayHandler.navigateWithStrategy(notification.getComponents().getImage().getNavType(), notification.getComponents().getImage().getArgs());
    }

    /* renamed from: e */
    public static final void m50624e(NotificationModel notification, LayoutSidebarNotificationBinding binding, NotificationViewModel notificationViewModel, View view) {
        Intrinsics.checkNotNullParameter(notification, "$notification");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(notificationViewModel, "$notificationViewModel");
        NotificationDisplayHandler notificationDisplayHandler = NotificationDisplayHandler.INSTANCE;
        notificationDisplayHandler.onSecondaryButtonClick(notification);
        notificationDisplayHandler.navigateWithStrategy(notification.getComponents().getButton2().getNavType(), notification.getComponents().getButton2().getArgs());
        ViewKt.setViewVisibleOrGone(binding.container, false);
        notificationViewModel.setSidebarNotificationClosed(true);
    }

    /* renamed from: f */
    public static final void m50625f(LayoutSidebarNotificationBinding binding, float f) {
        Intrinsics.checkNotNullParameter(binding, "$binding");
        final int measuredWidth = (int) (binding.image.getMeasuredWidth() / f);
        RatioImageView image = binding.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.setLayoutParams(image, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.message.handler.NotificationHandler$handleSidebarNotification$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                setLayoutParams.height = measuredWidth;
            }
        });
        INSTANCE.loadSidebarImage(binding);
    }

    public final int getDefaultCoverHeight() {
        return defaultCoverHeight;
    }

    public final int getDefaultCoverWidth() {
        return defaultCoverWidth;
    }

    public final void handleBannerNotification(@NotNull NotificationModel notification, @NotNull LayoutBannerNotificationBinding binding) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(binding, "binding");
        ViewKt.setViewVisibleOrGone(binding.getRoot(), true);
        binding.contentText.setText(notification.getComponents().getContent().getValue());
        binding.getRoot().setTag(C10651R.id.tag_key_data, notification);
    }

    public final void handleImageGuideNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new ImageGuidePopup(context, notification, viewModel), parentView);
    }

    public final void handleImageUpgradeNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new ImageUpgradePopup(context, notification, viewModel), parentView);
    }

    public final void handleMixGuideNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new MixGuidePopup(context, notification, viewModel), parentView);
    }

    public final void handleMixUpgradeNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new MixUpgradePopup(context, notification, viewModel), parentView);
    }

    public final void handleRedBookLinkNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new RedBookLinkPopup(context, notification, viewModel), parentView);
    }

    public final void handleReleaseNoteNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new ReleaseNotePopup(context, notification, viewModel), parentView);
    }

    public final void handleSidebarNotification(@NotNull final NotificationModel notification, @NotNull final LayoutSidebarNotificationBinding binding, @NotNull final NotificationViewModel notificationViewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(notificationViewModel, "notificationViewModel");
        binding.getRoot().setTag(notification);
        ImageView closeButton = binding.closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        final float defaultIfZero = IntKt.defaultIfZero(notification.getComponents().getImage().getWidth(), defaultCoverWidth) / IntKt.defaultIfZero(notification.getComponents().getImage().getHeight(), defaultCoverHeight);
        RatioImageView image = binding.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        RatioImageView.setWidthHeightRatio$default(image, defaultIfZero, false, true, 2, null);
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8);
        RatioImageView image2 = binding.image;
        Intrinsics.checkNotNullExpressionValue(image2, "image");
        ViewKt.clipToRoundRect(image2, Integer.valueOf(dimens));
        RatioImageView image3 = binding.image;
        Intrinsics.checkNotNullExpressionValue(image3, "image");
        com.onyx.android.sdk.extension.ViewKt.click$default(image3, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k5k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotificationHandler.m50623d(NotificationModel.this, view);
            }
        }, 1, null);
        com.onyx.android.sdk.extension.ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l5k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotificationHandler.m50624e(NotificationModel.this, binding, notificationViewModel, view);
            }
        }, 1, null);
        binding.image.post(new Runnable() { // from class: com.sunia.HTREnginev2.m5k
            @Override // java.lang.Runnable
            public final void run() {
                NotificationHandler.m50625f(LayoutSidebarNotificationBinding.this, defaultIfZero);
            }
        });
    }

    public final void handleTextGuideNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new TextGuidePopup(context, notification, viewModel), parentView);
    }

    public final void handleTextUpgradeNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new TextUpgradePopup(context, notification, viewModel), parentView);
    }

    public final void handleWebViewNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new WebViewPopup(context, notification, viewModel), parentView);
    }

    public final void handleWebsiteLinkNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Context context = parentView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PopupExtKt.showFullScreen(new WebsiteLinkPopup(context, notification, viewModel), parentView);
    }

    public final void loadSidebarImage(@NotNull final LayoutSidebarNotificationBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Object tag = binding.getRoot().getTag();
        NotificationModel notificationModel = tag instanceof NotificationModel ? (NotificationModel) tag : null;
        if (notificationModel == null) {
            return;
        }
        String value = notificationModel.getComponents().getImage().getValue();
        GlideExt glideExt = GlideExt.INSTANCE;
        RequestBuilder<Drawable> load = Glide.with(binding.image).load(value);
        Intrinsics.checkNotNullExpressionValue(load, "load(...)");
        glideExt.doOnError(glideExt.doOnNext(load, new Function1<Drawable, Unit>() { // from class: com.onyx.galaxy.note.message.handler.NotificationHandler$loadSidebarImage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Drawable drawable) {
                invoke2(drawable);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Drawable drawable) {
                ViewKt.setViewVisibleOrGone(LayoutSidebarNotificationBinding.this.container, true);
            }
        }), new Function1<GlideException, Unit>() { // from class: com.onyx.galaxy.note.message.handler.NotificationHandler$loadSidebarImage$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GlideException glideException) {
                invoke2(glideException);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GlideException it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ViewKt.setViewVisibleOrGone(LayoutSidebarNotificationBinding.this.container, false);
            }
        }).into(binding.image);
    }

    public final void onNotification(@NotNull NotificationModel notification, @NotNull View parentView, @NotNull NotificationViewModel viewModel) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        int type = notification.getType();
        if (type == 121) {
            handleReleaseNoteNotification(notification, parentView, viewModel);
            return;
        }
        if (type == 161) {
            handleWebViewNotification(notification, parentView, viewModel);
            return;
        }
        if (type == 131) {
            handleWebsiteLinkNotification(notification, parentView, viewModel);
            return;
        }
        if (type == 132) {
            handleRedBookLinkNotification(notification, parentView, viewModel);
            return;
        }
        switch (type) {
            case 101:
                handleTextUpgradeNotification(notification, parentView, viewModel);
                return;
            case 102:
                handleImageUpgradeNotification(notification, parentView, viewModel);
                return;
            case 103:
                handleMixUpgradeNotification(notification, parentView, viewModel);
                return;
            default:
                switch (type) {
                    case 111:
                        handleTextGuideNotification(notification, parentView, viewModel);
                        return;
                    case 112:
                        handleImageGuideNotification(notification, parentView, viewModel);
                        return;
                    case 113:
                        handleMixGuideNotification(notification, parentView, viewModel);
                        return;
                    default:
                        return;
                }
        }
    }
}
