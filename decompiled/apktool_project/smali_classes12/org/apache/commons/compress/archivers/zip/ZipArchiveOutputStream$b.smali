.class public final Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field public b:J

.field public c:J

.field public d:J

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->c:J

    return-wide v0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->c:J

    return-wide p1
.end method

.method public static synthetic c(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->d:J

    return-wide v0
.end method

.method public static synthetic d(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->d:J

    return-wide p1
.end method

.method public static synthetic e(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->f:Z

    return p0
.end method

.method public static synthetic g(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->f:Z

    return p1
.end method

.method public static synthetic h(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->b:J

    return-wide v0
.end method

.method public static synthetic i(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->b:J

    return-wide p1
.end method

.method public static synthetic j(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->e:Z

    return p0
.end method

.method public static synthetic k(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$b;->e:Z

    return p1
.end method
