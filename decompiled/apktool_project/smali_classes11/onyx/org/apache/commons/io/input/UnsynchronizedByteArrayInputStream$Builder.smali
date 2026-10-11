.class public Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;",
        "Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public m:I


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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lonyx/org/apache/commons/io/build/AbstractOrigin;

    move-result-object v1

    invoke-virtual {v1}, Lonyx/org/apache/commons/io/build/AbstractOrigin;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->l:I

    iget p0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->m:I

    invoke-direct {v0, v1, v2, p0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public bridge synthetic setByteArray([B)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setByteArray([B)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setByteArray([B)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1

    const-string v0, "origin"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->m:I

    .line 3
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setByteArray([B)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    return-object p0
.end method

.method public setLength(I)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->m:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOffset(I)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->l:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
