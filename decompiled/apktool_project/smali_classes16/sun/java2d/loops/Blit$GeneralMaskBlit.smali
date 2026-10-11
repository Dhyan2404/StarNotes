.class Lsun/java2d/loops/Blit$GeneralMaskBlit;
.super Lsun/java2d/loops/Blit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/Blit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralMaskBlit"
.end annotation


# instance fields
.field performop:Lsun/java2d/loops/MaskBlit;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/Blit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-static {p1, p2, p3}, Lsun/java2d/loops/MaskBlit;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskBlit;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/loops/Blit$GeneralMaskBlit;->performop:Lsun/java2d/loops/MaskBlit;

    return-void
.end method


# virtual methods
.method public Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V
    .locals 14

    move-object v0, p0

    iget-object v0, v0, Lsun/java2d/loops/Blit$GeneralMaskBlit;->performop:Lsun/java2d/loops/MaskBlit;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v13}, Lsun/java2d/loops/MaskBlit;->MaskBlit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII[BII)V

    return-void
.end method
