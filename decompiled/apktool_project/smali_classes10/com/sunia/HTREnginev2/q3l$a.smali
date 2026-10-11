.class public final Lcom/sunia/HTREnginev2/q3l$a;
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
    name = "a"
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


# static fields
.field public static final synthetic c:Z


# instance fields
.field public final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    .line 1
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/q3l$a;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/sunia/HTREnginev2/q3l$a;->b:[Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, p3, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/q3l$c;

    invoke-direct {v1, p1, p2}, Lcom/sunia/HTREnginev2/q3l$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lcom/sunia/HTREnginev2/q3l$b;->c(Lcom/sunia/HTREnginev2/q3l$d;ILcom/sunia/HTREnginev2/q3l$d;II)Lcom/sunia/HTREnginev2/q3l$d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q3l$a;->c(Ljava/lang/Object;)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_1

    iget-object p4, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q3l$a;->b:[Ljava/lang/Object;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    array-length p0, p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    aput-object p1, p4, p3

    aput-object p2, p0, p3

    new-instance p1, Lcom/sunia/HTREnginev2/q3l$a;

    invoke-direct {p1, p4, p0}, Lcom/sunia/HTREnginev2/q3l$a;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    array-length p4, p3

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/sunia/HTREnginev2/q3l$a;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    array-length v0, p0

    aput-object p1, p3, v0

    array-length p0, p0

    aput-object p2, p4, p0

    new-instance p0, Lcom/sunia/HTREnginev2/q3l$a;

    invoke-direct {p0, p3, p4}, Lcom/sunia/HTREnginev2/q3l$a;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public b(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    array-length v0, p3

    if-ge p2, v0, :cond_1

    aget-object p3, p3, p2

    if-ne p3, p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$a;->b:[Ljava/lang/Object;

    aget-object p0, p0, p2

    return-object p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q3l$a;->b:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollisionLeaf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/q3l$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "(key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/q3l$a;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/q3l$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
