.class public final Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;
.super Lorg/apache/poi/hwpf/model/types/TCAbstractType;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# static fields
.field public static final SIZE:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;-><init>(Lorg/apache/poi/hwpf/model/types/TCAbstractType;)V

    return-void
.end method

.method public static convertBytesToTC([BI)Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;
    .locals 1

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;->fillFields([BI)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;->copy()Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;-><init>(Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;)V

    return-object v0
.end method

.method public fillFields([BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->field_1_rgf:S

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->field_2_wWidth:S

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    add-int/lit8 v1, p2, 0x4

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>([BI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->setBrcTop(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    add-int/lit8 v1, p2, 0x8

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>([BI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->setBrcLeft(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    add-int/lit8 v1, p2, 0xc

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>([BI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->setBrcBottom(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    add-int/lit8 p2, p2, 0x10

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>([BI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->setBrcRight(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    return-void
.end method

.method public serialize([BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    iget-short v1, p0, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->field_1_rgf:S

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p2, 0x2

    iget-short v1, p0, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->field_2_wWidth:S

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->getBrcTop()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->serialize([BI)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->getBrcLeft()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->serialize([BI)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->getBrcBottom()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    add-int/lit8 v1, p2, 0xc

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->serialize([BI)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TCAbstractType;->getBrcRight()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p0

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->serialize([BI)V

    return-void
.end method
