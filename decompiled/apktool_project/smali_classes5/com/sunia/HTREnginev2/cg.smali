.class public final synthetic Lcom/sunia/HTREnginev2/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/dg;

.field public final synthetic f:Landroid/media/MediaCodec;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/dg;Landroid/media/MediaCodec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cg;->e:Lcom/sunia/HTREnginev2/dg;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cg;->f:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cg;->e:Lcom/sunia/HTREnginev2/dg;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cg;->f:Landroid/media/MediaCodec;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/dg;->a(Lcom/sunia/HTREnginev2/dg;Landroid/media/MediaCodec;)V

    return-void
.end method
