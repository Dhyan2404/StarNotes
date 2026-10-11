.class public abstract Lsun/font/TextLabel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lsun/font/TextLabel;->draw(Ljava/awt/Graphics2D;FF)V

    return-void
.end method

.method public abstract draw(Ljava/awt/Graphics2D;FF)V
.end method

.method public getAlignBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lsun/font/TextLabel;->getAlignBounds(FF)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAlignBounds(FF)Ljava/awt/geom/Rectangle2D;
.end method

.method public getItalicBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lsun/font/TextLabel;->getItalicBounds(FF)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract getItalicBounds(FF)Ljava/awt/geom/Rectangle2D;
.end method

.method public getLogicalBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lsun/font/TextLabel;->getLogicalBounds(FF)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract getLogicalBounds(FF)Ljava/awt/geom/Rectangle2D;
.end method

.method public getOutline()Ljava/awt/Shape;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lsun/font/TextLabel;->getOutline(FF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public abstract getOutline(FF)Ljava/awt/Shape;
.end method

.method public getVisualBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lsun/font/TextLabel;->getVisualBounds(FF)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract getVisualBounds(FF)Ljava/awt/geom/Rectangle2D;
.end method
