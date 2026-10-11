.class public Lorg/apache/xml/serialize/EncodingInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Z

.field public static synthetic d:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sun.io.CharToByteConverter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getConverter"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Lorg/apache/xml/serialize/EncodingInfo$a;->d:Ljava/lang/Class;

    if-nez v5, :cond_0

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/apache/xml/serialize/EncodingInfo$a;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/xml/serialize/EncodingInfo$a;->d:Ljava/lang/Class;

    :cond_0
    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$a;->a:Ljava/lang/reflect/Method;

    const-string v2, "canConvert"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$a;->b:Ljava/lang/reflect/Method;

    sput-boolean v3, Lorg/apache/xml/serialize/EncodingInfo$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$a;->a:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$a;->b:Ljava/lang/reflect/Method;

    sput-boolean v0, Lorg/apache/xml/serialize/EncodingInfo$a;->c:Z

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

    sget-boolean v0, Lorg/apache/xml/serialize/EncodingInfo$a;->c:Z

    return v0
.end method

.method public static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$a;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$a;->b:Ljava/lang/reflect/Method;

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
