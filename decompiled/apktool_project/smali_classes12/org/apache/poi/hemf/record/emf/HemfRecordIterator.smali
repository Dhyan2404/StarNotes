.class public Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
        ">;"
    }
.end annotation


# static fields
.field static final HEADER_SIZE:I = 0x8


# instance fields
.field private currentRecord:Lorg/apache/poi/hemf/record/emf/HemfRecord;

.field private final stream:Lorg/apache/poi/util/LittleEndianInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->_next()Lorg/apache/poi/hemf/record/emf/HemfRecord;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfRecord;

    return-void
.end method

.method private _next()Lorg/apache/poi/hemf/record/emf/HemfRecord;
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->eof:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object v0

    if-ne v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v7

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v7, v8}, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->getById(J)Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, v3, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->constructor:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfRecord;

    const-wide/16 v3, 0x8

    sub-long/2addr v1, v3

    :try_start_1
    iget-object v4, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    move-object v3, v0

    move-wide v5, v1

    invoke-interface/range {v3 .. v8}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Record limit exceeded - readBytes: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / remBytes: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lorg/apache/poi/util/RecordFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined record of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfRecord;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->next()Lorg/apache/poi/hemf/record/emf/HemfRecord;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/hemf/record/emf/HemfRecord;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfRecord;

    .line 4
    instance-of v1, v0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfEof;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->_next()Lorg/apache/poi/hemf/record/emf/HemfRecord;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfRecord;

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Remove not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
