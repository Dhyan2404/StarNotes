.class public Lcom/twelvemonkeys/util/service/ServiceRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/util/service/ServiceRegistry$g;
    }
.end annotation


# static fields
.field public static final SERVICES:Ljava/lang/String; = "META-INF/services/"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/twelvemonkeys/util/service/ServiceRegistry$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "categories"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->c(Ljava/util/Map;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->b(Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    new-instance p0, Lcom/twelvemonkeys/util/service/ServiceRegistry;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/nio/charset/spi/CharsetProvider;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/nio/channels/spi/SelectorProvider;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/imageio/spi/ImageReaderSpi;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-class v4, Ljavax/imageio/spi/ImageWriterSpi;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-class v4, Lcom/twelvemonkeys/util/service/ServiceRegistry$c;

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->registerApplicationClasspathSPIs()V

    new-instance v0, Lcom/twelvemonkeys/util/service/ServiceRegistry$b;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/service/ServiceRegistry$b;-><init>()V

    new-instance v1, Lcom/twelvemonkeys/util/service/ServiceRegistry$d;

    invoke-direct {v1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$d;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->register(Ljava/lang/Object;Ljava/lang/Class;)Z

    invoke-virtual {p0, v1, v4}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->register(Ljava/lang/Object;Ljava/lang/Class;)Z

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->deregister(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v4}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->deregister(Ljava/lang/Object;Ljava/lang/Class;)Z

    invoke-virtual {p0, v1, v4}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->deregister(Ljava/lang/Object;Ljava/lang/Class;)Z

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->deregister(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->categories()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Categories: "

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->providers(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    instance-of v7, v6, Ljavax/imageio/spi/ImageReaderWriterSpi;

    if-eqz v7, :cond_2

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v6

    check-cast v9, Ljavax/imageio/spi/ImageReaderWriterSpi;

    invoke-virtual {v9, v5}, Ljavax/imageio/spi/IIOServiceProvider;->getDescription(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_6

    invoke-virtual {p0, v6}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->containingCategories(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne v1, v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eq v5, v3, :cond_6

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " categories"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->providers(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "All providers successfully deregistered"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/twelvemonkeys/util/service/ServiceRegistry$g<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/twelvemonkeys/util/service/ServiceRegistry$g;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    invoke-direct {v0, p0, p2}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;-><init>(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Class;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public categories()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public compatibleCategories(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/FilterIterator;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->categories()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/twelvemonkeys/util/service/ServiceRegistry$a;

    invoke-direct {v2, p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$a;-><init>(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/twelvemonkeys/util/FilterIterator;-><init>(Ljava/util/Iterator;Lcom/twelvemonkeys/util/FilterIterator$Filter;)V

    return-object v0
.end method

.method public containingCategories(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->categories()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/twelvemonkeys/util/service/ServiceRegistry$e;

    invoke-direct {v2, p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$e;-><init>(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$f;-><init>(Lcom/twelvemonkeys/util/service/ServiceRegistry;Ljava/util/Iterator;Lcom/twelvemonkeys/util/FilterIterator$Filter;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->b(Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    move-result-object p0

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->g(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public deregister(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->containingCategories(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, p1, v2}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->deregister(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public deregister(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->b(Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/util/service/ServiceRegistry;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p2, v0, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->g(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void

    :catch_4
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public providers(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->b(Ljava/lang/Class;)Lcom/twelvemonkeys/util/service/ServiceRegistry$g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry$g;->f()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public register(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->compatibleCategories(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, p1, v2}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->d(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public register(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->d(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public registerApplicationClasspathSPIs()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->categories()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "META-INF/services/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    invoke-virtual {p0, v4, v2, v0}, Lcom/twelvemonkeys/util/service/ServiceRegistry;->e(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/util/service/ServiceConfigurationError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method
