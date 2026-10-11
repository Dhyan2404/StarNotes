.class public Lcom/sunia/HTREnginev2/ari$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(IJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/ari$d;->a:I

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/ari$d;->b:J

    iput-wide p4, p0, Lcom/sunia/HTREnginev2/ari$d;->c:J

    iput-wide p6, p0, Lcom/sunia/HTREnginev2/ari$d;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/ari$d;->c:J

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/ari$d;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b(Ljavax/imageio/stream/ImageInputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result p0

    return p0
.end method

.method public c(Ljavax/imageio/stream/ImageInputStream;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2, p3, p4}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public d()J
    .locals 4

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/ari$d;->b:J

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/ari$d;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public e(Ljavax/imageio/stream/ImageInputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/ari$d;->b:J

    add-long/2addr v0, p2

    iget-wide p2, p0, Lcom/sunia/HTREnginev2/ari$d;->c:J

    sub-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/ari$d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/ari$d;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ari$d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "0x%04x[%d-%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
