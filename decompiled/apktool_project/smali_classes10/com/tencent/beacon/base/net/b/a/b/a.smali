.class public Lcom/tencent/beacon/base/net/b/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public static final a(I)I
    .locals 1

    .line 2
    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public static final b(I)Z
    .locals 1

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(I)I
    .locals 1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x3

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x6

    return p0
.end method

.method public static final d(I)I
    .locals 1

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method public static final e(I)I
    .locals 1

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    :goto_0
    return p0
.end method

.method public static final f(I)I
    .locals 1

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/16 p0, 0x9

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    :goto_0
    return p0
.end method
