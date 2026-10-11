.class public final synthetic Lcom/sunia/HTREnginev2/g2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$j;

.field public final synthetic f:Ljava/util/concurrent/Executor;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$j;Ljava/util/concurrent/Executor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g2j;->e:Landroidx/core/location/LocationManagerCompat$j;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/g2j;->f:Ljava/util/concurrent/Executor;

    iput p3, p0, Lcom/sunia/HTREnginev2/g2j;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g2j;->e:Landroidx/core/location/LocationManagerCompat$j;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/g2j;->f:Ljava/util/concurrent/Executor;

    iget p0, p0, Lcom/sunia/HTREnginev2/g2j;->g:I

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$j;->a(Landroidx/core/location/LocationManagerCompat$j;Ljava/util/concurrent/Executor;I)V

    return-void
.end method
