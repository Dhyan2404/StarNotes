.class public final synthetic Lcom/sunia/HTREnginev2/c2i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Ljava/awt/geom/Arc2D;


# direct methods
.method public synthetic constructor <init>(Ljava/awt/geom/Arc2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c2i;->e:Ljava/awt/geom/Arc2D;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c2i;->e:Ljava/awt/geom/Arc2D;

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
