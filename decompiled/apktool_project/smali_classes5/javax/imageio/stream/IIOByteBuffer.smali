.class public Ljavax/imageio/stream/IIOByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/imageio/stream/IIOByteBuffer;->a:[B

    iput p2, p0, Ljavax/imageio/stream/IIOByteBuffer;->b:I

    iput p3, p0, Ljavax/imageio/stream/IIOByteBuffer;->c:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Ljavax/imageio/stream/IIOByteBuffer;->a:[B

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Ljavax/imageio/stream/IIOByteBuffer;->c:I

    return p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Ljavax/imageio/stream/IIOByteBuffer;->b:I

    return p0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/stream/IIOByteBuffer;->a:[B

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Ljavax/imageio/stream/IIOByteBuffer;->c:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Ljavax/imageio/stream/IIOByteBuffer;->b:I

    return-void
.end method
