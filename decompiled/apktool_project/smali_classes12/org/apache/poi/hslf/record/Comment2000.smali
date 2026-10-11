.class public final Lorg/apache/poi/hslf/record/Comment2000;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# static fields
.field private static final _type:J


# instance fields
.field private _header:[B

.field private authorInitialsRecord:Lorg/apache/poi/hslf/record/CString;

.field private authorRecord:Lorg/apache/poi/hslf/record/CString;

.field private commentAtom:Lorg/apache/poi/hslf/record/Comment2000Atom;

.field private commentRecord:Lorg/apache/poi/hslf/record/CString;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->Comment2000:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/Comment2000;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/Comment2000;->_header:[B

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/poi/hslf/record/Record;

    .line 7
    iput-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 8
    sget-wide v3, Lorg/apache/poi/hslf/record/Comment2000;->_type:J

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
    new-instance v4, Lorg/apache/poi/hslf/record/CString;

    invoke-direct {v4}, Lorg/apache/poi/hslf/record/CString;-><init>()V

    .line 12
    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    const/16 v5, 0x10

    .line 13
    invoke-virtual {v1, v5}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    const/16 v5, 0x20

    .line 14
    invoke-virtual {v4, v5}, Lorg/apache/poi/hslf/record/CString;->setOptions(I)V

    .line 15
    iget-object v5, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    .line 16
    aput-object v1, v5, v0

    .line 17
    aput-object v4, v5, v3

    .line 18
    new-instance v0, Lorg/apache/poi/hslf/record/Comment2000Atom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/Comment2000Atom;-><init>()V

    const/4 v1, 0x3

    aput-object v0, v5, v1

    .line 19
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/Comment2000;->findInterestingChildren()V

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/Comment2000;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/Comment2000;->findInterestingChildren()V

    return-void
.end method

.method private findInterestingChildren()V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/apache/poi/hslf/record/CString;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/CString;->getOptions()I

    move-result v4

    shr-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-object v3, p0, Lorg/apache/poi/hslf/record/Comment2000;->authorInitialsRecord:Lorg/apache/poi/hslf/record/CString;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lorg/apache/poi/hslf/record/Comment2000;->commentRecord:Lorg/apache/poi/hslf/record/CString;

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lorg/apache/poi/hslf/record/Comment2000;->authorRecord:Lorg/apache/poi/hslf/record/CString;

    goto :goto_1

    :cond_3
    instance-of v4, v3, Lorg/apache/poi/hslf/record/Comment2000Atom;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/apache/poi/hslf/record/Comment2000Atom;

    iput-object v3, p0, Lorg/apache/poi/hslf/record/Comment2000;->commentAtom:Lorg/apache/poi/hslf/record/Comment2000Atom;

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Unexpected record with type={} in Comment2000: {}"

    invoke-interface {v4, v6, v5, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Comment2000;->authorRecord:Lorg/apache/poi/hslf/record/CString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getAuthorInitials()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Comment2000;->authorInitialsRecord:Lorg/apache/poi/hslf/record/CString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getComment2000Atom()Lorg/apache/poi/hslf/record/Comment2000Atom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Comment2000;->commentAtom:Lorg/apache/poi/hslf/record/Comment2000Atom;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/Comment2000;->_type:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Comment2000;->commentRecord:Lorg/apache/poi/hslf/record/CString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Comment2000;->authorRecord:Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthorInitials(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Comment2000;->authorInitialsRecord:Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Comment2000;->commentRecord:Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/Comment2000;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/Comment2000;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
