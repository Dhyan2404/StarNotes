.class public final synthetic Lcom/sunia/HTREnginev2/e4o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e4o;->e:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e4o;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e4o;->e:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e4o;->f:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->c(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method
