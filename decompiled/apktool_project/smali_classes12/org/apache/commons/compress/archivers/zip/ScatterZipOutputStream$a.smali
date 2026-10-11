.class public Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->b:J

    iput-wide p4, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->c:J

    iput-wide p6, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->d:J

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->a()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->d:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$a;->a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getMethod()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    return-object v0
.end method
