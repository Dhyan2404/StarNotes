.class public final synthetic Lcom/sunia/HTREnginev2/m2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$m;

.field public final synthetic f:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$m;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m2j;->e:Landroidx/core/location/LocationManagerCompat$m;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m2j;->f:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m2j;->e:Landroidx/core/location/LocationManagerCompat$m;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m2j;->f:Landroid/location/Location;

    invoke-static {v0, p0}, Landroidx/core/location/LocationManagerCompat$m;->f(Landroidx/core/location/LocationManagerCompat$m;Landroid/location/Location;)V

    return-void
.end method
