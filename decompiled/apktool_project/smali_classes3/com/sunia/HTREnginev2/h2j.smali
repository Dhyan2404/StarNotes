.class public final synthetic Lcom/sunia/HTREnginev2/h2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$j;

.field public final synthetic f:Ljava/util/concurrent/Executor;

.field public final synthetic g:Landroidx/core/location/GnssStatusCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$j;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h2j;->e:Landroidx/core/location/LocationManagerCompat$j;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/h2j;->f:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/h2j;->g:Landroidx/core/location/GnssStatusCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h2j;->e:Landroidx/core/location/LocationManagerCompat$j;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/h2j;->f:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h2j;->g:Landroidx/core/location/GnssStatusCompat;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$j;->b(Landroidx/core/location/LocationManagerCompat$j;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    return-void
.end method
