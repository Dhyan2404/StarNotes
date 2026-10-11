.class public Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertor;


# static fields
.field public static synthetic c:Ljava/lang/Class;

.field public static synthetic d:Ljava/lang/Class;


# instance fields
.field public final a:Lorg/mortbay/util/ajax/JSON;

.field public final b:Z


# direct methods
.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->a:Lorg/mortbay/util/ajax/JSON;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->a:Lorg/mortbay/util/ajax/JSON;

    .line 7
    iput-boolean p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
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

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4

    const-string v0, "class"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->a:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_0
    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->c:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.mortbay.util.ajax.JSON"

    invoke-static {v2}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->c:Ljava/lang/Class;

    :cond_0
    invoke-static {v2, v0}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lorg/mortbay/util/ajax/JSONPojoConvertor;

    invoke-direct {v3, v2}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->a:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {p0, v0, v3}, Lorg/mortbay/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    sget-object p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->d:Ljava/lang/Class;

    if-nez p0, :cond_2

    const-string p0, "java.lang.Object"

    invoke-static {p0}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->d:Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {v1, p1}, Lorg/mortbay/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method public toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->a:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_0
    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->c:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.mortbay.util.ajax.JSON"

    invoke-static {v2}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->c:Ljava/lang/Class;

    :cond_0
    invoke-static {v2, v0}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lorg/mortbay/util/ajax/JSONPojoConvertor;

    iget-boolean v4, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->b:Z

    invoke-direct {v3, v2, v4}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->a:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {p0, v0, v3}, Lorg/mortbay/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->d:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->d:Ljava/lang/Class;

    :cond_2
    if-eq p0, v0, :cond_3

    invoke-interface {v1, p1, p2}, Lorg/mortbay/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
