.class public Lcom/sagittarius/v6/B;
.super Ljava/lang/Object;


# static fields
.field private static final lIIll:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sagittarius/v6/B;->lIIll()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IIIll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

.method public static a1(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sagittarius/v6/B;->lIIll:[Ljava/lang/String;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/sagittarius/v6/AppInfo;->DATAPATH:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/sagittarius/v6/AppInfo;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static lIIll()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sagittarius/v6/B;->lIIll:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TTpgenEbZiM9NkclJjZxG2c8Ow=="

    const-string v3, "hIOTT"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/B;->IIIll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
