package com.onyx.galaxy.note.message.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.galaxy.note.databinding.PopupWebViewBinding;
import com.onyx.galaxy.note.message.viewmodel.NotificationViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;", "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;", "", "initContentView", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", FunctionKey.NOTIFICATION, "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class WebViewPopup extends NotificationBasePopup {

    /* renamed from: s, reason: from kotlin metadata */
    public PopupWebViewBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewPopup(@NotNull Context context, @NotNull NotificationModel notification, @NotNull NotificationViewModel viewModel) {
        super(context, notification, viewModel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        m50609n();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(false);
        setOutsideTouchable(false);
        setWidth(-1);
        setHeight(-1);
        PopupWebViewBinding inflate = PopupWebViewBinding.inflate(LayoutInflater.from(getContext()));
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

    /* renamed from: n */
    public final void m50609n() {
        WebViewPopup$initView$callback$1 webViewPopup$initView$callback$1 = new WebViewPopup$initView$callback$1(this);
        PopupWebViewBinding popupWebViewBinding = this.binding;
        PopupWebViewBinding popupWebViewBinding2 = null;
        if (popupWebViewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupWebViewBinding = null;
        }
        popupWebViewBinding.webView.setWebViewCallback(webViewPopup$initView$callback$1);
        PopupWebViewBinding popupWebViewBinding3 = this.binding;
        if (popupWebViewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupWebViewBinding3 = null;
        }
        popupWebViewBinding3.webView.registerNativeObject("native", webViewPopup$initView$callback$1);
        PopupWebViewBinding popupWebViewBinding4 = this.binding;
        if (popupWebViewBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupWebViewBinding2 = popupWebViewBinding4;
        }
        popupWebViewBinding2.webView.openWebpage(getCom.onyx.android.sdk.data.common.data.FunctionKey.NOTIFICATION java.lang.String().getComponents().getWebview().getValue());
    }
}
