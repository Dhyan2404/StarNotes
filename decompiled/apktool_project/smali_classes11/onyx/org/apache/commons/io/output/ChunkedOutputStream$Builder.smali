.class public Lonyx/org/apache/commons/io/output/ChunkedOutputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/output/ChunkedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/output/ChunkedOutputStream;",
        "Lonyx/org/apache/commons/io/output/ChunkedOutputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/ChunkedOutputStream$Builder;->get()Lonyx/org/apache/commons/io/output/ChunkedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/output/ChunkedOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/output/ChunkedOutputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lonyx/org/apache/commons/io/output/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method
