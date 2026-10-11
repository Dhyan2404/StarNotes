.class public Landroidx/core/location/LocationManagerCompat$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public volatile a:Landroidx/core/location/LocationManagerCompat$l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/core/location/LocationManagerCompat$l;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Landroidx/core/location/LocationManagerCompat$l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroidx/core/location/LocationManagerCompat$m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$m;->l(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Landroidx/core/location/LocationManagerCompat$m;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/location/LocationManagerCompat$m;->m(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Landroidx/core/location/LocationManagerCompat$m;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$m;->j(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Landroidx/core/location/LocationManagerCompat$m;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$m;->h(I)V

    return-void
.end method

.method public static synthetic e(Landroidx/core/location/LocationManagerCompat$m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$m;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Landroidx/core/location/LocationManagerCompat$m;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/location/LocationManagerCompat$m;->i(Landroid/location/Location;)V

    return-void
.end method

.method private synthetic h(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {p0, p1}, Landroidx/core/location/LocationListenerCompat;->onFlushComplete(I)V

    return-void
.end method

.method private synthetic i(Landroid/location/Location;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method private synthetic j(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {p0, p1}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic k(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {p0, p1}, Landroidx/core/location/LocationListenerCompat;->onProviderDisabled(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {p0, p1}, Landroidx/core/location/LocationListenerCompat;->onProviderEnabled(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic m(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$l;->b:Landroidx/core/location/LocationListenerCompat;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/location/LocationListenerCompat;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public g()Landroidx/core/location/LocationManagerCompat$l;
    .locals 0

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/location/LocationManagerCompat$l;

    return-object p0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    return-void
.end method

.method public onFlushComplete(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/j2j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/j2j;-><init>(Landroidx/core/location/LocationManagerCompat$m;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/m2j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/m2j;-><init>(Landroidx/core/location/LocationManagerCompat$m;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/k2j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/k2j;-><init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/l2j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/l2j;-><init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/i2j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/i2j;-><init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->a:Landroidx/core/location/LocationManagerCompat$l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/n2j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/n2j;-><init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
