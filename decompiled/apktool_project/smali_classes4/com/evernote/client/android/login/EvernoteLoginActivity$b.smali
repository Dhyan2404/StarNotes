.class public Lcom/evernote/client/android/login/EvernoteLoginActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/login/EvernoteLoginActivity;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/evernote/client/android/login/EvernoteLoginActivity;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/login/EvernoteLoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;->f:Lcom/evernote/client/android/login/EvernoteLoginActivity;

    iput-object p2, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;->f:Lcom/evernote/client/android/login/EvernoteLoginActivity;

    invoke-static {v0}, Lcom/evernote/client/android/login/EvernoteLoginActivity;->b(Lcom/evernote/client/android/login/EvernoteLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;->f:Lcom/evernote/client/android/login/EvernoteLoginActivity;

    sget v2, Lcom/evernote/androidsdk/R$string;->esdk_switch_to:I

    iget-object v3, p0, Lcom/evernote/client/android/login/EvernoteLoginActivity$b;->e:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/evernote/client/android/login/EvernoteLoginActivity$b$a;

    invoke-direct {v1, p0}, Lcom/evernote/client/android/login/EvernoteLoginActivity$b$a;-><init>(Lcom/evernote/client/android/login/EvernoteLoginActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
