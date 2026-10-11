.class public Lorg/apache/xml/serialize/DOMSerializerImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serialize/DOMSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Z

.field public static synthetic e:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->e:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "org.w3c.dom.Document"

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v2}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->e:Ljava/lang/Class;

    :cond_0
    const-string v3, "getXmlVersion"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->a:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->e:Ljava/lang/Class;

    if-nez v1, :cond_1

    invoke-static {v2}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->e:Ljava/lang/Class;

    :cond_1
    const-string v3, "getInputEncoding"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->b:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->e:Ljava/lang/Class;

    if-nez v1, :cond_2

    invoke-static {v2}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->e:Ljava/lang/Class;

    :cond_2
    const-string v2, "getXmlEncoding"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->a:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->b:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->c:Ljava/lang/reflect/Method;

    sput-boolean v0, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->d:Z

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

    sget-boolean v0, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->d:Z

    return v0
.end method

.method public static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->b:Ljava/lang/reflect/Method;

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

    sget-object v0, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method
