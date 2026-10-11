.class public final synthetic Lcom/sunia/HTREnginev2/a2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/location/LocationManagerCompat$f;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a2j;->e:Landroidx/core/location/LocationManagerCompat$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a2j;->e:Landroidx/core/location/LocationManagerCompat$f;

    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$f;->b(Landroidx/core/location/LocationManagerCompat$f;)V

    return-void
.end method
