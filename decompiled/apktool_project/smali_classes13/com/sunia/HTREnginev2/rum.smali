.class public Lcom/sunia/HTREnginev2/rum;
.super Lcom/sunia/HTREnginev2/mae;
.source "SourceFile"


# instance fields
.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/mae;-><init>()V

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rum;->d:[Ljava/lang/String;

    new-array p1, p1, [Lcom/sunia/HTREnginev2/hgk;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mae;->a:[Lcom/sunia/HTREnginev2/hgk;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/hgk;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sunia/HTREnginev2/mae;->b:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/rum;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mae;->a:[Lcom/sunia/HTREnginev2/hgk;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rum;->d:[Ljava/lang/String;

    iget v1, p0, Lcom/sunia/HTREnginev2/mae;->b:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mae;->a:[Lcom/sunia/HTREnginev2/hgk;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/mae;->b:I

    aput-object p2, p1, v1

    return-void
.end method
