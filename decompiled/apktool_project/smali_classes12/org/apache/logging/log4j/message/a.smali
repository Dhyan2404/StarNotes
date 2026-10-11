.class public final synthetic Lorg/apache/logging/log4j/message/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:[Z

.field public final synthetic f:Ljava/lang/StringBuilder;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>([ZLjava/lang/StringBuilder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/message/a;->e:[Z

    iput-object p2, p0, Lorg/apache/logging/log4j/message/a;->f:Ljava/lang/StringBuilder;

    iput p3, p0, Lorg/apache/logging/log4j/message/a;->g:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/a;->e:[Z

    iget-object v1, p0, Lorg/apache/logging/log4j/message/a;->f:Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/logging/log4j/message/a;->g:I

    invoke-static {v0, v1, p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->a([ZLjava/lang/StringBuilder;ILjava/lang/Object;)V

    return-void
.end method
