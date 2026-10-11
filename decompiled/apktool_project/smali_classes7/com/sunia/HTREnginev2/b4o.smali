.class public final synthetic Lcom/sunia/HTREnginev2/b4o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b4o;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b4o;->e:Landroid/view/View;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->h(Landroid/view/View;)V

    return-void
.end method
