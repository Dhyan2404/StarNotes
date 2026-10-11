.class public final Lcom/sunia/HTREnginev2/q3l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/q3l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/q3l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sunia/HTREnginev2/q3l$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q3l$c;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q3l$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;II)Lcom/sunia/HTREnginev2/q3l$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lcom/sunia/HTREnginev2/q3l$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q3l$c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, p3, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/q3l$c;

    invoke-direct {v1, p1, p2}, Lcom/sunia/HTREnginev2/q3l$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lcom/sunia/HTREnginev2/q3l$b;->c(Lcom/sunia/HTREnginev2/q3l$d;ILcom/sunia/HTREnginev2/q3l$d;II)Lcom/sunia/HTREnginev2/q3l$d;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p3, p0, Lcom/sunia/HTREnginev2/q3l$c;->a:Ljava/lang/Object;

    if-ne p3, p1, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/q3l$c;

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/q3l$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p3, Lcom/sunia/HTREnginev2/q3l$a;

    iget-object p4, p0, Lcom/sunia/HTREnginev2/q3l$c;->a:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$c;->b:Ljava/lang/Object;

    invoke-direct {p3, p4, p0, p1, p2}, Lcom/sunia/HTREnginev2/q3l$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public b(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q3l$c;->a:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$c;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q3l$c;->a:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$c;->b:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Leaf(key=%s value=%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
