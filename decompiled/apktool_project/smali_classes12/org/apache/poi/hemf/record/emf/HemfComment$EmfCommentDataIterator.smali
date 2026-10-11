.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCommentDataIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentRecord:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

.field private final emfParent:Z

.field private final leis:Lorg/apache/poi/util/LittleEndianInputStream;

.field private final limit:I

.field private final startIdx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInputStream;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->limit:I

    iput-boolean p3, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->emfParent:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->startIdx:I

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->_next()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    return-void
.end method

.method private _next()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->emfParent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->limit:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    :try_start_1
    iget-object v4, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    iget-object v4, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v4}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v5

    long-to-int v5, v5

    int-to-long v6, v4

    sget-object v4, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfPublic:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    iget-wide v8, v4, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->id:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v8}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    if-eqz v4, :cond_2

    int-to-long v6, v5

    :cond_2
    invoke-static {v6, v7, v4}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->getById(JZ)Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->constructor:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    iget-object v5, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-interface {v4, v5, v2, v3}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;->init(Lorg/apache/poi/util/LittleEndianInputStream;J)J

    move-result-wide v2

    const-wide/16 v5, 0x4

    sub-long/2addr v0, v5

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

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
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->next()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    .line 4
    iget v1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->limit:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->leis:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->startIdx:I

    iget v3, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->limit:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_0

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
    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->_next()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->currentRecord:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

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
