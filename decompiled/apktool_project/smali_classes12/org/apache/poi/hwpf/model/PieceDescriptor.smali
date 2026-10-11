.class public final Lorg/apache/poi/hwpf/model/PieceDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final descriptor:S

.field fc:I

.field private final prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

.field private final unicode:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/hwpf/model/PieceDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->descriptor:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->descriptor:S

    .line 3
    iget v0, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    .line 4
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PropertyModifier;->copy()Lorg/apache/poi/hwpf/model/PropertyModifier;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    .line 5
    iget-boolean v0, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    iput-boolean v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->charset:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;-><init>([BILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>([BILjava/nio/charset/Charset;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->descriptor:S

    add-int/lit8 p2, p2, 0x2

    .line 10
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    add-int/lit8 p2, p2, 0x4

    .line 11
    new-instance v0, Lorg/apache/poi/hwpf/model/PropertyModifier;

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    invoke-direct {v0, p1}, Lorg/apache/poi/hwpf/model/PropertyModifier;-><init>(S)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p3, :cond_1

    .line 12
    iget p3, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 13
    iput-boolean p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->charset:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 15
    :cond_0
    iput-boolean p2, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    const p1, -0x40000001    # -1.9999999f

    and-int/2addr p1, p3

    .line 16
    iput p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    .line 17
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    .line 18
    sget-object p1, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->charset:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 19
    :cond_1
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_2

    .line 20
    iput-boolean p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    goto :goto_0

    .line 21
    :cond_2
    iput-boolean p2, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    .line 22
    :goto_0
    iput-object p3, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->charset:Ljava/nio/charset/Charset;

    :goto_1
    return-void
.end method

.method public static getSizeInBytes()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->copy()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/model/PieceDescriptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/model/PieceDescriptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;-><init>(Lorg/apache/poi/hwpf/model/PieceDescriptor;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lorg/apache/poi/hwpf/model/PieceDescriptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;

    iget-short v2, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->descriptor:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->descriptor:S

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    if-eqz v2, :cond_5

    return v1

    :cond_4
    iget-object v3, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hwpf/model/PropertyModifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-boolean p0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    iget-boolean p1, p1, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    if-eq p0, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getFilePosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    return p0
.end method

.method public getPrm()Lorg/apache/poi/hwpf/model/PropertyModifier;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->descriptor:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    iget-boolean p0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isUnicode()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    return p0
.end method

.method public setFilePosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    return-void
.end method

.method public toByteArray()[B
    .locals 4

    iget v0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->fc:I

    iget-boolean v1, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->unicode:Z

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [B

    iget-short v2, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->descriptor:S

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PieceDescriptor;->prm:Lorg/apache/poi/hwpf/model/PropertyModifier;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PropertyModifier;->getValue()S

    move-result p0

    const/4 v0, 0x6

    invoke-static {v1, v0, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PieceDescriptor (pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->isUnicode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unicode"

    goto :goto_0

    :cond_0
    const-string v1, "non-unicode"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; prm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getPrm()Lorg/apache/poi/hwpf/model/PropertyModifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
