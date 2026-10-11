.class public final Lcom/hjq/window/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/window/a$a;
    }
.end annotation


# instance fields
.field public e:I

.field public f:Lcom/hjq/window/a$a;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/hjq/window/a;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/hjq/window/a$a;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iput-object p2, p0, Lcom/hjq/window/a;->f:Lcom/hjq/window/a$a;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hjq/window/a;->f:Lcom/hjq/window/a$a;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p0, Lcom/hjq/window/a;->e:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/hjq/window/a;->e:I

    iget-object p0, p0, Lcom/hjq/window/a;->f:Lcom/hjq/window/a$a;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/hjq/window/a$a;->onScreenOrientationChange(I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
