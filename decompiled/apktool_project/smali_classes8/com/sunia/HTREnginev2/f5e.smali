.class public final synthetic Lcom/sunia/HTREnginev2/f5e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/CommonDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/ui/CommonDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f5e;->e:Lcom/onyx/android/sdk/ui/CommonDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f5e;->f:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f5e;->e:Lcom/onyx/android/sdk/ui/CommonDialog;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f5e;->f:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->b(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V

    return-void
.end method
