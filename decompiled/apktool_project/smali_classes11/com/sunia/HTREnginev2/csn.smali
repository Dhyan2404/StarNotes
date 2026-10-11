.class public final Lcom/sunia/HTREnginev2/csn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final e:Lonyx/org/apache/commons/io/function/IOIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOIterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lonyx/org/apache/commons/io/function/IOIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IOIterator<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/function/IOIterator;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/csn;->e:Lonyx/org/apache/commons/io/function/IOIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/csn;->e:Lonyx/org/apache/commons/io/function/IOIterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/asn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/asn;-><init>(Lonyx/org/apache/commons/io/function/IOIterator;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/csn;->e:Lonyx/org/apache/commons/io/function/IOIterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/bsn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/bsn;-><init>(Lonyx/org/apache/commons/io/function/IOIterator;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/csn;->e:Lonyx/org/apache/commons/io/function/IOIterator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/zrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zrn;-><init>(Lonyx/org/apache/commons/io/function/IOIterator;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method
