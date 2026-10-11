.class public final synthetic Lcom/sunia/HTREnginev2/e5e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e5e;->e:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e5e;->e:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->e(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V

    return-void
.end method
