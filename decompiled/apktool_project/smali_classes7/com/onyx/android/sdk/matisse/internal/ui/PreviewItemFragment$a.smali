.class public Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

.field public final synthetic f:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;->f:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;->e:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;->e:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    const-string v1, "video/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;->f:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;->f:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$string;->error_no_video_activity:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
