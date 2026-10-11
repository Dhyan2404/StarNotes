.class public final Lorg/apache/poi/hslf/record/SlideListWithText;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;
    }
.end annotation


# static fields
.field public static final MASTER:I = 0x1

.field public static final NOTES:I = 0x2

.field public static final SLIDES:I

.field private static final _type:J


# instance fields
.field private final _header:[B

.field private slideAtomsSets:[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->SlideListWithText:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/SlideListWithText;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->_header:[B

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 15
    sget-wide v3, Lorg/apache/poi/hslf/record/SlideListWithText;->_type:J

    long-to-int v1, v3

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v1, 0x4

    .line 16
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    new-array v0, v2, [Lorg/apache/poi/hslf/record/Record;

    .line 17
    iput-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    new-array v0, v2, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    .line 18
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->slideAtomsSets:[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move p3, p2

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 6
    aget-object v0, v0, p3

    instance-of v0, v0, Lorg/apache/poi/hslf/record/SlidePersistAtom;

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    move v1, v0

    .line 7
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    instance-of v3, v3, Lorg/apache/poi/hslf/record/SlidePersistAtom;

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    add-int v3, v0, v1

    .line 8
    const-class v4, [Lorg/apache/poi/hslf/record/Record;

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/Record;

    .line 9
    new-instance v2, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    iget-object v3, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    aget-object v3, v3, p3

    check-cast v3, Lorg/apache/poi/hslf/record/SlidePersistAtom;

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;-><init>(Lorg/apache/poi/hslf/record/SlidePersistAtom;[Lorg/apache/poi/hslf/record/Record;)V

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p3, v1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    new-array p2, p2, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->slideAtomsSets:[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    return-void
.end method


# virtual methods
.method public addSlidePersistAtom(Lorg/apache/poi/hslf/record/SlidePersistAtom;)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    new-instance v0, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/apache/poi/hslf/record/Record;

    invoke-direct {v0, p1, v2}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;-><init>(Lorg/apache/poi/hslf/record/SlidePersistAtom;[Lorg/apache/poi/hslf/record/Record;)V

    iget-object p1, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->slideAtomsSets:[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    array-length v4, p1

    invoke-static {p1, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v3, v2

    iput-object v3, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->slideAtomsSets:[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    return-void
.end method

.method public getInstance()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->_header:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/SlideListWithText;->_type:J

    return-wide v0
.end method

.method public getSlideAtomsSets()[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->slideAtomsSets:[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    return-object p0
.end method

.method public setInstance(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->_header:[B

    shl-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0xf

    int-to-short p1, p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public setSlideAtomsSets([Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;)V
    .locals 0

    invoke-virtual {p1}, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->slideAtomsSets:[Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/SlideListWithText;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/SlideListWithText;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
