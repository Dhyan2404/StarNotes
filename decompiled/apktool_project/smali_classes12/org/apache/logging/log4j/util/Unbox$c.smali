.class public Lorg/apache/logging/log4j/util/Unbox$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/Unbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$c;->a:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$c;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/logging/log4j/util/Unbox$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/Unbox$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/StringBuilder;
    .locals 6

    iget-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->a()I

    move-result v0

    new-array v2, v0, [Ljava/lang/StringBuilder;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$c;->b:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v2

    :cond_1
    iget-object p0, p0, Lorg/apache/logging/log4j/util/Unbox$c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->b()I

    move-result v2

    aget v3, p0, v1

    add-int/lit8 v4, v3, 0x1

    aput v4, p0, v1

    and-int p0, v2, v3

    aget-object p0, v0, p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p0
.end method

.method public b(Ljava/lang/StringBuilder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/util/Unbox$c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-ne p1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
