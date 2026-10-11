.class public final Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;
.super Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0x9

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;-><init>(BII)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result p1

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;-><init>(BII)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;-><init>(BLjava/io/DataInputStream;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitConstantFieldref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;)V

    return-void
.end method
