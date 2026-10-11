.class public final synthetic Lcom/sunia/HTREnginev2/r2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$n;

.field public final synthetic f:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$n;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r2j;->e:Landroidx/core/location/LocationManagerCompat$n;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r2j;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r2j;->e:Landroidx/core/location/LocationManagerCompat$n;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r2j;->f:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Landroidx/core/location/LocationManagerCompat$n;->a(Landroidx/core/location/LocationManagerCompat$n;Ljava/util/concurrent/Executor;)V

    return-void
.end method
