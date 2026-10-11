.class final Lcom/sagittarius/v6/b/i;
.super Ljava/lang/Object;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/sagittarius/v6/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sagittarius/v6/b/i;->a()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/sagittarius/v6/b/k;

    invoke-direct {v0, v1}, Lcom/sagittarius/v6/b/k;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v0, p0, Lcom/sagittarius/v6/b/i;->a:Lcom/sagittarius/v6/b/j;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/sagittarius/v6/b/l;

    invoke-direct {v0, v1}, Lcom/sagittarius/v6/b/l;-><init>(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/sagittarius/v6/b/m;

    invoke-direct {v0, v1}, Lcom/sagittarius/v6/b/m;-><init>(Ljava/lang/Class;)V

    goto :goto_0
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "JzAuECMofzEfOTc0L0gOJikSBz4rHSsVPmcULgMnJj82"

    const-string v3, "CQBfJ"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CiQ9PCMTNj0="

    const-string v3, "zEITo"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "NhcCKx43Hx8ABiE="

    const-string v3, "Rrznr"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "Ny0hLSArKTggCzM/"

    const-string v3, "GLUEe"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method static a(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 13

    const/4 v2, 0x0

    sget-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/sagittarius/v6/b/i;

    invoke-direct {v4}, Lcom/sagittarius/v6/b/i;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/Object;

    move v1, v2

    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v6, v4, Lcom/sagittarius/v6/b/i;->a:Lcom/sagittarius/v6/b/j;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {}, Lcom/sagittarius/v6/b/h;->a()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/sagittarius/v6/b/h;->a:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/sagittarius/v6/b/j;->a(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v3, v0, v5}, Lcom/sagittarius/v6/b/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v5}, Lcom/sagittarius/v6/b/h;->a([Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/sagittarius/v6/b/i;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v3, v0, v5}, Lcom/sagittarius/v6/b/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
