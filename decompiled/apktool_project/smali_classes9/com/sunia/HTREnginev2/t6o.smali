.class public final synthetic Lcom/sunia/HTREnginev2/t6o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t6o;->e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t6o;->e:Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;->a(Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
