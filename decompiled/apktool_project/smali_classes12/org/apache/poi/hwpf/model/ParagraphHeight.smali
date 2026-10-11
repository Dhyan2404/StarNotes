.class public final Lorg/apache/poi/hwpf/model/ParagraphHeight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final clMac:Lorg/apache/poi/util/BitField;

.field private static final fDiffLines:Lorg/apache/poi/util/BitField;

.field private static final fSpare:Lorg/apache/poi/util/BitField;

.field private static final fUnk:Lorg/apache/poi/util/BitField;


# instance fields
.field private dxaCol:I

.field private dymLineOrHeight:I

.field private infoField:S

.field private reserved:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->fSpare:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->fUnk:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->fDiffLines:Lorg/apache/poi/util/BitField;

    const v0, 0xff00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->clMac:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/model/ParagraphHeight;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->infoField:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->infoField:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->reserved:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->reserved:S

    .line 5
    iget v0, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dxaCol:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dxaCol:I

    .line 6
    iget p1, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dymLineOrHeight:I

    iput p1, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dymLineOrHeight:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->infoField:S

    add-int/lit8 p2, p2, 0x2

    .line 9
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->reserved:S

    add-int/lit8 p2, p2, 0x2

    .line 10
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dxaCol:I

    add-int/lit8 p2, p2, 0x4

    .line 11
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dymLineOrHeight:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/ParagraphHeight;->copy()Lorg/apache/poi/hwpf/model/ParagraphHeight;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/model/ParagraphHeight;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/model/ParagraphHeight;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/model/ParagraphHeight;-><init>(Lorg/apache/poi/hwpf/model/ParagraphHeight;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;

    iget-short v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->infoField:S

    iget-short v2, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->infoField:S

    if-ne v0, v2, :cond_1

    iget-short v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->reserved:S

    iget-short v2, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->reserved:S

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dxaCol:I

    iget v2, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dxaCol:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dymLineOrHeight:I

    iget p1, p1, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dymLineOrHeight:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public toByteArray()[B
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-short v2, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->infoField:S

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 v1, 0x2

    iget-short v2, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->reserved:S

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dxaCol:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/16 v1, 0x8

    iget p0, p0, Lorg/apache/poi/hwpf/model/ParagraphHeight;->dymLineOrHeight:I

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/ParagraphHeight;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
