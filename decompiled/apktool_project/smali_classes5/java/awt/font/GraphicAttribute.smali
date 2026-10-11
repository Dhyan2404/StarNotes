.class public abstract Ljava/awt/font/GraphicAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOTTOM_ALIGNMENT:I = -0x2

.field public static final CENTER_BASELINE:I = 0x1

.field public static final HANGING_BASELINE:I = 0x2

.field public static final ROMAN_BASELINE:I = 0x0

.field public static final TOP_ALIGNMENT:I = -0x1


# instance fields
.field private fAlignment:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Ljava/awt/font/GraphicAttribute;->fAlignment:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad alignment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract draw(Ljava/awt/Graphics2D;FF)V
.end method

.method public abstract getAdvance()F
.end method

.method public final getAlignment()I
    .locals 0

    iget p0, p0, Ljava/awt/font/GraphicAttribute;->fAlignment:I

    return p0
.end method

.method public abstract getAscent()F
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 4

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result v0

    new-instance v1, Ljava/awt/geom/Rectangle2D$Float;

    neg-float v2, v0

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAdvance()F

    move-result v3

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getDescent()F

    move-result p0

    add-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v1
.end method

.method public abstract getDescent()F
.end method

.method public getJustificationInfo()Ljava/awt/font/GlyphJustificationInfo;
    .locals 10

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAdvance()F

    move-result v1

    new-instance p0, Ljava/awt/font/GlyphJustificationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v0, 0x40400000    # 3.0f

    div-float v5, v1, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v9}, Ljava/awt/font/GlyphJustificationInfo;-><init>(FZIFFZIFF)V

    return-object p0
.end method

.method public getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    :cond_0
    return-object p0
.end method
