.class public final Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$b;->e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/core/Notification;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Notification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Notification<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$b;->e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->access$setLoading$p(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/core/Notification;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$b;->a(Lio/reactivex/rxjava3/core/Notification;)V

    return-void
.end method
