.class public Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/output/LockableFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/output/LockableFileWriter;",
        "Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Z

.field public m:Lonyx/org/apache/commons/io/build/AbstractOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    invoke-static {}, Lonyx/org/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;->m:Lonyx/org/apache/commons/io/build/AbstractOrigin;

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;->get()Lonyx/org/apache/commons/io/output/LockableFileWriter;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/output/LockableFileWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/output/LockableFileWriter;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v1

    invoke-virtual {v1}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iget-boolean v3, p0, Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;->l:Z

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;->m:Lonyx/org/apache/commons/io/build/AbstractOrigin;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lonyx/org/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLjava/lang/String;)V

    return-object v0
.end method

.method public setAppend(Z)Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;->l:Z

    return-object p0
.end method

.method public setLockDirectory(Ljava/io/File;)Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lonyx/org/apache/commons/io/FileUtils;->getTempDirectory()Ljava/io/File;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;->m:Lonyx/org/apache/commons/io/build/AbstractOrigin;

    return-object p0
.end method

.method public setLockDirectory(Ljava/lang/String;)Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lonyx/org/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/lang/String;)Lonyx/org/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/LockableFileWriter$Builder;->m:Lonyx/org/apache/commons/io/build/AbstractOrigin;

    return-object p0
.end method
