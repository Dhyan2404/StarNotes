.class public final Lorg/apache/poi/hwpf/usermodel/TableProperties;
.super Lorg/apache/poi/hwpf/model/types/TAPAbstractType;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setTlp(Lorg/apache/poi/hwpf/usermodel/TableAutoformatLookSpecifier;)V

    .line 3
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setShdTable(Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;)V

    .line 4
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setBrcBottom(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    .line 5
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setBrcHorizontal(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    .line 6
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setBrcLeft(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    .line 7
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setBrcRight(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    .line 8
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setBrcTop(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    .line 9
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setBrcVertical(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    .line 10
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgbrcInsideDefault_0(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    .line 11
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgbrcInsideDefault_1(Lorg/apache/poi/hwpf/usermodel/BorderCode;)V

    const/4 v0, 0x0

    new-array v1, v0, [S

    .line 12
    invoke-virtual {p0, v1}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgdxaCenter([S)V

    new-array v1, v0, [S

    .line 13
    invoke-virtual {p0, v1}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgdxaCenterPrint([S)V

    new-array v1, v0, [Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    .line 14
    invoke-virtual {p0, v1}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgshd([Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;)V

    new-array v0, v0, [Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    .line 15
    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgtc([Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/usermodel/TableProperties;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;-><init>(Lorg/apache/poi/hwpf/model/types/TAPAbstractType;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 4

    .line 17
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setItcMac(S)V

    .line 19
    new-array v0, p1, [Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgshd([Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->getRgshd()[Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;

    invoke-direct {v3}, Lorg/apache/poi/hwpf/usermodel/ShadingDescriptor;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-array v1, p1, [Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    :goto_1
    if-ge v0, p1, :cond_1

    .line 22
    new-instance v2, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;

    invoke-direct {v2}, Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgtc([Lorg/apache/poi/hwpf/usermodel/TableCellDescriptor;)V

    .line 24
    new-array v0, p1, [S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgdxaCenter([S)V

    .line 25
    new-array p1, p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/types/TAPAbstractType;->setRgdxaCenterPrint([S)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableProperties;->copy()Lorg/apache/poi/hwpf/usermodel/TableProperties;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/usermodel/TableProperties;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/TableProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/usermodel/TableProperties;-><init>(Lorg/apache/poi/hwpf/usermodel/TableProperties;)V

    return-object v0
.end method
