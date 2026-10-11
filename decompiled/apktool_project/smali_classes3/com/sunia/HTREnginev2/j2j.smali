.class public final synthetic Lcom/sunia/HTREnginev2/j2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$m;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j2j;->e:Landroidx/core/location/LocationManagerCompat$m;

    iput p2, p0, Lcom/sunia/HTREnginev2/j2j;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j2j;->e:Landroidx/core/location/LocationManagerCompat$m;

    iget p0, p0, Lcom/sunia/HTREnginev2/j2j;->f:I

    invoke-static {v0, p0}, Landroidx/core/location/LocationManagerCompat$m;->d(Landroidx/core/location/LocationManagerCompat$m;I)V

    return-void
.end method
