.class public Lorg/apache/poi/text/TextHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/text/ITextHandler;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private activeAnchor:Ljava/awt/geom/Rectangle2D;

.field private activeSheet:Lorg/apache/poi/text/TextSheet;

.field private graphicsID:I

.field private highlight:Lorg/apache/poi/text/Highlight;

.field private sheetSize:I

.field private textSheets:[Lorg/apache/poi/text/TextSheet;

.field private transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/text/TextHandler;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/text/TextHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/text/TextHandler;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/text/TextHandler;->graphicsID:I

    iput p1, p0, Lorg/apache/poi/text/TextHandler;->sheetSize:I

    new-array v0, p1, [Lorg/apache/poi/text/TextSheet;

    iput-object v0, p0, Lorg/apache/poi/text/TextHandler;->textSheets:[Lorg/apache/poi/text/TextSheet;

    invoke-static {}, Lorg/apache/poi/text/Utils;->getHighlight()Lorg/apache/poi/text/Highlight;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/text/TextHandler;->highlight:Lorg/apache/poi/text/Highlight;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/text/TextHandler;->textSheets:[Lorg/apache/poi/text/TextSheet;

    new-instance v2, Lorg/apache/poi/text/TextSheet;

    invoke-direct {v2}, Lorg/apache/poi/text/TextSheet;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createInverse(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object p0
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/text/TextHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    return-object p1
.end method

.method private handleLineOfParagraph(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawTextFragment2;Ljava/awt/geom/AffineTransform;Lorg/apache/poi/text/Piece;J)Z
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getPartList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/apache/poi/text/Line;

    invoke-virtual {p4}, Lorg/apache/poi/text/Piece;->getEndPos()I

    move-result v2

    invoke-direct {v0, p3, p5, p6, v2}, Lorg/apache/poi/text/Line;-><init>(Ljava/awt/geom/AffineTransform;JI)V

    iget-object p0, p0, Lorg/apache/poi/text/TextHandler;->highlight:Lorg/apache/poi/text/Highlight;

    invoke-virtual {v0, p1, p3, p2, p0}, Lorg/apache/poi/text/Line;->calculateWordBounds(Ljava/awt/Graphics2D;Ljava/awt/geom/AffineTransform;Ljava/util/List;Lorg/apache/poi/text/Highlight;)V

    invoke-virtual {v0}, Lorg/apache/poi/text/Line;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p4, v0}, Lorg/apache/poi/text/Piece;->addLine(Lorg/apache/poi/text/Line;)V

    const/4 p0, 0x1

    return p0
.end method

.method private handleTextInternal(Ljava/awt/Graphics2D;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment2;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/text/TextHandler;->activeSheet:Lorg/apache/poi/text/TextSheet;

    iget-object v1, p0, Lorg/apache/poi/text/TextHandler;->activeAnchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/text/Utils;->getDegree(Ljava/awt/geom/AffineTransform;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/poi/text/Utils;->isRightAngle(J)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/text/TextHandler;->inverseTransform(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->getCurrentPos()I

    move-result v3

    invoke-virtual {v0, v1}, Lorg/apache/poi/text/TextSheet;->getPiece(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/text/Piece;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/apache/poi/text/Piece;

    invoke-direct {v4, v2, v10, v11, v3}, Lorg/apache/poi/text/Piece;-><init>(Ljava/awt/geom/AffineTransform;JI)V

    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/text/TextSheet;->add(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/text/Piece;)V

    :cond_2
    move-object v1, v4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/apache/poi/sl/draw/DrawTextFragment2;

    move-object v3, p0

    move-object v4, p1

    move-object v6, v2

    move-object v7, v1

    move-wide v8, v10

    invoke-direct/range {v3 .. v9}, Lorg/apache/poi/text/TextHandler;->handleLineOfParagraph(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawTextFragment2;Ljava/awt/geom/AffineTransform;Lorg/apache/poi/text/Piece;J)Z

    move-result v3

    or-int/2addr v12, v3

    goto :goto_0

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/text/Piece;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    invoke-virtual {v1, p0}, Lorg/apache/poi/text/Piece;->getLine(I)Lorg/apache/poi/text/Line;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/text/Line;->setParagraphEnd(Z)V

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/text/Piece;->getEndPos()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/text/TextSheet;->setCurrentPos(I)V

    return-void
.end method

.method private inverseTransform(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/TextHandler;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lorg/apache/poi/text/TextHandler;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public bindGraphics(Ljava/awt/Graphics2D;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/text/TextHandler;->graphicsID:I

    return-void
.end method

.method public getActiveSheet()Lorg/apache/poi/text/TextSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/TextHandler;->activeSheet:Lorg/apache/poi/text/TextSheet;

    return-object p0
.end method

.method public getSheetSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/TextHandler;->sheetSize:I

    return p0
.end method

.method public getTextSheet(I)Lorg/apache/poi/text/TextSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/TextHandler;->textSheets:[Lorg/apache/poi/text/TextSheet;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public handleText(Ljava/awt/Graphics2D;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment2;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/text/TextHandler;->isBinding(Ljava/awt/Graphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/apache/poi/util/CollectionUtils;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/text/TextHandler;->handleTextInternal(Ljava/awt/Graphics2D;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public isBinding(Ljava/awt/Graphics2D;)Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/TextHandler;->graphicsID:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public search(Lorg/apache/poi/text/SearchOptions;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/text/SearchOptions;",
            "I)",
            "Ljava/util/List<",
            "Lorg/apache/poi/text/Selection;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/TextHandler;->textSheets:[Lorg/apache/poi/text/TextSheet;

    aget-object p0, p0, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/text/TextSheet;->search(Lorg/apache/poi/text/SearchOptions;Ljava/util/List;)Z

    return-object p2
.end method

.method public setActiveSheet(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/TextHandler;->textSheets:[Lorg/apache/poi/text/TextSheet;

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/apache/poi/text/TextHandler;->activeSheet:Lorg/apache/poi/text/TextSheet;

    return-void
.end method

.method public setAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/text/TextHandler;->isBinding(Ljava/awt/Graphics2D;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/text/TextHandler;->activeAnchor:Ljava/awt/geom/Rectangle2D;

    :cond_0
    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/poi/text/TextHandler;
    .locals 1

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/text/TextHandler;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->setToIdentity()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/text/TextHandler;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {p0, p1}, Lorg/apache/poi/text/TextHandler;->createInverse(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    :goto_0
    return-object p0
.end method
