.class final Lcom/sun/org/apache/bcel/internal/classfile/Signature$MyByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/classfile/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyByteArrayInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public final mark()I
    .locals 0

    iget p0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return p0
.end method

.method public final reset(I)V
    .locals 0

    iput p1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return-void
.end method

.method public final unread()V
    .locals 1

    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    :cond_0
    return-void
.end method
