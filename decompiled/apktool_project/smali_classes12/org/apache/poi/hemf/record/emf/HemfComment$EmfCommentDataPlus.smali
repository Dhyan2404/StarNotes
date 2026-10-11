.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCommentDataPlus"
.end annotation


# instance fields
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;->records:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMFPLUS_ONLY:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-interface {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->setState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;->records:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    invoke-interface {v0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;->calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V

    invoke-interface {p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getWindow()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getViewport()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    sget-object p0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMF_ONLY:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-interface {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->setState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMFPLUS_ONLY:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->setRenderState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;->records:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/kgh;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/kgh;-><init>(Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    sget-object p0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMF_ONLY:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->setRenderState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    return-void
.end method

.method public getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfPlus:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-object p0
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;->getRecords()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;->records:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfPlus:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    invoke-static {p1, v2}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->validateCommentType(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;)V

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;

    long-to-int p2, p2

    add-int/lit8 p2, p2, -0x4

    invoke-direct {v2, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;-><init>(Lorg/apache/poi/util/LittleEndianInputStream;I)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;->records:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/sunia/HTREnginev2/jgh;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/jgh;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr p0, v0

    return-wide p0
.end method
