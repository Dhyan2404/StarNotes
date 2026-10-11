.class public Lcom/sun/org/apache/bcel/internal/generic/LDC_W;
.super Lcom/sun/org/apache/bcel/internal/generic/LDC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/LDC;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LDC;-><init>(I)V

    return-void
.end method


# virtual methods
.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LDC;->setIndex(I)V

    const/16 p1, 0x13

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    return-void
.end method
