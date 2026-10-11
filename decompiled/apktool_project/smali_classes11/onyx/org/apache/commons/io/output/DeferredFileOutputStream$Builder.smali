.class public Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;",
        "Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public m:Ljava/nio/file/Path;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSizeDefault(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->get()Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;
    .locals 9

    .line 2
    new-instance v8, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;

    iget v1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->l:I

    iget-object v2, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->m:Ljava/nio/file/Path;

    iget-object v3, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->n:Ljava/lang/String;

    iget-object v4, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->o:Ljava/lang/String;

    iget-object v5, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->p:Ljava/nio/file/Path;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;ILonyx/org/apache/commons/io/output/DeferredFileOutputStream$a;)V

    return-object v8
.end method

.method public setDirectory(Ljava/io/File;)Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->w(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->p:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setDirectory(Ljava/nio/file/Path;)Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->H(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->p:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setOutputFile(Ljava/io/File;)Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->w(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->m:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setOutputFile(Ljava/nio/file/Path;)Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream;->H(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->m:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setThreshold(I)Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    iput p1, p0, Lonyx/org/apache/commons/io/output/DeferredFileOutputStream$Builder;->l:I

    return-object p0
.end method
