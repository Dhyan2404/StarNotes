.class public Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;
.super Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    }
.end annotation


# instance fields
.field public k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

.field public l:Ljava/io/OutputStream;

.field public m:Ljava/nio/file/Path;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/nio/file/Path;

.field public q:Z


# direct methods
.method public constructor <init>(IILjava/io/File;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v6, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const-string v0, "prefix"

    .line 11
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x400

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p2, p1}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->M(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    .line 5
    iput-object p3, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->n:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->o:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/sunia/HTREnginev2/k1f;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/k1f;-><init>()V

    invoke-static {p5, p1}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->M(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->p:Ljava/nio/file/Path;

    .line 8
    new-instance p1, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-static {p6}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->I(I)I

    move-result p2

    invoke-direct {p1, p2}, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    .line 9
    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->l:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const-string v0, "prefix"

    .line 19
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v6, 0x400

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    const/4 p1, 0x0

    .line 13
    invoke-static {p2, p1}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->e0(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    .line 14
    iput-object p3, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->n:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->o:Ljava/lang/String;

    .line 16
    new-instance p1, Lcom/sunia/HTREnginev2/k1f;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/k1f;-><init>()V

    invoke-static {p5, p1}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->e0(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->p:Ljava/nio/file/Path;

    .line 17
    new-instance p1, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-static {p6}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->I(I)I

    move-result p2

    invoke-direct {p1, p2}, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    .line 18
    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->l:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;ILonyx/org/apache/commons/io/output/DeferredFileOutputStream$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;I)V

    return-void
.end method

.method public static synthetic H(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->e0(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static I(I)I
    .locals 1

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Initial buffer size must be at least 0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static M(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    :goto_0
    return-object p0
.end method

.method public static builder()Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static e0(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    :goto_0
    return-object p0
.end method

.method public static synthetic w(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->M(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->q:Z

    return-void
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    return-object p0
.end method

.method public getStream()Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->l:Ljava/io/OutputStream;

    return-object p0
.end method

.method public isInMemory()Z
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ThresholdingOutputStream;->isThresholdExceeded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public thresholdReached()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->n:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->p:Ljava/nio/file/Path;

    iget-object v3, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->o:Ljava/lang/String;

    new-array v4, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v2, v0, v3, v4}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    sget-object v2, Lonyx/org/apache/commons/io/file/PathUtils;->EMPTY_FILE_ATTRIBUTE_ARRAY:[Ljava/nio/file/attribute/FileAttribute;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lonyx/org/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    iget-object v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->l:Ljava/io/OutputStream;

    iput-object v3, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream not closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->k:Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->m:Ljava/nio/file/Path;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream not closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
