.class public final Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$a;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$a;->e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$a;->e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->access$getBinding(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogWechatLoginBinding;->webLoadWidget:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog$a;->a(Ljava/lang/String;)V

    return-void
.end method
