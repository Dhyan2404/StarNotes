.class public Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;",
        "Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;",
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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;->get()Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    move-result p0

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    return-object v0
.end method
