.class public final Lorg/apache/commons/compress/archivers/zip/ZipFile$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:[B

.field public final b:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$e;->a:[B

    .line 4
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$e;->b:[B

    return-void
.end method

.method public synthetic constructor <init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$e;-><init>([B[B)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/archivers/zip/ZipFile$e;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$e;->a:[B

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/archivers/zip/ZipFile$e;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$e;->b:[B

    return-object p0
.end method
