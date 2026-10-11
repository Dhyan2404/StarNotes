.class public final Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "onDestroyView",
        "onResume",
        "n0",
        "",
        "event",
        "m0",
        "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;",
        "e1",
        "Lkotlin/Lazy;",
        "l0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;",
        "wechatViewModel",
        "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;",
        "f1",
        "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;",
        "loadingDrawable",
        "<init>",
        "()V",
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
.field public d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment$wechatViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment$wechatViewModel$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    return-void
.end method

.method public static final synthetic access$handleEvent(Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->m0(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    return-object p0
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/onyx/galaxy/note/account/event/VerifySuccessEvent;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/account/event/VerifySuccessEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/event/VerifySuccessEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->reset()V

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/onyx/galaxy/note/account/event/RefreshQrCodeEvent;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    check-cast p1, Lcom/onyx/galaxy/note/account/event/RefreshQrCodeEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/RefreshQrCodeEvent;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/onyx/galaxy/note/account/event/LoadQrCodeEvent;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->webWidget:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    check-cast p1, Lcom/onyx/galaxy/note/account/event/LoadQrCodeEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/LoadQrCodeEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/LoadQrCodeEvent;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->loadUrlWithHeader(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final n0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment$initLayout$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment$initLayout$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->webWidget:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->getWebView()Lcom/onyx/galaxy/note/utils/AutoCloseWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/utils/AutoCloseWebView;->enableAutoClose(Z)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->setWechatViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->n0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->releaseWechatTimer()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->webWidget:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->getWebView()Lcom/onyx/galaxy/note/utils/AutoCloseWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyWechatFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
