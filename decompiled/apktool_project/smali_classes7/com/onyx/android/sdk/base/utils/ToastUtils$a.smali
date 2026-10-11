.class public final Lcom/onyx/android/sdk/base/utils/ToastUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/utils/ToastUtils;->a(Landroid/content/Context;Ljava/lang/CharSequence;ZI[Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->e:Landroid/content/Context;

    iput p2, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->f:I

    iput-object p3, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->g:Landroid/view/View;

    iput-boolean p4, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->f:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->h:Z

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils$a;->a(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
