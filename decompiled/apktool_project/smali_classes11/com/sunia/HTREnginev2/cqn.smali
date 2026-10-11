.class public final Lcom/sunia/HTREnginev2/cqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/output/UncheckedAppendable;


# instance fields
.field public final e:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appendable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Appendable;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cqn;->e:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/cqn;->append(C)Lonyx/org/apache/commons/io/output/UncheckedAppendable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/cqn;->append(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/output/UncheckedAppendable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/cqn;->append(Ljava/lang/CharSequence;II)Lonyx/org/apache/commons/io/output/UncheckedAppendable;

    move-result-object p0

    return-object p0
.end method

.method public append(C)Lonyx/org/apache/commons/io/output/UncheckedAppendable;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/cqn;->e:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/bqn;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/bqn;-><init>(Ljava/lang/Appendable;)V

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {v1, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/output/UncheckedAppendable;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sunia/HTREnginev2/cqn;->e:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/aqn;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/aqn;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v1, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lonyx/org/apache/commons/io/output/UncheckedAppendable;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/sunia/HTREnginev2/cqn;->e:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/zpn;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zpn;-><init>(Ljava/lang/Appendable;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1, p1, p2, p3}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqn;->e:Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
