.class public Lcom/fasterxml/uuid/impl/LoggerFacade$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/uuid/impl/LoggerFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/uuid/impl/LoggerFacade$a;->a:Lorg/slf4j/Logger;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/fasterxml/uuid/impl/LoggerFacade$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/uuid/impl/LoggerFacade$a;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/fasterxml/uuid/impl/LoggerFacade$a;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/fasterxml/uuid/impl/LoggerFacade$a;-><init>(Lorg/slf4j/Logger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    new-instance p0, Lcom/fasterxml/uuid/impl/LoggerFacade$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/uuid/impl/LoggerFacade$a;-><init>(Lorg/slf4j/Logger;)V

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/fasterxml/uuid/impl/LoggerFacade$a;->a:Lorg/slf4j/Logger;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
