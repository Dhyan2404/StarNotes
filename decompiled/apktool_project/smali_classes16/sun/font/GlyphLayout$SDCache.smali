.class final Lsun/font/GlyphLayout$SDCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/GlyphLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SDCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/GlyphLayout$SDCache$SDKey;
    }
.end annotation


# static fields
.field private static final ZERO_DELTA:Ljava/awt/geom/Point2D$Float;

.field private static cacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lsun/font/GlyphLayout$SDCache$SDKey;",
            "Lsun/font/GlyphLayout$SDCache;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public delta:Ljava/awt/geom/Point2D$Float;

.field public dtx:Ljava/awt/geom/AffineTransform;

.field public gtx:Ljava/awt/geom/AffineTransform;

.field public key_font:Ljava/awt/Font;

.field public key_frc:Ljava/awt/font/FontRenderContext;

.field public sd:Lsun/font/FontStrikeDesc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Float;-><init>()V

    sput-object v0, Lsun/font/GlyphLayout$SDCache;->ZERO_DELTA:Ljava/awt/geom/Point2D$Float;

    return-void
.end method

.method private constructor <init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lsun/font/GlyphLayout$SDCache;->key_font:Ljava/awt/Font;

    move-object/from16 v2, p2

    iput-object v2, v0, Lsun/font/GlyphLayout$SDCache;->key_frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual/range {p2 .. p2}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v3

    iput-object v3, v0, Lsun/font/GlyphLayout$SDCache;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v4

    iget-object v6, v0, Lsun/font/GlyphLayout$SDCache;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v6

    iget-object v8, v0, Lsun/font/GlyphLayout$SDCache;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v8}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v8

    iget-object v10, v0, Lsun/font/GlyphLayout$SDCache;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v10}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v3 .. v15}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getSize2D()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->isTransformed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    iput-object v4, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    float-to-double v5, v3

    invoke-virtual {v4, v5, v6, v5, v6}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    new-instance v4, Ljava/awt/geom/Point2D$Float;

    iget-object v5, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-direct {v4, v5, v6}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    iput-object v4, v0, Lsun/font/GlyphLayout$SDCache;->delta:Ljava/awt/geom/Point2D$Float;

    iget-object v7, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v7}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v8

    iget-object v4, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v4}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v10

    iget-object v4, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v4}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v12

    iget-object v4, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v4}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-virtual/range {v7 .. v19}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    iget-object v4, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    iget-object v5, v0, Lsun/font/GlyphLayout$SDCache;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v4, v5}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    goto :goto_0

    :cond_0
    sget-object v4, Lsun/font/GlyphLayout$SDCache;->ZERO_DELTA:Ljava/awt/geom/Point2D$Float;

    iput-object v4, v0, Lsun/font/GlyphLayout$SDCache;->delta:Ljava/awt/geom/Point2D$Float;

    new-instance v4, Ljava/awt/geom/AffineTransform;

    iget-object v5, v0, Lsun/font/GlyphLayout$SDCache;->dtx:Ljava/awt/geom/AffineTransform;

    invoke-direct {v4, v5}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v4, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    float-to-double v5, v3

    invoke-virtual {v4, v5, v6, v5, v6}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v5, v3}, Lsun/font/FontStrikeDesc;->getAAHintIntVal(Ljava/lang/Object;Lsun/font/Font2D;I)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsun/font/FontStrikeDesc;->getFMHintIntVal(Ljava/lang/Object;)I

    move-result v11

    new-instance v2, Lsun/font/FontStrikeDesc;

    iget-object v7, v0, Lsun/font/GlyphLayout$SDCache;->dtx:Ljava/awt/geom/AffineTransform;

    iget-object v8, v0, Lsun/font/GlyphLayout$SDCache;->gtx:Ljava/awt/geom/AffineTransform;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Font;->getStyle()I

    move-result v9

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lsun/font/FontStrikeDesc;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;III)V

    iput-object v2, v0, Lsun/font/GlyphLayout$SDCache;->sd:Lsun/font/FontStrikeDesc;

    return-void
.end method

.method public static get(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/GlyphLayout$SDCache;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/font/FontRenderContext;->isTransformed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v8

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v15}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    new-instance v1, Ljava/awt/font/FontRenderContext;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    :goto_0
    new-instance v2, Lsun/font/GlyphLayout$SDCache$SDKey;

    invoke-direct {v2, v0, v1}, Lsun/font/GlyphLayout$SDCache$SDKey;-><init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    sget-object v3, Lsun/font/GlyphLayout$SDCache;->cacheRef:Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/font/GlyphLayout$SDCache;

    goto :goto_1

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_1
    if-nez v4, :cond_6

    new-instance v4, Lsun/font/GlyphLayout$SDCache;

    invoke-direct {v4, v0, v1}, Lsun/font/GlyphLayout$SDCache;-><init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lsun/font/GlyphLayout$SDCache;->cacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_5

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_5
    :goto_2
    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v4
.end method
