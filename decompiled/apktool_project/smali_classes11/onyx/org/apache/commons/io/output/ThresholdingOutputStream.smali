.class public Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final j:Lonyx/org/apache/commons/io/function/IOFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Lonyx/org/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lonyx/org/apache/commons/io/function/IOFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field public h:J

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lhn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lhn;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->j:Lonyx/org/apache/commons/io/function/IOFunction;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/function/IOConsumer;->noop()Lonyx/org/apache/commons/io/function/IOConsumer;

    move-result-object v0

    sget-object v1, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->j:Lonyx/org/apache/commons/io/function/IOFunction;

    invoke-direct {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;-><init>(ILonyx/org/apache/commons/io/function/IOConsumer;Lonyx/org/apache/commons/io/function/IOFunction;)V

    return-void
.end method

.method public constructor <init>(ILonyx/org/apache/commons/io/function/IOConsumer;Lonyx/org/apache/commons/io/function/IOFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;",
            ">;",
            "Lonyx/org/apache/commons/io/function/IOFunction<",
            "Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    iput p1, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->e:I

    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Lonyx/org/apache/commons/io/function/IOConsumer;->noop()Lonyx/org/apache/commons/io/function/IOConsumer;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->f:Lonyx/org/apache/commons/io/function/IOConsumer;

    if-nez p3, :cond_2

    .line 5
    sget-object p3, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->j:Lonyx/org/apache/commons/io/function/IOFunction;

    :cond_2
    iput-object p3, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->g:Lonyx/org/apache/commons/io/function/IOFunction;

    return-void
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->j(Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lonyx/org/apache/commons/io/output/NullOutputStream;->INSTANCE:Lonyx/org/apache/commons/io/output/NullOutputStream;

    return-object p0
.end method


# virtual methods
.method public checkThreshold(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->i:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->e:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->i:Z

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->thresholdReached()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getByteCount()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->g:Lonyx/org/apache/commons/io/function/IOFunction;

    invoke-interface {v0, p0}, Lonyx/org/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    return-object p0
.end method

.method public getStream()Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getThreshold()I
    .locals 0

    iget p0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->e:I

    return p0
.end method

.method public isThresholdExceeded()Z
    .locals 4

    iget-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    iget p0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->e:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetByteCount()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->i:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    return-void
.end method

.method public setByteCount(J)V
    .locals 0

    iput-wide p1, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    return-void
.end method

.method public thresholdReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->f:Lonyx/org/apache/commons/io/function/IOConsumer;

    invoke-interface {v0, p0}, Lonyx/org/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 8
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 9
    iget-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 2
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 3
    iget-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p3}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 5
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    iget-wide p1, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->h:J

    return-void
.end method
