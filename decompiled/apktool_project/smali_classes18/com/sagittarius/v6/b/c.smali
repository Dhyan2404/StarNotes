.class final Lcom/sagittarius/v6/b/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sagittarius/v6/b/c;->a()V

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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sagittarius/v6/b/c;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NhMRLh8vARE="

    const-string v3, "FreFS"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/b/c;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "KAQ6EwQjKScYACcXNz4bNAAtDh00DCsJ"

    const-string v3, "FeNzr"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method static synthetic a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sagittarius/v6/b/c;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {p0, v0}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sagittarius/v6/b/c;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    new-array v2, v2, [Ljava/io/File;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sagittarius/v6/b/s;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
