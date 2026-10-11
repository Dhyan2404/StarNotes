.class public Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;",
        "Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    invoke-static {}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSizeDefault(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    invoke-static {}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader$Builder;->get()Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result v2

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lonyx/org/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V

    return-object v0
.end method
