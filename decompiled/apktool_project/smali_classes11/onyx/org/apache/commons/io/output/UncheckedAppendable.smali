.class public interface abstract Lonyx/org/apache/commons/io/output/UncheckedAppendable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;


# direct methods
.method public static on(Ljava/lang/Appendable;)Lonyx/org/apache/commons/io/output/UncheckedAppendable;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cqn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cqn;-><init>(Ljava/lang/Appendable;)V

    return-object v0
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
    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedAppendable;->append(C)Lonyx/org/apache/commons/io/output/UncheckedAppendable;

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
    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedAppendable;->append(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/output/UncheckedAppendable;

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
    invoke-interface {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/UncheckedAppendable;->append(Ljava/lang/CharSequence;II)Lonyx/org/apache/commons/io/output/UncheckedAppendable;

    move-result-object p0

    return-object p0
.end method

.method public abstract append(C)Lonyx/org/apache/commons/io/output/UncheckedAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;)Lonyx/org/apache/commons/io/output/UncheckedAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;II)Lonyx/org/apache/commons/io/output/UncheckedAppendable;
.end method
