.class public final synthetic Lcom/sunia/HTREnginev2/p2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$n;

.field public final synthetic f:Ljava/util/concurrent/Executor;

.field public final synthetic g:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$n;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p2j;->e:Landroidx/core/location/LocationManagerCompat$n;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p2j;->f:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/p2j;->g:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p2j;->e:Landroidx/core/location/LocationManagerCompat$n;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/p2j;->f:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p2j;->g:Landroid/location/GnssStatus;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$n;->b(Landroidx/core/location/LocationManagerCompat$n;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    return-void
.end method
