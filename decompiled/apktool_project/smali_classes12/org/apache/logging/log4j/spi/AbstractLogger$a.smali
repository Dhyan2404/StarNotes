.class public Lorg/apache/logging/log4j/spi/AbstractLogger$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/spi/AbstractLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/apache/logging/log4j/internal/DefaultLogBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lorg/apache/logging/log4j/spi/AbstractLogger;

.field public final synthetic b:Lorg/apache/logging/log4j/spi/AbstractLogger;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/spi/AbstractLogger;Lorg/apache/logging/log4j/spi/AbstractLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "logger"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger$a;->b:Lorg/apache/logging/log4j/spi/AbstractLogger;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p2, p0, Lorg/apache/logging/log4j/spi/AbstractLogger$a;->a:Lorg/apache/logging/log4j/spi/AbstractLogger;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/logging/log4j/internal/DefaultLogBuilder;
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/AbstractLogger$a;->a:Lorg/apache/logging/log4j/spi/AbstractLogger;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;-><init>(Lorg/apache/logging/log4j/Logger;)V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/AbstractLogger$a;->a()Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    move-result-object p0

    return-object p0
.end method
