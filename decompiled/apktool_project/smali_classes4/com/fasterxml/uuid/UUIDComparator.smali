.class public Lcom/fasterxml/uuid/UUIDComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compareUInts(II)I
    .locals 0

    if-gez p0, :cond_1

    if-gez p1, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    if-gez p1, :cond_2

    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    sub-int/2addr p0, p1

    :goto_1
    return p0
.end method

.method public static final compareULongs(JJ)I
    .locals 4

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    shr-long v2, p2, v0

    long-to-int v0, v2

    invoke-static {v1, v0}, Lcom/fasterxml/uuid/UUIDComparator;->compareUInts(II)I

    move-result v0

    if-nez v0, :cond_0

    long-to-int p0, p0

    long-to-int p1, p2

    invoke-static {p0, p1}, Lcom/fasterxml/uuid/UUIDComparator;->compareUInts(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static staticCompare(Ljava/util/UUID;Ljava/util/UUID;)I
    .locals 4

    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/UUID;->version()I

    move-result v1

    sub-int v1, v0, v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    sget-object v1, Lcom/fasterxml/uuid/UUIDType;->TIME_BASED:Lcom/fasterxml/uuid/UUIDType;

    invoke-virtual {v1}, Lcom/fasterxml/uuid/UUIDType;->raw()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/util/UUID;->timestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->timestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/fasterxml/uuid/UUIDComparator;->compareULongs(JJ)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/fasterxml/uuid/UUIDComparator;->compareULongs(JJ)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/fasterxml/uuid/UUIDComparator;->compareULongs(JJ)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/fasterxml/uuid/UUIDComparator;->compareULongs(JJ)I

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/UUID;

    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/uuid/UUIDComparator;->compare(Ljava/util/UUID;Ljava/util/UUID;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/util/UUID;Ljava/util/UUID;)I
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/fasterxml/uuid/UUIDComparator;->staticCompare(Ljava/util/UUID;Ljava/util/UUID;)I

    move-result p0

    return p0
.end method
