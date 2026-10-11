.class public final Lcom/sun/org/apache/bcel/internal/util/ByteSequence;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;
    }
.end annotation


# instance fields
.field private byte_stream:Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;-><init>([B)V

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->byte_stream:Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->byte_stream:Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;->getPosition()I

    move-result p0

    return p0
.end method

.method public final unreadByte()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->byte_stream:Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;->unreadByte()V

    return-void
.end method
