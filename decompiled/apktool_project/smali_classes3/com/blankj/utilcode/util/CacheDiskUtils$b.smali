.class public final Lcom/blankj/utilcode/util/CacheDiskUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I[B)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->j(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b([B)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->i([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic c([B)[B
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([BII)[B
    .locals 2

    sub-int v0, p2, p1

    if-ltz v0, :cond_0

    new-array p2, v0, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "_$%010d$_"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f([B)[B
    .locals 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->h([B)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p0

    const/16 v1, 0xe

    invoke-static {p0, v1, v0}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->d([BII)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static g([B)J
    .locals 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->h([B)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-static {p0, v3, v4}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->d([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    :cond_0
    return-wide v1
.end method

.method public static h([B)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v3, p0, v1

    const/16 v4, 0x24

    if-ne v3, v4, :cond_0

    const/16 v3, 0xc

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_0

    const/16 v3, 0xd

    aget-byte p0, p0, v3

    if-ne p0, v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static i([B)Z
    .locals 4

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->g([B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(I[B)[B
    .locals 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$b;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
