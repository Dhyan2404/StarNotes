.class public final Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field public b:Z

.field public c:Z

.field public d:J

.field public e:J

.field public final f:Ljava/util/zip/CRC32;

.field public g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->f:Ljava/util/zip/CRC32;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->a:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->b:Z

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->b:Z

    return p1
.end method

.method public static synthetic d(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->g:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->g:Ljava/io/InputStream;

    return-object p1
.end method

.method public static synthetic f(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->c:Z

    return p0
.end method

.method public static synthetic g(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->c:Z

    return p1
.end method

.method public static synthetic h(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)Ljava/util/zip/CRC32;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->f:Ljava/util/zip/CRC32;

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->d:J

    return-wide v0
.end method

.method public static synthetic j(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->d:J

    return-wide p1
.end method

.method public static synthetic k(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->o()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->e:J

    return-wide v0
.end method

.method public static synthetic m(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->e:J

    return-wide p1
.end method

.method public static synthetic n(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;)J
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->e:J

    return-wide v0
.end method


# virtual methods
.method public final o()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/io/InputStream;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$c;->g:Ljava/io/InputStream;

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method
