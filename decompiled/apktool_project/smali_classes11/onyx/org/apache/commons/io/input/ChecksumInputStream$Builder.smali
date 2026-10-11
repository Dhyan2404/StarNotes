.class public Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/ChecksumInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/ChecksumInputStream;",
        "Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/util/zip/Checksum;

.field public m:J

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->m:J

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/ChecksumInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/ChecksumInputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v8, Lonyx/org/apache/commons/io/input/ChecksumInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->l:Ljava/util/zip/Checksum;

    iget-wide v3, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->n:J

    iget-wide v5, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->m:J

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lonyx/org/apache/commons/io/input/ChecksumInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;JJLonyx/org/apache/commons/io/input/ChecksumInputStream$a;)V

    return-object v8
.end method

.method public setChecksum(Ljava/util/zip/Checksum;)Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->l:Ljava/util/zip/Checksum;

    return-object p0
.end method

.method public setCountThreshold(J)Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0

    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->m:J

    return-object p0
.end method

.method public setExpectedChecksumValue(J)Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0

    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;->n:J

    return-object p0
.end method
