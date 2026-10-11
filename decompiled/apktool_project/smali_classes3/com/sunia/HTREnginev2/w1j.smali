.class public final synthetic Lcom/sunia/HTREnginev2/w1j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Landroid/location/LocationManager;

.field public final synthetic f:Landroidx/core/location/LocationManagerCompat$j;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w1j;->e:Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w1j;->f:Landroidx/core/location/LocationManagerCompat$j;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w1j;->e:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w1j;->f:Landroidx/core/location/LocationManagerCompat$j;

    invoke-static {v0, p0}, Landroidx/core/location/LocationManagerCompat;->b(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$j;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
