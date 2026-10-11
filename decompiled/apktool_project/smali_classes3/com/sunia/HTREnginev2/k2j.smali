.class public final synthetic Lcom/sunia/HTREnginev2/k2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$m;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$m;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k2j;->e:Landroidx/core/location/LocationManagerCompat$m;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k2j;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2j;->e:Landroidx/core/location/LocationManagerCompat$m;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2j;->f:Ljava/util/List;

    invoke-static {v0, p0}, Landroidx/core/location/LocationManagerCompat$m;->c(Landroidx/core/location/LocationManagerCompat$m;Ljava/util/List;)V

    return-void
.end method
