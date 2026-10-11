.class public final synthetic Lcom/sunia/HTREnginev2/d5e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/CommonDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d5e;->e:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d5e;->f:Lcom/onyx/android/sdk/ui/CommonDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d5e;->e:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d5e;->f:Lcom/onyx/android/sdk/ui/CommonDialog;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->d(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;Landroid/view/View;)V

    return-void
.end method
