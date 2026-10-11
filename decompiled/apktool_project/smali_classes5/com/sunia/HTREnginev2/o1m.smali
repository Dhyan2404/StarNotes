.class public final synthetic Lcom/sunia/HTREnginev2/o1m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/p1m;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/p1m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o1m;->e:Lcom/sunia/HTREnginev2/p1m;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o1m;->e:Lcom/sunia/HTREnginev2/p1m;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/p1m;->a(Lcom/sunia/HTREnginev2/p1m;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
