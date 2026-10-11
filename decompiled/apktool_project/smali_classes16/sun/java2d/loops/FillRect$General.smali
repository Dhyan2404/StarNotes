.class public Lsun/java2d/loops/FillRect$General;
.super Lsun/java2d/loops/FillRect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/FillRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "General"
.end annotation


# instance fields
.field public fillop:Lsun/java2d/loops/MaskFill;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/FillRect;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    invoke-static {p1, p2, p3}, Lsun/java2d/loops/MaskFill;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskFill;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/loops/FillRect$General;->fillop:Lsun/java2d/loops/MaskFill;

    return-void
.end method


# virtual methods
.method public FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
    .locals 11

    move-object v0, p0

    iget-object v0, v0, Lsun/java2d/loops/FillRect$General;->fillop:Lsun/java2d/loops/MaskFill;

    move-object v1, p1

    iget-object v3, v1, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/MaskFill;->MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V

    return-void
.end method
