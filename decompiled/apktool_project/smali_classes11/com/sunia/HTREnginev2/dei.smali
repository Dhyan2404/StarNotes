.class public final Lcom/sunia/HTREnginev2/dei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSpliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lonyx/org/apache/commons/io/function/IOSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Spliterator;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dei;->a:Ljava/util/Spliterator;

    return-void
.end method

.method public static a(Ljava/util/Spliterator;)Lcom/sunia/HTREnginev2/dei;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TE;>;)",
            "Lcom/sunia/HTREnginev2/dei<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/dei;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dei;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method


# virtual methods
.method public unwrap()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dei;->a:Ljava/util/Spliterator;

    return-object p0
.end method
