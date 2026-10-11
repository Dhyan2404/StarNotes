.class public final Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;
.super Lorg/apache/poi/hwpf/model/types/BKFAbstractType;
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
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;-><init>(Lorg/apache/poi/hwpf/model/types/BKFAbstractType;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->fillFields([BI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;->copy()Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;-><init>(Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;)V

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
    const-class v2, Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;

    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_1_ibkl:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_1_ibkl:S

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_2_bkf_flags:S

    iget-short p1, p1, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_2_bkf_flags:S

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_1_ibkl:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_2_bkf_flags:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_1_ibkl:S

    if-nez v0, :cond_0

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->field_2_bkf_flags:S

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

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/BookmarkFirstDescriptor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[BKF] EMPTY"

    return-object p0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/hwpf/model/types/BKFAbstractType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
