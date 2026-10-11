.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentRecord:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

.field private final leis:Lorg/apache/poi/util/LittleEndianInputStream;

.field private final limit:I

.field private final startIdx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInputStream;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;-><init>(Lorg/apache/poi/util/LittleEndianInputStream;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    .line 4
    iput p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->limit:I

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->startIdx:I

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->_next()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    return-void
.end method

.method private _next()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->eof:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;->getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v8

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v6, v0

    invoke-static {v6, v7}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->getById(J)Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->constructor:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    int-to-long v4, v2

    move-object v2, v0

    invoke-interface/range {v2 .. v8}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;->init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J

    move-result-wide v2

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    add-int/lit8 v1, v1, -0xc

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    invoke-virtual {p0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined record of type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

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
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->next()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    .line 4
    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->limit:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->startIdx:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xc

    iget v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->limit:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 5
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->_next()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordIterator;->currentRecord:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;

    return-object v0

    .line 6
    :cond_3
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
