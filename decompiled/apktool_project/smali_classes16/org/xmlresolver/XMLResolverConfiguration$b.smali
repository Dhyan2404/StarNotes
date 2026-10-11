.class public Lorg/xmlresolver/XMLResolverConfiguration$b;
.super Lorg/xmlresolver/logging/AbstractLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xmlresolver/XMLResolverConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlresolver/XMLResolverConfiguration$b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/xmlresolver/XMLResolverConfiguration$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xmlresolver/logging/AbstractLogger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration$b;->a:Ljava/util/ArrayList;

    const-string v0, "xml.catalog.FallbackLoggerLogLevel"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration$b;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlresolver/XMLResolverConfiguration$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/xmlresolver/XMLResolverConfiguration$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/xmlresolver/logging/ResolverLogger;)V
    .locals 4

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlresolver/XMLResolverConfiguration$b$a;

    iget-object v2, v1, Lorg/xmlresolver/XMLResolverConfiguration$b$a;->a:Ljava/lang/String;

    iget-object v3, v1, Lorg/xmlresolver/XMLResolverConfiguration$b$a;->b:Ljava/lang/String;

    iget-object v1, v1, Lorg/xmlresolver/XMLResolverConfiguration$b$a;->c:[Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/XMLResolverConfiguration$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration$b;->a:Ljava/util/ArrayList;

    new-instance v1, Lorg/xmlresolver/XMLResolverConfiguration$b$a;

    invoke-direct {v1, p1, p2, p3}, Lorg/xmlresolver/XMLResolverConfiguration$b$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/xmlresolver/XMLResolverConfiguration$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, p2, p3}, Lorg/xmlresolver/logging/AbstractLogger;->logMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
