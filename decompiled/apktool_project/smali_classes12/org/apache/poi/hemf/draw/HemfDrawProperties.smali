.class public Lorg/apache/poi/hemf/draw/HemfDrawProperties;
.super Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;
    }
.end annotation


# instance fields
.field private brushColorsH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;"
        }
    .end annotation
.end field

.field private brushColorsV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;"
        }
    .end annotation
.end field

.field private brushRect:Ljava/awt/geom/Rectangle2D;

.field private emfPlusBrushHatch:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

.field private emfPlusImage:Lorg/apache/poi/sl/draw/ImageRenderer;

.field protected path:Ljava/awt/geom/Path2D;

.field private final transOper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;",
            ">;"
        }
    .end annotation
.end field

.field private final transXForm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/geom/AffineTransform;",
            ">;"
        }
    .end annotation
.end field

.field protected usePathBracket:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->path:Ljava/awt/geom/Path2D;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->usePathBracket:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transXForm:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transOper:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hemf/draw/HemfDrawProperties;)V
    .locals 4

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;-><init>(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->path:Ljava/awt/geom/Path2D;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->usePathBracket:Z

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transXForm:Ljava/util/List;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transOper:Ljava/util/List;

    .line 11
    iget-object v3, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->path:Ljava/awt/geom/Path2D;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/awt/geom/Path2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Path2D;

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->path:Ljava/awt/geom/Path2D;

    .line 12
    iget-boolean v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->usePathBracket:Z

    iput-boolean v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->usePathBracket:Z

    .line 13
    iget-object v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusBrushHatch:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusBrushHatch:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    .line 14
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->clip:Ljava/awt/Shape;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->clip:Ljava/awt/Shape;

    .line 15
    iget-object v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusImage:Lorg/apache/poi/sl/draw/ImageRenderer;

    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusImage:Lorg/apache/poi/sl/draw/ImageRenderer;

    .line 16
    iget-object v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transXForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transOper:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushRect:Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushRect:Ljava/awt/geom/Rectangle2D;

    .line 20
    :cond_1
    iget-object v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsV:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsV:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsV:Ljava/util/List;

    .line 22
    :cond_2
    iget-object v0, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsH:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsH:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsH:Ljava/util/List;

    :cond_3
    return-void
.end method

.method private addLRTransform(Ljava/awt/geom/AffineTransform;Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transXForm:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transOper:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transXForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transOper:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static last(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addLeftTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->left:Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->addLRTransform(Ljava/awt/geom/AffineTransform;Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;)V

    return-void
.end method

.method public addRightTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->right:Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->addLRTransform(Ljava/awt/geom/AffineTransform;Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;)V

    return-void
.end method

.method public clearTransform()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transXForm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transOper:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBrushColorsH()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsH:Ljava/util/List;

    return-object p0
.end method

.method public getBrushColorsV()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsV:Ljava/util/List;

    return-object p0
.end method

.method public getBrushRect()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushRect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getEmfPlusBrushHatch()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusBrushHatch:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    return-object p0
.end method

.method public getEmfPlusImage()Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusImage:Lorg/apache/poi/sl/draw/ImageRenderer;

    return-object p0
.end method

.method public getPath()Ljava/awt/geom/Path2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->path:Ljava/awt/geom/Path2D;

    return-object p0
.end method

.method public getTransOper()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transOper:Ljava/util/List;

    return-object p0
.end method

.method public getTransXForm()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/awt/geom/AffineTransform;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->transXForm:Ljava/util/List;

    return-object p0
.end method

.method public getUsePathBracket()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->usePathBracket:Z

    return p0
.end method

.method public setBrushColorsH(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsH:Ljava/util/List;

    return-void
.end method

.method public setBrushColorsV(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/awt/Color;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushColorsV:Ljava/util/List;

    return-void
.end method

.method public setBrushRect(Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->brushRect:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public setEmfPlusBrushHatch(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusBrushHatch:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    return-void
.end method

.method public setEmfPlusImage(Lorg/apache/poi/sl/draw/ImageRenderer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->emfPlusImage:Lorg/apache/poi/sl/draw/ImageRenderer;

    return-void
.end method

.method public setPath(Ljava/awt/geom/Path2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->path:Ljava/awt/geom/Path2D;

    return-void
.end method

.method public setUsePathBracket(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->usePathBracket:Z

    return-void
.end method
