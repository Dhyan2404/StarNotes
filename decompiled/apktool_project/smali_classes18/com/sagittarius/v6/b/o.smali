.class final Lcom/sagittarius/v6/b/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sagittarius/v6/b/o;->a()V

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

    sput-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ADATDhYZIhM="

    const-string v3, "pQgfZ"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "ECs1MQgRIygaEAc="

    const-string v3, "tNMtd"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Mz08PRQyNSEWDCQLMQgIJT03Cx0zHTwbHScsLRcWJA=="

    const-string v3, "WXDxx"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "PmwachQPIDAiBR4sO3IVAjE8PBZXLjQ5FDMmLRcdEi4wPAU="

    const-string v3, "wCURq"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "KyIgBxQnNyMnKCMuLgwwNQ=="

    const-string v3, "FCKbD"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method static a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {p0, v0}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v7

    const-class v5, Ljava/io/File;

    aput-object v5, v4, v6

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v8

    invoke-static {v2, v1, v4}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object p2, v4, v6

    aput-object v3, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    sget-object v1, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v2, v1, v0}, Lcom/sagittarius/v6/b/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sagittarius/v6/b/h;->a([Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v2, v0}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/IOException;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    :goto_1
    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    sget-object v0, Lcom/sagittarius/v6/b/o;->a:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
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

    goto :goto_1

    :cond_2
    return-void
.end method
