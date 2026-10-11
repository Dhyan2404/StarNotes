.class public final Lorg/apache/xerces/impl/dv/xs/FloatDV$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/datatypes/XSFloat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/dv/xs/FloatDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:F

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/xerces/impl/dv/xs/DoubleDV;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    goto :goto_1

    :cond_0
    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-string v0, "-INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    :cond_2
    const-string v0, "NaN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lorg/apache/xerces/impl/dv/xs/FloatDV$a;Lorg/apache/xerces/impl/dv/xs/FloatDV$a;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b(Lorg/apache/xerces/impl/dv/xs/FloatDV$a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lorg/apache/xerces/impl/dv/xs/FloatDV$a;)I
    .locals 2

    iget p1, p1, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    cmpl-float v0, p0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    cmpl-float p0, p0, p0

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    cmpl-float p0, p1, p1

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public c(Lorg/apache/xerces/impl/dv/xs/FloatDV$a;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    iget v1, p1, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    cmpl-float v2, p0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    iget p1, p1, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    return v0

    :cond_3
    cmpl-float p0, p0, p0

    if-eqz p0, :cond_4

    cmpl-float p0, v1, v1

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    iget p1, p1, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    cmpl-float v1, p0, p1

    if-nez v1, :cond_2

    return v0

    :cond_2
    cmpl-float p0, p0, p0

    if-eqz p0, :cond_3

    cmpl-float p0, p1, p1

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getValue()F
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b:Ljava/lang/String;

    if-nez v0, :cond_d

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const-string v0, "INF"

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b:Ljava/lang/String;

    goto/16 :goto_8

    :cond_0
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const-string v0, "-INF"

    goto :goto_0

    :cond_1
    cmpl-float v1, v0, v0

    if-eqz v1, :cond_2

    const-string v0, "NaN"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    const-string v0, "0.0E1"

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b:Ljava/lang/String;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, 0x3

    new-array v2, v2, [C

    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v3, v2, v4

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    iget v6, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->a:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    const/16 v8, 0x2e

    const/16 v9, 0x30

    if-gez v7, :cond_9

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v3, 0x1

    move v7, v6

    :goto_2
    aget-char v10, v2, v7

    if-eq v10, v9, :cond_8

    add-int/lit8 v11, v3, -0x1

    aput-char v10, v2, v11

    aput-char v8, v2, v3

    add-int/lit8 v8, v7, 0x1

    move v10, v6

    :goto_3
    if-lt v8, v0, :cond_7

    sub-int/2addr v7, v3

    sub-int/2addr v0, v7

    if-ne v0, v6, :cond_6

    add-int/lit8 v3, v0, 0x1

    aput-char v9, v2, v0

    move v0, v3

    :cond_6
    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v0

    add-int/lit8 v0, v3, 0x1

    aput-char v5, v2, v3

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v7, v9

    int-to-char v3, v7

    aput-char v3, v2, v0

    goto :goto_7

    :cond_7
    aget-char v11, v2, v8

    aput-char v11, v2, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    iget-object v5, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v6, v5

    :goto_5
    if-gt v6, v3, :cond_c

    aput-char v8, v2, v3

    :goto_6
    add-int/lit8 v6, v0, -0x1

    aget-char v6, v2, v6

    if-eq v6, v9, :cond_b

    if-ne v6, v8, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    add-int/lit8 v6, v0, 0x1

    aput-char v1, v2, v0

    sub-int/2addr v5, v3

    add-int/lit8 v1, v6, 0x1

    add-int/2addr v5, v9

    int-to-char v0, v5

    aput-char v0, v2, v6

    :goto_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v7, v6, -0x1

    aget-char v7, v2, v7

    aput-char v7, v2, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_d
    :goto_8
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/FloatDV$a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
