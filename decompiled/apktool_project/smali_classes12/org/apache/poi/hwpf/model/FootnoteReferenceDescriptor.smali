.class public final Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;
.super Lorg/apache/poi/hwpf/model/types/FRDAbstractType;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;-><init>(Lorg/apache/poi/hwpf/model/types/FRDAbstractType;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;->fillFields([BI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;->copy()Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;-><init>(Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;)V

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
    const-class v2, Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;->field_1_nAuto:S

    iget-short p1, p1, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;->field_1_nAuto:S

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;->field_1_nAuto:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;->field_1_nAuto:S

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/FootnoteReferenceDescriptor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[FRD] EMPTY"

    return-object p0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/hwpf/model/types/FRDAbstractType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
