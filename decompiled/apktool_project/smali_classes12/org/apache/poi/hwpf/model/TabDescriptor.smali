.class public Lorg/apache/poi/hwpf/model/TabDescriptor;
.super Lorg/apache/poi/hwpf/model/types/TBDAbstractType;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/TBDAbstractType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/model/TabDescriptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/model/types/TBDAbstractType;-><init>(Lorg/apache/poi/hwpf/model/types/TBDAbstractType;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/TBDAbstractType;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/model/types/TBDAbstractType;->fillFields([BI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/TabDescriptor;->copy()Lorg/apache/poi/hwpf/model/TabDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/model/TabDescriptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/model/TabDescriptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/model/TabDescriptor;-><init>(Lorg/apache/poi/hwpf/model/TabDescriptor;)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 2

    invoke-static {}, Lorg/apache/poi/hwpf/model/types/TBDAbstractType;->getSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hwpf/model/types/TBDAbstractType;->serialize([BI)V

    return-object v0
.end method
