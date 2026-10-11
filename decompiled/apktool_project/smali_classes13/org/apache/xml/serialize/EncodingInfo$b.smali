.class public Lorg/apache/xml/serialize/EncodingInfo$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Z

.field public static synthetic f:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "canEncode"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.nio.charset.Charset"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "java.nio.charset.CharsetEncoder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "forName"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Lorg/apache/xml/serialize/EncodingInfo$b;->f:Ljava/lang/Class;

    if-nez v7, :cond_0

    const-string v7, "java.lang.String"

    invoke-static {v7}, Lorg/apache/xml/serialize/EncodingInfo$b;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/xml/serialize/EncodingInfo$b;->f:Ljava/lang/Class;

    :cond_0
    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serialize/EncodingInfo$b;->a:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serialize/EncodingInfo$b;->b:Ljava/lang/reflect/Method;

    const-string v4, "newEncoder"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$b;->c:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->d:Ljava/lang/reflect/Method;

    sput-boolean v5, Lorg/apache/xml/serialize/EncodingInfo$b;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->a:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->b:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->d:Ljava/lang/reflect/Method;

    sput-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->c:Ljava/lang/reflect/Method;

    sput-boolean v1, Lorg/apache/xml/serialize/EncodingInfo$b;->e:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xml/serialize/EncodingInfo$b;->e:Z

    return v0
.end method

.method public static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic e()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$b;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method
