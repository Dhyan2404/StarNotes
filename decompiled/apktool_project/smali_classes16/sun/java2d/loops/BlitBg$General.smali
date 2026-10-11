.class Lsun/java2d/loops/BlitBg$General;
.super Lsun/java2d/loops/BlitBg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/BlitBg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "General"
.end annotation


# static fields
.field private static defaultFont:Ljava/awt/Font;


# instance fields
.field compositeType:Lsun/java2d/loops/CompositeType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/awt/Font;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "Dialog"

    invoke-direct {v0, v3, v1, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/java2d/loops/BlitBg$General;->defaultFont:Ljava/awt/Font;

    return-void
.end method

.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/BlitBg;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p2, p0, Lsun/java2d/loops/BlitBg$General;->compositeType:Lsun/java2d/loops/CompositeType;

    return-void
.end method


# virtual methods
.method public BlitBg(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIIII)V
    .locals 16

    move/from16 v0, p5

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    ushr-int/lit8 v2, v0, 0x18

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v1

    :cond_1
    move/from16 v14, p10

    move/from16 v15, p11

    invoke-virtual {v1, v14, v15}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v3

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v4

    new-instance v5, Ljava/awt/image/BufferedImage;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v4, v6}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-static {v5}, Lsun/awt/image/BufImgSurfaceData;->createData(Ljava/awt/image/BufferedImage;)Lsun/java2d/SurfaceData;

    move-result-object v1

    new-instance v3, Ljava/awt/Color;

    invoke-direct {v3, v0, v2}, Ljava/awt/Color;-><init>(IZ)V

    new-instance v4, Lsun/java2d/SunGraphics2D;

    sget-object v0, Lsun/java2d/loops/BlitBg$General;->defaultFont:Ljava/awt/Font;

    invoke-direct {v4, v1, v3, v3, v0}, Lsun/java2d/SunGraphics2D;-><init>(Lsun/java2d/SurfaceData;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/Font;)V

    sget-object v0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lsun/java2d/loops/FillRect;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillRect;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v0

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    move-object/from16 v5, p0

    iget-object v5, v5, Lsun/java2d/loops/BlitBg$General;->compositeType:Lsun/java2d/loops/CompositeType;

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v9}, Lsun/java2d/loops/FillRect;->FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    sget-object v6, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    move-object/from16 v4, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v3 .. v13}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, v1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v3 .. v13}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    return-void
.end method
