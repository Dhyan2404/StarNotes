.class public final Lcom/sunia/HTREnginev2/q3l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/q3l$d;,
        Lcom/sunia/HTREnginev2/q3l$b;,
        Lcom/sunia/HTREnginev2/q3l$a;,
        Lcom/sunia/HTREnginev2/q3l$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/q3l$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/q3l;-><init>(Lcom/sunia/HTREnginev2/q3l$d;)V

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/q3l$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/q3l;->a:Lcom/sunia/HTREnginev2/q3l$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l;->a:Lcom/sunia/HTREnginev2/q3l$d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/sunia/HTREnginev2/q3l$d;->b(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunia/HTREnginev2/q3l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/sunia/HTREnginev2/q3l<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l;->a:Lcom/sunia/HTREnginev2/q3l$d;

    if-nez p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/q3l;

    new-instance v0, Lcom/sunia/HTREnginev2/q3l$c;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/q3l$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/q3l;-><init>(Lcom/sunia/HTREnginev2/q3l$d;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/q3l;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, p1, p2, v1, v2}, Lcom/sunia/HTREnginev2/q3l$d;->a(Ljava/lang/Object;Ljava/lang/Object;II)Lcom/sunia/HTREnginev2/q3l$d;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/q3l;-><init>(Lcom/sunia/HTREnginev2/q3l$d;)V

    return-object v0
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l;->a:Lcom/sunia/HTREnginev2/q3l$d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sunia/HTREnginev2/q3l$d;->size()I

    move-result p0

    return p0
.end method
