.class public final Lorg/apache/poi/hslf/record/HeadersFootersContainer;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# static fields
.field public static final FOOTERATOM:I = 0x2

.field public static final HEADERATOM:I = 0x1

.field public static final NotesHeadersFootersContainer:S = 0x4fs

.field public static final SlideHeadersFootersContainer:S = 0x3fs

.field public static final USERDATEATOM:I


# instance fields
.field private _header:[B

.field private csDate:Lorg/apache/poi/hslf/record/CString;

.field private csFooter:Lorg/apache/poi/hslf/record/CString;

.field private csHeader:Lorg/apache/poi/hslf/record/CString;

.field private hdAtom:Lorg/apache/poi/hslf/record/HeadersFootersAtom;


# direct methods
.method public constructor <init>(S)V
    .locals 4

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->_header:[B

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 8
    iget-object p1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->_header:[B

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getRecordType()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-short v0, v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 9
    new-instance p1, Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    invoke-direct {p1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->hdAtom:Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/hslf/record/Record;

    aput-object p1, v0, v1

    .line 10
    iput-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csFooter:Lorg/apache/poi/hslf/record/CString;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->findInterestingChildren()V

    return-void
.end method

.method private findInterestingChildren()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    iput-object v3, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->hdAtom:Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lorg/apache/poi/hslf/record/CString;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/CString;->getOptions()I

    move-result v4

    shr-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    sget-object v3, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    const-string v5, "Unexpected CString.Options in HeadersFootersContainer: {}"

    invoke-static {v4}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csFooter:Lorg/apache/poi/hslf/record/CString;

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    goto :goto_1

    :cond_3
    iput-object v3, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    const-string v5, "Unexpected record in HeadersFootersContainer: {}"

    invoke-interface {v4, v5, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addFooterAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csFooter:Lorg/apache/poi/hslf/record/CString;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hslf/record/CString;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/CString;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csFooter:Lorg/apache/poi/hslf/record/CString;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->hdAtom:Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    if-eqz v1, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csFooter:Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csFooter:Lorg/apache/poi/hslf/record/CString;

    return-object p0
.end method

.method public addHeaderAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hslf/record/CString;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/CString;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->hdAtom:Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    return-object p0
.end method

.method public addUserDateAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hslf/record/CString;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/CString;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->hdAtom:Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

    return-object p0
.end method

.method public getFooterAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csFooter:Lorg/apache/poi/hslf/record/CString;

    return-object p0
.end method

.method public getHeaderAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csHeader:Lorg/apache/poi/hslf/record/CString;

    return-object p0
.end method

.method public getHeadersFootersAtom()Lorg/apache/poi/hslf/record/HeadersFootersAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->hdAtom:Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    return-object p0
.end method

.method public getOptions()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->_header:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->HeadersFooters:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getUserDateAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->csDate:Lorg/apache/poi/hslf/record/CString;

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getRecordType()J

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
