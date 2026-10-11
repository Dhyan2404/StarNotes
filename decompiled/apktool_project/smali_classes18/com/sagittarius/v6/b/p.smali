.class final Lcom/sagittarius/v6/b/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sagittarius/v6/b/p;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sagittarius/v6/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v2

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-byte v6, v2, v0

    array-length v7, v4

    rem-int v7, v1, v7

    aget-char v7, v4, v7

    xor-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FjM7EC0PITs="

    const-string v3, "fROxa"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CxUTJggKHQ4NEBw="

    const-string v3, "opkcd"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "ATwzDiIANC4lOhYKPjs+Fzw4OCsBHDMoKxUtIiQgFg=="

    const-string v3, "eYKKN"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "MG0EajwBIS46LRAtJWo9DDAiJD5ZLyohPD0nMw81HC8uJC0="

    const-string v3, "yBKJY"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "HwQMNQQcKAI9IgAcIzU1NwkCPSgcERQ="

    const-string v3, "regPM"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method static a(Ljava/lang/ClassLoader;Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/sagittarius/v6/b/p;->a(Ljava/lang/ClassLoader;[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static a(Ljava/lang/ClassLoader;[Ljava/nio/ByteBuffer;)V
    .locals 8

    const/4 v7, 0x0

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {p0, v0}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, p1, v3}, Lcom/sagittarius/v6/b/p;->a(Ljava/lang/Object;[Ljava/nio/ByteBuffer;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v2, v1, v0}, Lcom/sagittarius/v6/b/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sagittarius/v6/b/h;->a([Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v2, v0}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/IOException;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    :goto_0
    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v5, v0

    add-int/2addr v1, v5

    new-array v1, v1, [Ljava/io/IOException;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v6, v0

    invoke-static {v0, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;[Ljava/nio/ByteBuffer;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sagittarius/v6/b/p;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [Ljava/nio/ByteBuffer;

    aput-object v2, v1, v3

    const-class v2, Ljava/util/List;

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
