.class public Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause$Form;
    }
.end annotation


# static fields
.field public static final DIALOG:I = 0x1

.field public static final NONE:I = 0x2

.field public static final TOAST:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->a:I

    .line 10
    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->a:I

    .line 13
    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->b:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->a:I

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->a:I

    .line 6
    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    return-void
.end method

.method public static handleCause(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    move-result-object p1

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
