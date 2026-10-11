.class public final Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B@\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0015\u0012!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00040\u0019\u00a2\u0006\u0004\u0008/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\rH\u0007J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R/\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008\u0016\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R$\u0010.\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "show",
        "dismiss",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "event",
        "onNetworkStatusChangeEvent",
        "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatLoadFinishedEvent;",
        "onWechatLoadFinishedEvent",
        "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;",
        "onLoadQrUrl",
        "g",
        "l",
        "e",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function0;",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "appLoginFunc",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "code",
        "Lkotlin/jvm/functions/Function1;",
        "qrLoginFunc",
        "Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;",
        "h",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;",
        "binding",
        "",
        "i",
        "Z",
        "isLoading",
        "Lcom/bumptech/glide/request/target/ViewTarget;",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/drawable/Drawable;",
        "j",
        "Lcom/bumptech/glide/request/target/ViewTarget;",
        "viewTarget",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z

.field public j:Lcom/bumptech/glide/request/target/ViewTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appLoginFunc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qrLoginFunc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->Custom_NoTitle_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->f:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->g:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->h(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setLoading$p(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->i:Z

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->j(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->i(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->k(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->e()V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->dismiss()V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->i:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->l()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->j:Lcom/bumptech/glide/request/target/ViewTarget;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_0
    return-void
.end method

.method public final f()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;

    return-object p0
.end method

.method public final g()V
    .locals 7

    new-instance v0, Lcom/sunia/HTREnginev2/t6o;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/t6o;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/u6o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u6o;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;->btnAppLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnAppLogin"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/v6o;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/v6o;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;->ivQr:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/w6o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w6o;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->l()V

    return-void
.end method

.method public final l()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object v1, Lcom/onyx/galaxy/note/utils/ServiceUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ServiceUtils;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/utils/ServiceUtils;->loadWechatQrCodeUrl(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$a;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$b;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnEach(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnEach(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffde

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onLoadQrUrl(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->e()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;->getQrCodeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$onLoadQrUrl$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$onLoadQrUrl$1;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_holder_logo:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_holder_retry:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;->ivQr:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->j:Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final onNetworkStatusChangeEvent(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->l()V

    :cond_0
    return-void
.end method

.method public final onWechatLoadFinishedEvent(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatLoadFinishedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatLoadFinishedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->g:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatLoadFinishedEvent;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method
