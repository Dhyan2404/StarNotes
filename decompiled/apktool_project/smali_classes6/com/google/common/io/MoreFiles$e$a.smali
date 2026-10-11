.class public Lcom/google/common/io/MoreFiles$e$a;
.super Lcom/google/common/io/ByteSource$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/MoreFiles$e;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/io/MoreFiles$e;


# direct methods
.method public constructor <init>(Lcom/google/common/io/MoreFiles$e;Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/MoreFiles$e$a;->c:Lcom/google/common/io/MoreFiles$e;

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/ByteSource$a;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public lines()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/MoreFiles$e$a;->c:Lcom/google/common/io/MoreFiles$e;

    invoke-static {v0}, Lcom/google/common/io/MoreFiles$e;->b(Lcom/google/common/io/MoreFiles$e;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/io/ByteSource$a;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
