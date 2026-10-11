.class final Lcom/sun/org/apache/bcel/internal/util/ByteSequence$ByteArrayStream;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/util/ByteSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayStream"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final getPosition()I
    .locals 0

    iget p0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return p0
.end method

.method public final unreadByte()V
    .locals 1

    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    :cond_0
    return-void
.end method
