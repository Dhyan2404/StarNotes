.class public Lonyx/org/apache/commons/io/input/BrokenReader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lonyx/org/apache/commons/io/input/BrokenReader;


# instance fields
.field public final e:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/BrokenReader;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/BrokenReader;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/input/BrokenReader;->INSTANCE:Lonyx/org/apache/commons/io/input/BrokenReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/av;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/av;-><init>()V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/zu;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/zu;-><init>(Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/yu;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/yu;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/input/BrokenReader;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 4
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/BrokenReader;->e:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic H()Ljava/lang/Throwable;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken reader"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic I(Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public static synthetic M(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public static synthetic f(Ljava/io/IOException;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->I(Ljava/io/IOException;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Lonyx/org/apache/commons/io/input/BrokenReader;->H()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic w(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->M(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final e0()Ljava/lang/RuntimeException;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/BrokenReader;->e:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Erase;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public mark(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public read([CII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public ready()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BrokenReader;->e0()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
