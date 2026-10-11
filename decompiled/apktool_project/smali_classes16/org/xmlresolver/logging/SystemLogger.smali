.class public Lorg/xmlresolver/logging/SystemLogger;
.super Lorg/xmlresolver/logging/AbstractLogger;
.source "SourceFile"


# instance fields
.field public final a:Lorg/slf4j/Logger;

.field public final b:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/xmlresolver/logging/AbstractLogger;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/xmlresolver/logging/SystemLogger;->a:Lorg/slf4j/Logger;

    .line 6
    iput-object p1, p0, Lorg/xmlresolver/logging/SystemLogger;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xmlresolver/logging/AbstractLogger;-><init>()V

    .line 2
    const-class p1, Lorg/xmlresolver/Resolver;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/logging/SystemLogger;->a:Lorg/slf4j/Logger;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/xmlresolver/logging/SystemLogger;->b:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/xmlresolver/logging/SystemLogger;->b:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/logging/SystemLogger;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/xmlresolver/logging/SystemLogger;->b:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/logging/SystemLogger;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/xmlresolver/logging/SystemLogger;->b:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/logging/SystemLogger;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
