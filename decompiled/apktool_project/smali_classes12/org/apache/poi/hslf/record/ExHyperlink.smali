.class public Lorg/apache/poi/hslf/record/ExHyperlink;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# static fields
.field private static final _type:J


# instance fields
.field private _header:[B

.field private linkAtom:Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

.field private linkDetailsA:Lorg/apache/poi/hslf/record/CString;

.field private linkDetailsB:Lorg/apache/poi/hslf/record/CString;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ExHyperlink:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/ExHyperlink;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->_header:[B

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/poi/hslf/record/Record;

    .line 7
    iput-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 8
    sget-wide v3, Lorg/apache/poi/hslf/record/ExHyperlink;->_type:J

    long-to-int v1, v3

    int-to-short v1, v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 9
    new-instance v0, Lorg/apache/poi/hslf/record/CString;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/CString;-><init>()V

    .line 10
    new-instance v1, Lorg/apache/poi/hslf/record/CString;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/CString;-><init>()V

    .line 11
    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    const/16 v4, 0x10

    .line 12
    invoke-virtual {v1, v4}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    .line 13
    iget-object v4, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    new-instance v5, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    invoke-direct {v5}, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;-><init>()V

    aput-object v5, v4, v2

    .line 14
    iget-object v2, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 15
    aput-object v1, v2, v3

    .line 16
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/ExHyperlink;->findInterestingChildren()V

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/ExHyperlink;->findInterestingChildren()V

    return-void
.end method

.method private findInterestingChildren()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkAtom:Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "First child record wasn\'t a ExHyperlinkAtom, was of type {}"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/apache/poi/hslf/record/CString;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsA:Lorg/apache/poi/hslf/record/CString;

    if-nez v2, :cond_1

    check-cast v1, Lorg/apache/poi/hslf/record/CString;

    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsA:Lorg/apache/poi/hslf/record/CString;

    goto :goto_2

    :cond_1
    check-cast v1, Lorg/apache/poi/hslf/record/CString;

    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsB:Lorg/apache/poi/hslf/record/CString;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Record after ExHyperlinkAtom wasn\'t a CString, was of type {}"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public _getDetailsA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsA:Lorg/apache/poi/hslf/record/CString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public _getDetailsB()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsB:Lorg/apache/poi/hslf/record/CString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExHyperlinkAtom()Lorg/apache/poi/hslf/record/ExHyperlinkAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkAtom:Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    return-object p0
.end method

.method public getLinkTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsA:Lorg/apache/poi/hslf/record/CString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLinkURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsB:Lorg/apache/poi/hslf/record/CString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/ExHyperlink;->_type:J

    return-wide v0
.end method

.method public setLinkOptions(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsB:Lorg/apache/poi/hslf/record/CString;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    :cond_0
    return-void
.end method

.method public setLinkTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsA:Lorg/apache/poi/hslf/record/CString;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLinkURL(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->linkDetailsB:Lorg/apache/poi/hslf/record/CString;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExHyperlink;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/ExHyperlink;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
