.class public final synthetic Lcom/sunia/HTREnginev2/y1j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$f;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y1j;->a:Landroidx/core/location/LocationManagerCompat$f;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y1j;->a:Landroidx/core/location/LocationManagerCompat$f;

    invoke-virtual {p0}, Landroidx/core/location/LocationManagerCompat$f;->c()V

    return-void
.end method
