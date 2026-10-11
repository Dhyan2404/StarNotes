.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
