package com.onyx.galaxy.note.account.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.account.view.dialog.WechatLoginDialog;
import com.onyx.galaxy.note.databinding.DialogWechatLoginBinding;
import com.onyx.galaxy.note.utils.ServiceUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B@\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0015\u0012!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00040\u0019¢\u0006\u0004\b/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\rH\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R/\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u0016\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R$\u0010.\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "show", "dismiss", "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;", NotificationCompat.CATEGORY_EVENT, "onNetworkStatusChangeEvent", "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatLoadFinishedEvent;", "onWechatLoadFinishedEvent", "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;", "onLoadQrUrl", C6998g.f39679a, "l", "e", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lkotlin/Function0;", C6997f.f39671c, "Lkotlin/jvm/functions/Function0;", "appLoginFunc", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "code", "Lkotlin/jvm/functions/Function1;", "qrLoginFunc", "Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;", C6999h.f39688c, "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;", "binding", "", "i", Constants.HASIDCALL_INDEX_SIG, "isLoading", "Lcom/bumptech/glide/request/target/ViewTarget;", "Landroid/widget/ImageView;", "Landroid/graphics/drawable/Drawable;", "j", "Lcom/bumptech/glide/request/target/ViewTarget;", "viewTarget", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class WechatLoginDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> appLoginFunc;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Function1<String, Unit> qrLoginFunc;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isLoading;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ViewTarget<ImageView, Drawable> viewTarget;

    /* renamed from: com.onyx.galaxy.note.account.view.dialog.WechatLoginDialog$a */
    /* loaded from: classes9.dex */
    public static final class C10733a<T> implements Consumer {
        public C10733a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WechatLoginDialog.this.m42053f().webLoadWidget.loadUrl(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.view.dialog.WechatLoginDialog$b */
    /* loaded from: classes9.dex */
    public static final class C10734b<T> implements Consumer {
        public C10734b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Notification<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            WechatLoginDialog.this.isLoading = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WechatLoginDialog(@NotNull Context context, @NotNull Function0<Unit> appLoginFunc, @NotNull Function1<? super String, Unit> qrLoginFunc) {
        super(context, C10651R.style.Custom_NoTitle_Dialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLoginFunc, "appLoginFunc");
        Intrinsics.checkNotNullParameter(qrLoginFunc, "qrLoginFunc");
        this.context = context;
        this.appLoginFunc = appLoginFunc;
        this.qrLoginFunc = qrLoginFunc;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogWechatLoginBinding>() { // from class: com.onyx.galaxy.note.account.view.dialog.WechatLoginDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogWechatLoginBinding invoke() {
                Context context2;
                context2 = WechatLoginDialog.this.context;
                return DialogWechatLoginBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: h */
    public static final void m42048h(WechatLoginDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42052e();
    }

    /* renamed from: i */
    public static final void m42049i(WechatLoginDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: j */
    public static final void m42050j(WechatLoginDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.appLoginFunc.invoke();
    }

    /* renamed from: k */
    public static final void m42051k(WechatLoginDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isLoading) {
            return;
        }
        this$0.m42055l();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        GlobalBundle.INSTANCE.unregister(this);
    }

    /* renamed from: e */
    public final void m42052e() {
        ViewTarget<ImageView, Drawable> viewTarget = this.viewTarget;
        if (viewTarget != null) {
            Glide.with(ResManager.INSTANCE.getAppContext()).clear(viewTarget);
        }
    }

    /* renamed from: f */
    public final DialogWechatLoginBinding m42053f() {
        return (DialogWechatLoginBinding) this.binding.getValue();
    }

    /* renamed from: g */
    public final void m42054g() {
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sunia.HTREnginev2.t6o
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WechatLoginDialog.m42048h(WechatLoginDialog.this, dialogInterface);
            }
        });
        m42053f().btnBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.u6o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WechatLoginDialog.m42049i(WechatLoginDialog.this, view);
            }
        });
        TintTextView btnAppLogin = m42053f().btnAppLogin;
        Intrinsics.checkNotNullExpressionValue(btnAppLogin, "btnAppLogin");
        ViewKt.click$default(btnAppLogin, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v6o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WechatLoginDialog.m42050j(WechatLoginDialog.this, view);
            }
        }, 1, null);
        m42053f().ivQr.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w6o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WechatLoginDialog.m42051k(WechatLoginDialog.this, view);
            }
        });
        m42055l();
    }

    /* renamed from: l */
    public final void m42055l() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<String> doOnEach = ServiceUtils.INSTANCE.loadWechatQrCodeUrl("login").doOnNext(new C10733a()).doOnEach(new C10734b());
        Intrinsics.checkNotNullExpressionValue(doOnEach, "doOnEach(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnEach, null, null, 3, null);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063326, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLoadQrUrl(@NotNull WechatLoadWebWidget.WechatQRCodeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m42052e();
        this.viewTarget = Glide.with(ResManager.INSTANCE.getAppContext()).load(event.getQrCodeUrl()).listener(new RequestListener<Drawable>() { // from class: com.onyx.galaxy.note.account.view.dialog.WechatLoginDialog$onLoadQrUrl$1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @Nullable Object model, @Nullable Target<Drawable> target, boolean isFirstResource) {
                WechatLoginDialog.this.isLoading = false;
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.dialog_wechat_app_qr_fail, false, 2, (Object) null);
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(@Nullable Drawable resource, @Nullable Object model, @Nullable Target<Drawable> target, @Nullable DataSource dataSource, boolean isFirstResource) {
                WechatLoginDialog.this.isLoading = false;
                return false;
            }
        }).placeholder(C10651R.drawable.icon_holder_logo).error(C10651R.drawable.icon_holder_retry).into(m42053f().ivQr);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNetworkStatusChangeEvent(@NotNull NetworkStatusChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConnected()) {
            m42055l();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onWechatLoadFinishedEvent(@NotNull WechatLoadWebWidget.WechatLoadFinishedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.qrLoginFunc.invoke(event.getCode());
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        GlobalBundle.INSTANCE.register(this);
    }
}
