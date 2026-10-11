.class public Lorg/mortbay/io/SimpleBuffers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/Buffers;


# instance fields
.field public e:[Lorg/mortbay/io/Buffer;


# direct methods
.method public constructor <init>([Lorg/mortbay/io/Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mortbay/io/SimpleBuffers;->e:[Lorg/mortbay/io/Buffer;

    return-void
.end method


# virtual methods
.method public getBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 3

    iget-object v0, p0, Lorg/mortbay/io/SimpleBuffers;->e:[Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->e:[Lorg/mortbay/io/Buffer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/io/SimpleBuffers;->e:[Lorg/mortbay/io/Buffer;

    aget-object p1, p0, v0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    return-object p0
.end method

.method public returnBuffer(Lorg/mortbay/io/Buffer;)V
    .locals 3

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    iget-object v0, p0, Lorg/mortbay/io/SimpleBuffers;->e:[Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->e:[Lorg/mortbay/io/Buffer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    aput-object p1, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
