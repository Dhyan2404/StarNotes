.class public final Lcom/sunia/HTREnginev2/y8p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y8p;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelegateCreated(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y8p;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {v0, p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->c(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/y8p;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->b(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/jbp;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/y8p;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/jbp;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/y8p;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->b(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y8p;->a:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->d(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)V

    return-void
.end method
