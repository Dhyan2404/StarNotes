.class public Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private current:Ljava/lang/Object;

.field private final iterStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hwmf/record/HwmfRecord;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwmf/usermodel/HwmfPicture;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private checkHwmfEscapeRecord()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/poi/hwmf/record/HwmfEscape;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;-><init>()V

    sget-object v2, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->EMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    :try_start_0
    new-instance v2, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    check-cast v3, Lorg/apache/poi/hwmf/record/HwmfEscape;

    invoke-virtual {v3}, Lorg/apache/poi/hwmf/record/HwmfEscape;->getEscapeData()Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;

    invoke-virtual {v3}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->getEmfData()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    iput-object v1, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->getRemainingBytes()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v3, v3, Lorg/apache/poi/hwmf/record/HwmfEscape;

    if-nez v3, :cond_1

    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v1
.end method

.method private checkHwmfImageRecord()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    check-cast v0, Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;

    iput-object v2, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    new-instance p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    invoke-direct {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;-><init>()V

    sget-object v1, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->BMP:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    invoke-interface {v0}, Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;->getBMPData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;

    if-eqz v4, :cond_3

    iput-object v3, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    return v2

    :cond_3
    instance-of v4, v3, Lorg/apache/poi/hwmf/record/HwmfEscape;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hwmf/record/HwmfEscape;

    invoke-virtual {v4}, Lorg/apache/poi/hwmf/record/HwmfEscape;->getEscapeFunction()Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;->META_ESCAPE_ENHANCED_METAFILE:Lorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lorg/apache/poi/hwmf/record/HwmfEscape;->getEscapeData()Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;

    invoke-virtual {v4}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->current:Ljava/lang/Object;

    return v2

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->next()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->checkHwmfImageRecord()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;->checkHwmfEscapeRecord()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "no further embedded emf records found."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
