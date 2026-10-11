.class public final Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/statistics/AuthResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/LoginFragment;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1",
        "Lcom/onyx/android/sdk/statistics/AuthResultListener;",
        "onCancel",
        "",
        "p1",
        "",
        "onComplete",
        "data",
        "",
        "",
        "onError",
        "t",
        "",
        "onStart",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/account/ui/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->a:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->f()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->d()V

    return-void
.end method

.method public static final d()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    const-string v3, "wechat login onCancel"

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final e(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wechat login error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-virtual {v0, v3, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->login_fail:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final f()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    const-string v3, "wechat login onStart"

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->a:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getHandler$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/n4j;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/n4j;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComplete(ILjava/util/Map;)V
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wechat login onComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-virtual {p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->a:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p0, p2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$wechatAppLoginByParams(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Ljava/util/Map;)V

    return-void
.end method

.method public onError(ILjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->a:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getHandler$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/l4j;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/l4j;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;->a:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getHandler$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/m4j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/m4j;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
