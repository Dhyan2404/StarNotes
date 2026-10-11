.class public final synthetic Lcom/sunia/HTREnginev2/x3o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x3o;->e:Landroid/view/View;

    iput p2, p0, Lcom/sunia/HTREnginev2/x3o;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/x3o;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x3o;->e:Landroid/view/View;

    iget v1, p0, Lcom/sunia/HTREnginev2/x3o;->f:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x3o;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->e(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method
