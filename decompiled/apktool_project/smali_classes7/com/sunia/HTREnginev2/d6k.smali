.class public final synthetic Lcom/sunia/HTREnginev2/d6k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d6k;->e:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d6k;->e:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->r0(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
