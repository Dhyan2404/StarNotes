.class public interface abstract Lonyx/org/apache/commons/io/function/IOConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOOP_IO_CONSUMER:Lonyx/org/apache/commons/io/function/IOConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xci;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xci;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/function/IOConsumer;->NOOP_IO_CONSUMER:Lonyx/org/apache/commons/io/function/IOConsumer;

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/function/IOConsumer;Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOConsumer;->d(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOConsumer;->lambda$static$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic d(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p2}, Lonyx/org/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lonyx/org/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/function/IOConsumer;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static forAll(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lonyx/org/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/ffi;->h(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/ffi;->c(Ljava/util/stream/Stream;Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forAll(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/stream/Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lonyx/org/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/yci;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yci;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/sunia/HTREnginev2/ffi;->d(Ljava/util/stream/Stream;Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public static varargs forAll(Lonyx/org/apache/commons/io/function/IOConsumer;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lonyx/org/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/sunia/HTREnginev2/ffi;->j([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/ffi;->c(Ljava/util/stream/Stream;Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forEach(Ljava/lang/Iterable;Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/ffi;->h(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/ffi;->e(Ljava/util/stream/Stream;Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forEach(Ljava/util/stream/Stream;Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/ffi;->e(Ljava/util/stream/Stream;Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static forEach([Ljava/lang/Object;Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/sunia/HTREnginev2/ffi;->j([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/ffi;->e(Ljava/util/stream/Stream;Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static noop()Lonyx/org/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lonyx/org/apache/commons/io/function/IOConsumer;->NOOP_IO_CONSUMER:Lonyx/org/apache/commons/io/function/IOConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public andThen(Lonyx/org/apache/commons/io/function/IOConsumer;)Lonyx/org/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "-TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "after"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/zci;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/zci;-><init>(Lonyx/org/apache/commons/io/function/IOConsumer;Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-object v0
.end method

.method public asConsumer()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/vci;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vci;-><init>(Lonyx/org/apache/commons/io/function/IOConsumer;)V

    return-object v0
.end method
