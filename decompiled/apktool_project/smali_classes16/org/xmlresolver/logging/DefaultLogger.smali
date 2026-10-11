.class public Lorg/xmlresolver/logging/DefaultLogger;
.super Lorg/xmlresolver/logging/AbstractLogger;
.source "SourceFile"


# instance fields
.field public final a:Lorg/xmlresolver/ResolverConfiguration;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 1

    invoke-direct {p0}, Lorg/xmlresolver/logging/AbstractLogger;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/logging/DefaultLogger;->a:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->DEFAULT_LOGGER_LOG_LEVEL:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/logging/DefaultLogger;->setLogLevel(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/xmlresolver/logging/DefaultLogger;->d:Ljava/lang/String;

    iput-object p1, p0, Lorg/xmlresolver/logging/DefaultLogger;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lorg/xmlresolver/logging/DefaultLogger;->a:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->DEFAULT_LOGGER_LOG_LEVEL:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {v0, v1}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/xmlresolver/logging/DefaultLogger;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/xmlresolver/logging/DefaultLogger;->setLogLevel(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/xmlresolver/logging/DefaultLogger;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlresolver/logging/DefaultLogger;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/xmlresolver/logging/DefaultLogger;->b()V

    iget p0, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getLogLevel()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/xmlresolver/logging/DefaultLogger;->b()V

    iget p0, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "none"

    return-object p0

    :cond_1
    const-string p0, "warn"

    return-object p0

    :cond_2
    const-string p0, "info"

    return-object p0

    :cond_3
    const-string p0, "debug"

    return-object p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/xmlresolver/logging/DefaultLogger;->b()V

    iget p0, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lorg/xmlresolver/logging/DefaultLogger;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "warn"

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "debug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid default logger log level: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput v4, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    iput-object v2, p0, Lorg/xmlresolver/logging/DefaultLogger;->d:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iput v3, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    goto :goto_1

    :pswitch_1
    iput v4, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x4

    iput p1, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    goto :goto_1

    :pswitch_3
    iput v1, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3164ae -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x379286 -> :sswitch_1
        0x5b09653 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/xmlresolver/logging/DefaultLogger;->b()V

    iget p0, p0, Lorg/xmlresolver/logging/DefaultLogger;->b:I

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
