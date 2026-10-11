.class public Lcom/evernote/client/android/EvernoteOAuthActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;
    }
.end annotation


# static fields
.field public static final t0:Lcom/evernote/client/android/helper/Cat;

.field public static final u0:Ljava/lang/String; = "www.evernote.com"

.field public static final v0:Ljava/lang/String; = "sandbox.evernote.com"

.field public static final w0:Ljava/lang/String; = "app.yinxiang.com"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/client/android/helper/Cat;

    const-string v1, "EvernoteOAuthActivity"

    invoke-direct {v0, v1}, Lcom/evernote/client/android/helper/Cat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/client/android/EvernoteOAuthActivity;->t0:Lcom/evernote/client/android/helper/Cat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "authorization_url"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic z(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->A(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oauth_callback_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v1, -0x54fffffe

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
