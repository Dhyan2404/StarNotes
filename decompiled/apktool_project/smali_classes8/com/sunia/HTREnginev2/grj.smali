.class public final synthetic Lcom/sunia/HTREnginev2/grj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/NameEditDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/grj;->e:Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/grj;->f:Lcom/onyx/android/sdk/ui/NameEditDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/grj;->e:Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/grj;->f:Lcom/onyx/android/sdk/ui/NameEditDialog;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->a(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;Landroid/view/View;)V

    return-void
.end method
