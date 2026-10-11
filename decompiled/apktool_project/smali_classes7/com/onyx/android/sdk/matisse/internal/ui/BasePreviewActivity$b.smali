.class public Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->E(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_original_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v2, v2, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v2, v2, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-boolean v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->F(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-boolean v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->F(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mOriginalEnable:Z

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;->onCheck(Z)V

    :cond_2
    return-void
.end method
