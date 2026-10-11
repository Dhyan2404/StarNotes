.class public final Lcom/sunia/HTREnginev2/xap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/jbp;


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Landroid/view/LayoutInflater;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xap;->e:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xap;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xap;->b:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/xap;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/xap;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 3

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xap;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xap;->e:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xap;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xap;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xap;->d:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xap;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final zaa()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
