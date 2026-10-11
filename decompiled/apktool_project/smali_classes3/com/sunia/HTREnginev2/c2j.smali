.class public final synthetic Lcom/sunia/HTREnginev2/c2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$h;

.field public final synthetic f:Ljava/util/concurrent/Executor;

.field public final synthetic g:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$h;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c2j;->e:Landroidx/core/location/LocationManagerCompat$h;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/c2j;->f:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/c2j;->g:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2j;->e:Landroidx/core/location/LocationManagerCompat$h;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/c2j;->f:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c2j;->g:Landroid/location/GnssMeasurementsEvent;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$h;->b(Landroidx/core/location/LocationManagerCompat$h;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method
