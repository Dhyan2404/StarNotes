.class public final Lorg/apache/poi/hslf/record/Document;
.super Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;
.source "SourceFile"


# static fields
.field private static _type:J = 0x3e8L


# instance fields
.field private _header:[B

.field private documentAtom:Lorg/apache/poi/hslf/record/DocumentAtom;

.field private environment:Lorg/apache/poi/hslf/record/Environment;

.field private exObjList:Lorg/apache/poi/hslf/record/ExObjList;

.field private ppDrawing:Lorg/apache/poi/hslf/record/PPDrawingGroup;

.field private slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;-><init>()V

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/Document;->_header:[B

    add-int/lit8 p3, p3, -0x8

    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    instance-of p3, p1, Lorg/apache/poi/hslf/record/DocumentAtom;

    if-eqz p3, :cond_9

    check-cast p1, Lorg/apache/poi/hslf/record/DocumentAtom;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/Document;->documentAtom:Lorg/apache/poi/hslf/record/DocumentAtom;

    const/4 p1, 0x1

    move p3, p1

    move v0, p2

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v2, v1

    if-ge p3, v2, :cond_4

    aget-object v1, v1, p3

    instance-of v2, v1, Lorg/apache/poi/hslf/record/SlideListWithText;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/hslf/record/Environment;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hslf/record/Environment;

    iput-object v2, p0, Lorg/apache/poi/hslf/record/Document;->environment:Lorg/apache/poi/hslf/record/Environment;

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/hslf/record/PPDrawingGroup;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hslf/record/PPDrawingGroup;

    iput-object v2, p0, Lorg/apache/poi/hslf/record/Document;->ppDrawing:Lorg/apache/poi/hslf/record/PPDrawingGroup;

    :cond_2
    instance-of v2, v1, Lorg/apache/poi/hslf/record/ExObjList;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/apache/poi/hslf/record/ExObjList;

    iput-object v1, p0, Lorg/apache/poi/hslf/record/Document;->exObjList:Lorg/apache/poi/hslf/record/ExObjList;

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    sget-object p3, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p3}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p3

    const-string v1, "No SlideListWithText\'s found - there should normally be at least one!"

    invoke-interface {p3, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_5
    const/4 p3, 0x3

    if-le v0, p3, :cond_6

    sget-object p3, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p3}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p3

    const-string v1, "Found {} SlideListWithTexts - normally there should only be three!"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    new-array p3, v0, [Lorg/apache/poi/hslf/record/SlideListWithText;

    iput-object p3, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    :goto_1
    iget-object p3, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v0, p3

    if-ge p1, v0, :cond_8

    aget-object p3, p3, p1

    instance-of v0, p3, Lorg/apache/poi/hslf/record/SlideListWithText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    check-cast p3, Lorg/apache/poi/hslf/record/SlideListWithText;

    aput-object p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The first child of a Document must be a DocumentAtom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addSlideListWithText(Lorg/apache/poi/hslf/record/SlideListWithText;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v1

    sget-object v3, Lorg/apache/poi/hslf/record/RecordTypes;->RoundTripCustomTableStyles12:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v3, v3, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v1

    sget-object v3, Lorg/apache/poi/hslf/record/RecordTypes;->EndDocument:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v3, v3, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildBefore(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    iget-object v0, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lorg/apache/poi/hslf/record/SlideListWithText;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v2, v1

    iput-object v2, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The last child record of a Document should be EndDocument, but it was "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDocumentAtom()Lorg/apache/poi/hslf/record/DocumentAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->documentAtom:Lorg/apache/poi/hslf/record/DocumentAtom;

    return-object p0
.end method

.method public getEnvironment()Lorg/apache/poi/hslf/record/Environment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->environment:Lorg/apache/poi/hslf/record/Environment;

    return-object p0
.end method

.method public getExObjList(Z)Lorg/apache/poi/hslf/record/ExObjList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/record/Document;->exObjList:Lorg/apache/poi/hslf/record/ExObjList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/hslf/record/ExObjList;

    invoke-direct {p1}, Lorg/apache/poi/hslf/record/ExObjList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/record/Document;->exObjList:Lorg/apache/poi/hslf/record/ExObjList;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getDocumentAtom()Lorg/apache/poi/hslf/record/DocumentAtom;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->exObjList:Lorg/apache/poi/hslf/record/ExObjList;

    return-object p0
.end method

.method public getMasterSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/SlideListWithText;->getInstance()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNotesSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/SlideListWithText;->getInstance()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->ppDrawing:Lorg/apache/poi/hslf/record/PPDrawingGroup;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/Document;->_type:J

    return-wide v0
.end method

.method public getSlideListWithTexts()[Lorg/apache/poi/hslf/record/SlideListWithText;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    return-object p0
.end method

.method public getSlideSlideListWithText()Lorg/apache/poi/hslf/record/SlideListWithText;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/SlideListWithText;->getInstance()I

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeSlideListWithText(Lorg/apache/poi/hslf/record/SlideListWithText;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eq v5, p1, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->removeChild(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/Record;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v3, [Lorg/apache/poi/hslf/record/SlideListWithText;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/SlideListWithText;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/Document;->slwts:[Lorg/apache/poi/hslf/record/SlideListWithText;

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/Document;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/Document;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
