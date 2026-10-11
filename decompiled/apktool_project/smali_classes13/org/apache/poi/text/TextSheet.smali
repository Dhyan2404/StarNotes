.class public Lorg/apache/poi/text/TextSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TEXT_EXIST:I = 0x2

.field public static final TEXT_INIT:I = 0x0

.field public static final TEXT_NONE:I = 0x1


# instance fields
.field private completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private currentPos:I

.field private pieces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/awt/geom/Rectangle2D;",
            "Lorg/apache/poi/text/Piece;",
            ">;"
        }
    .end annotation
.end field

.field private textState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/text/TextSheet;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/text/TextSheet;->textState:I

    iput v0, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    return-void
.end method


# virtual methods
.method public add(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/text/Piece;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/text/Piece;->setIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/text/TextSheet;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput v1, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->clone()Lorg/apache/poi/text/TextSheet;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/apache/poi/text/TextSheet;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/text/TextSheet;

    invoke-direct {v0}, Lorg/apache/poi/text/TextSheet;-><init>()V

    .line 3
    iget-object v1, v0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    iget-object v1, v0, Lorg/apache/poi/text/TextSheet;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lorg/apache/poi/text/TextSheet;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget v1, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    iput v1, v0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    .line 6
    iget p0, p0, Lorg/apache/poi/text/TextSheet;->textState:I

    iput p0, v0, Lorg/apache/poi/text/TextSheet;->textState:I

    return-object v0
.end method

.method public combineSelection(IILjava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Piece;

    invoke-virtual {v0}, Lorg/apache/poi/text/Piece;->getEndPos()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/text/Piece;->getStartPos()I

    move-result v1

    if-le v1, p2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/text/Piece;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/text/Line;

    invoke-virtual {v2}, Lorg/apache/poi/text/Line;->getEndPos()I

    move-result v3

    if-gt v3, p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/apache/poi/text/Line;->getStartPos()I

    move-result v3

    if-le v3, p2, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/text/Line;->isParagraphEnd()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Lorg/apache/poi/text/Line;->getWords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v3}, Lorg/apache/poi/text/OneWord;->getPos()I

    move-result v4

    if-ge v4, p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lorg/apache/poi/text/OneWord;->getPos()I

    move-result v4

    if-lt v4, p2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lorg/apache/poi/text/OneWord;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-static {p4, v3}, Lorg/apache/poi/text/Utils;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    :goto_3
    move-object v1, v2

    goto :goto_1

    :cond_9
    :goto_4
    return-void
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/text/TextSheet;

    iget v2, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    iget v3, p1, Lorg/apache/poi/text/TextSheet;->currentPos:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    iget-object p1, p1, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrentPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    return p0
.end method

.method public getPiece(I)Lorg/apache/poi/text/Piece;
    .locals 3

    .line 2
    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/Piece;

    .line 5
    invoke-virtual {v1}, Lorg/apache/poi/text/Piece;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getPiece(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/text/Piece;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/text/Piece;

    return-object p0
.end method

.method public getPieceByPos(I)Lorg/apache/poi/text/Piece;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Piece;

    invoke-virtual {v0}, Lorg/apache/poi/text/Piece;->getStartPos()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/text/Piece;->getEndPos()I

    move-result v1

    if-le v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPieceMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/awt/geom/Rectangle2D;",
            "Lorg/apache/poi/text/Piece;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    return-object p0
.end method

.method public getPieceRectangle(I)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/text/TextSheet;->getPiece(I)Lorg/apache/poi/text/Piece;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    return-object p0
.end method

.method public getPieceRectangle(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/text/TextSheet;->getPiece(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/text/Piece;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    return-object p0
.end method

.method public getPieces()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/text/Piece;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/Piece;

    invoke-virtual {v1}, Lorg/apache/poi/text/Piece;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextState()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/TextSheet;->textState:I

    return p0
.end method

.method public handleTextCompleted()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/text/Piece;

    invoke-virtual {v3}, Lorg/apache/poi/text/Piece;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Piece;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/text/Piece;->setIndex(I)V

    move v1, v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    iget p0, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public search(Lorg/apache/poi/text/SearchOptions;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/text/SearchOptions;",
            "Ljava/util/List<",
            "Lorg/apache/poi/text/Selection;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Piece;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/text/Piece;->search(Lorg/apache/poi/text/SearchOptions;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setCompleted(Z)Lorg/apache/poi/text/TextSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/TextSheet;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public setCurrentPos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    return-void
.end method

.method public setTextState(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/TextSheet;->textState:I

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/TextSheet;->pieces:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextSheet{completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/text/TextSheet;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/TextSheet;->textState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/TextSheet;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
