.class public Lcom/sunia/HTREnginev2/gsj$a;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/gsj;-><init>(Lokio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/sunia/HTREnginev2/gsj;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/gsj;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gsj$a;->f:Lcom/sunia/HTREnginev2/gsj;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gsj$a;->f:Lcom/sunia/HTREnginev2/gsj;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/gsj;->a(Lcom/sunia/HTREnginev2/gsj;)I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/gsj$a;->f:Lcom/sunia/HTREnginev2/gsj;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/gsj;->a(Lcom/sunia/HTREnginev2/gsj;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    return-wide v1

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gsj$a;->f:Lcom/sunia/HTREnginev2/gsj;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/gsj;->a(Lcom/sunia/HTREnginev2/gsj;)I

    move-result p3

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    invoke-static {p0, p3}, Lcom/sunia/HTREnginev2/gsj;->b(Lcom/sunia/HTREnginev2/gsj;I)I

    return-wide p1
.end method
