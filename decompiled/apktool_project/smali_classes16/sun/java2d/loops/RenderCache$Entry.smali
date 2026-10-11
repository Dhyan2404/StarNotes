.class final Lsun/java2d/loops/RenderCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/RenderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field private comp:Lsun/java2d/loops/CompositeType;

.field private dst:Lsun/java2d/loops/SurfaceType;

.field private src:Lsun/java2d/loops/SurfaceType;

.field final synthetic this$0:Lsun/java2d/loops/RenderCache;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/RenderCache;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/loops/RenderCache$Entry;->this$0:Lsun/java2d/loops/RenderCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsun/java2d/loops/RenderCache$Entry;->src:Lsun/java2d/loops/SurfaceType;

    iput-object p3, p0, Lsun/java2d/loops/RenderCache$Entry;->comp:Lsun/java2d/loops/CompositeType;

    iput-object p4, p0, Lsun/java2d/loops/RenderCache$Entry;->dst:Lsun/java2d/loops/SurfaceType;

    iput-object p5, p0, Lsun/java2d/loops/RenderCache$Entry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/RenderCache$Entry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public matches(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Z
    .locals 1

    iget-object v0, p0, Lsun/java2d/loops/RenderCache$Entry;->src:Lsun/java2d/loops/SurfaceType;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lsun/java2d/loops/RenderCache$Entry;->comp:Lsun/java2d/loops/CompositeType;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lsun/java2d/loops/RenderCache$Entry;->dst:Lsun/java2d/loops/SurfaceType;

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
