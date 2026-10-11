.class public Lorg/apache/poi/hwpf/model/OldTextPiece;
.super Lorg/apache/poi/hwpf/model/TextPiece;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final rawBytes:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hwpf/model/TextPiece;-><init>(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)V

    .line 4
    iput-object p3, p0, Lorg/apache/poi/hwpf/model/OldTextPiece;->rawBytes:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/model/OldTextPiece;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/model/TextPiece;-><init>(Lorg/apache/poi/hwpf/model/TextPiece;)V

    .line 2
    iget-object p1, p1, Lorg/apache/poi/hwpf/model/OldTextPiece;->rawBytes:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hwpf/model/OldTextPiece;->rawBytes:[B

    return-void
.end method


# virtual methods
.method public adjustForDelete(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bytesLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldTextPiece;->rawBytes:[B

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/OldTextPiece;->copy()Lorg/apache/poi/hwpf/model/OldTextPiece;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/model/OldTextPiece;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hwpf/model/OldTextPiece;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/model/OldTextPiece;-><init>(Lorg/apache/poi/hwpf/model/OldTextPiece;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hwpf/model/PropertyNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/OldTextPiece;->copy()Lorg/apache/poi/hwpf/model/OldTextPiece;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hwpf/model/TextPiece;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/OldTextPiece;->copy()Lorg/apache/poi/hwpf/model/OldTextPiece;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hwpf/model/OldTextPiece;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldTextPiece;->rawBytes:[B

    check-cast p1, Lorg/apache/poi/hwpf/model/OldTextPiece;

    iget-object p1, p1, Lorg/apache/poi/hwpf/model/OldTextPiece;->rawBytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRawBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldTextPiece;->rawBytes:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public isUnicode()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OldTextPiece from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
