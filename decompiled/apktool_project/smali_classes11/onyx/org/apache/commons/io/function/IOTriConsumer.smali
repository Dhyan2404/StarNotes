.class public interface abstract Lonyx/org/apache/commons/io/function/IOTriConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method private synthetic a(Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p2, p3, p4}, Lonyx/org/apache/commons/io/function/IOTriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3, p4}, Lonyx/org/apache/commons/io/function/IOTriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/function/IOTriConsumer;Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lonyx/org/apache/commons/io/function/IOTriConsumer;->a(Lonyx/org/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static noop()Lonyx/org/apache/commons/io/function/IOTriConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lonyx/org/apache/commons/io/function/IOTriConsumer<",
            "TT;TU;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/bae;->g:Lonyx/org/apache/commons/io/function/IOTriConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public andThen(Lonyx/org/apache/commons/io/function/IOTriConsumer;)Lonyx/org/apache/commons/io/function/IOTriConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOTriConsumer<",
            "-TT;-TU;-TV;>;)",
            "Lonyx/org/apache/commons/io/function/IOTriConsumer<",
            "TT;TU;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/hfi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/hfi;-><init>(Lonyx/org/apache/commons/io/function/IOTriConsumer;Lonyx/org/apache/commons/io/function/IOTriConsumer;)V

    return-object v0
.end method
