.class public Lorg/apache/poi/hslf/record/ExObjList;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# static fields
.field private static final _type:J


# instance fields
.field private _header:[B

.field private exObjListAtom:Lorg/apache/poi/hslf/record/ExObjListAtom;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjList:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/ExObjList;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExObjList;->_header:[B

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/hslf/record/Record;

    .line 7
    iput-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 8
    sget-wide v3, Lorg/apache/poi/hslf/record/ExObjList;->_type:J

    long-to-int v1, v3

    int-to-short v1, v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 9
    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    new-instance v1, Lorg/apache/poi/hslf/record/ExObjListAtom;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/ExObjListAtom;-><init>()V

    aput-object v1, v0, v2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/ExObjList;->findInterestingChildren()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExObjList;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/ExObjList;->findInterestingChildren()V

    return-void
.end method

.method private findInterestingChildren()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v2, v0, Lorg/apache/poi/hslf/record/ExObjListAtom;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/apache/poi/hslf/record/ExObjListAtom;

    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExObjList;->exObjListAtom:Lorg/apache/poi/hslf/record/ExObjListAtom;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First child record wasn\'t a ExObjListAtom, was of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(I)Lorg/apache/poi/hslf/record/ExHyperlink;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lorg/apache/poi/hslf/record/ExHyperlink;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/ExHyperlink;->getExHyperlinkAtom()Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/ExHyperlink;->getExHyperlinkAtom()Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;->getNumber()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExHyperlinks()[Lorg/apache/poi/hslf/record/ExHyperlink;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    instance-of v5, v4, Lorg/apache/poi/hslf/record/ExHyperlink;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/ExHyperlink;

    return-object p0
.end method

.method public getExObjListAtom()Lorg/apache/poi/hslf/record/ExObjListAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExObjList;->exObjListAtom:Lorg/apache/poi/hslf/record/ExObjListAtom;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/ExObjList;->_type:J

    return-wide v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExObjList;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/ExObjList;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
