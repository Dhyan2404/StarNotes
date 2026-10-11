.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final f:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->f:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->a:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    return-object p1
.end method

.method public static synthetic b(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->b:I

    return p1
.end method

.method public static synthetic c(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->c:I

    return p1
.end method

.method public static synthetic d(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->d:I

    return p0
.end method

.method public static synthetic e(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->d:I

    return p1
.end method

.method public static synthetic f(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->e:I

    return p1
.end method

.method public static synthetic g(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->e:I

    return v0
.end method

.method public static synthetic h(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->f:[B

    return-object p0
.end method


# virtual methods
.method public i(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->f:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->d:I

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->e:I

    return p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->c:I

    return p0
.end method

.method public m()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->a:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    return-object p0
.end method

.method public n()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->b:I

    return p0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;->c:I

    return-void
.end method
