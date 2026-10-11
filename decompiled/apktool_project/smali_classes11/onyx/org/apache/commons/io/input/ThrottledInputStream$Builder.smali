.class public Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/ThrottledInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/ThrottledInputStream;",
        "Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;->l:J

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/ThrottledInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/ThrottledInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;->l:J

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lonyx/org/apache/commons/io/input/ThrottledInputStream;-><init>(Ljava/io/InputStream;JLonyx/org/apache/commons/io/input/ThrottledInputStream$a;)V

    return-object v0
.end method

.method public setMaxBytesPerSecond(J)V
    .locals 0

    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;->l:J

    return-void
.end method
