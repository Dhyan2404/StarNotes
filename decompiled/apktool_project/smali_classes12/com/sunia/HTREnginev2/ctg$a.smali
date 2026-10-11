.class public Lcom/sunia/HTREnginev2/ctg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ctg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ctg$a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ctg$a;->a:[Ljava/lang/Object;

    check-cast p1, Lcom/sunia/HTREnginev2/ctg$a;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/ctg$a;->a:[Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/sunia/HTREnginev2/ctg$a;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ctg$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    mul-int/lit8 v3, v3, 0x7

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/sunia/HTREnginev2/ctg$a;->b:I

    :cond_2
    iget p0, p0, Lcom/sunia/HTREnginev2/ctg$a;->b:I

    return p0
.end method
