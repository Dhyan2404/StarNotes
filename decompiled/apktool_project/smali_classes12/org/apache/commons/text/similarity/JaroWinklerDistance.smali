.class public Lorg/apache/commons/text/similarity/JaroWinklerDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 14

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v7, v7, [Z

    move v8, v4

    move v9, v8

    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v8, v10, :cond_3

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    sub-int v11, v8, v2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int v12, v8, v2

    add-int/2addr v12, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_2
    if-ge v11, v12, :cond_2

    aget-boolean v13, v7, v11

    if-nez v13, :cond_1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v10, v13, :cond_1

    aput v11, v5, v8

    aput-boolean v3, v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-array v2, v9, [C

    new-array v3, v9, [C

    move v8, v4

    move v10, v8

    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v8, v11, :cond_5

    aget v11, v5, v8

    if-eq v11, v6, :cond_4

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v5, v4

    move v6, v5

    :goto_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v5, v8, :cond_7

    aget-boolean v8, v7, v5

    if-eqz v8, :cond_6

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput-char v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    move v5, v4

    move v6, v5

    :goto_6
    if-ge v5, v9, :cond_9

    aget-char v7, v2, v5

    aget-char v8, v3, v5

    if-eq v7, v8, :cond_8

    add-int/lit8 v6, v6, 0x1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    move v2, v4

    :goto_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v4, v3, :cond_a

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v3, v5, :cond_a

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    div-int/lit8 v6, v6, 0x2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    filled-new-array {v9, v6, v2, p0}, [I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 6

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1, p2}, Lorg/apache/commons/text/similarity/JaroWinklerDistance;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    aget v0, p0, v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-double v2, p1

    div-double v2, v0, v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-double p1, p1

    div-double p1, v0, p1

    add-double/2addr v2, p1

    const/4 p1, 0x1

    aget p1, p0, p1

    int-to-double p1, p1

    sub-double p1, v0, p1

    div-double/2addr p1, v0

    add-double/2addr v2, p1

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    div-double/2addr v2, p1

    const-wide p1, 0x3fe6666666666666L    # 0.7

    cmpg-double p1, v2, p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 6
    aget p1, p0, p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double p1, v0, p1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const/4 v4, 0x2

    aget p0, p0, v4

    int-to-double v4, p0

    mul-double/2addr p1, v4

    sub-double/2addr v0, v2

    mul-double/2addr p1, v0

    add-double/2addr v2, p1

    .line 7
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CharSequences must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/JaroWinklerDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
