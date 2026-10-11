.class public final Lcom/sunia/HTREnginev2/t9p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/jbp;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t9p;->d:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t9p;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/t9p;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/t9p;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/t9p;->d:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t9p;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/t9p;->b:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t9p;->c:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zaa()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
