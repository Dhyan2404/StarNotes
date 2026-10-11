.class public Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->N(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->b:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->b:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->b:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->C(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Landroid/os/Bundle;)V

    return-void

    :cond_0
    sget p1, Lcom/onyx/android/sdk/imagepicker/R$string;->permission_denied:I

    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->b:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->b:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->b:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->C(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Landroid/os/Bundle;)V

    return-void
.end method
