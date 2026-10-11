.class Lorg/apache/poi/hwpf/model/StdfPost2000;
.super Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->fillFields([BI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/hwpf/model/StdfPost2000;

    iget-short v2, p0, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_1_info1:S

    iget-short v3, p1, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_1_info1:S

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_2_rsid:J

    iget-wide v4, p1, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_2_rsid:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_3_info3:S

    iget-short p1, p1, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_3_info3:S

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-short v0, p0, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_1_info1:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_2_rsid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-short p0, p0, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->field_3_info3:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize()[B
    .locals 2

    invoke-static {}, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->getSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hwpf/model/types/StdfPost2000AbstractType;->serialize([BI)V

    return-object v0
.end method
