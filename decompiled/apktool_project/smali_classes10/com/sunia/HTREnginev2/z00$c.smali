.class public final Lcom/sunia/HTREnginev2/z00$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/z00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/z00$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/z00$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/z00$b;-><init>(Lcom/sunia/HTREnginev2/z00$a;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/z00$c;->a:Lcom/sunia/HTREnginev2/z00$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/z00$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z00$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z00$c;->a:Lcom/sunia/HTREnginev2/z00$b;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_5

    add-int/lit8 v2, p1, -0x1

    sub-int v3, v2, v1

    shr-int v3, p2, v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/z00$b;->b(Z)Lcom/sunia/HTREnginev2/z00$b;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/sunia/HTREnginev2/z00$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sunia/HTREnginev2/z00$b;-><init>(Lcom/sunia/HTREnginev2/z00$a;)V

    if-ne v1, v2, :cond_1

    iput p3, v5, Lcom/sunia/HTREnginev2/z00$b;->c:I

    iput-boolean v4, v5, Lcom/sunia/HTREnginev2/z00$b;->e:Z

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v4, v5, Lcom/sunia/HTREnginev2/z00$b;->d:Z

    :cond_2
    invoke-virtual {p0, v3, v5}, Lcom/sunia/HTREnginev2/z00$b;->a(ZLcom/sunia/HTREnginev2/z00$b;)V

    goto :goto_2

    :cond_3
    iget-boolean p0, v5, Lcom/sunia/HTREnginev2/z00$b;->e:Z

    if-nez p0, :cond_4

    :goto_2
    move-object p0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "node is leaf, no other following"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method public b(IILcom/sunia/HTREnginev2/z00$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z00$c;->a:Lcom/sunia/HTREnginev2/z00$b;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_5

    add-int/lit8 v2, p1, -0x1

    sub-int v3, v2, v1

    shr-int v3, p2, v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/z00$b;->b(Z)Lcom/sunia/HTREnginev2/z00$b;

    move-result-object v5

    if-nez v5, :cond_3

    if-ne v1, v2, :cond_1

    move-object v2, p3

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/sunia/HTREnginev2/z00$b;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/sunia/HTREnginev2/z00$b;-><init>(Lcom/sunia/HTREnginev2/z00$a;)V

    :goto_2
    if-nez p2, :cond_2

    iput-boolean v4, v2, Lcom/sunia/HTREnginev2/z00$b;->d:Z

    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/sunia/HTREnginev2/z00$b;->a(ZLcom/sunia/HTREnginev2/z00$b;)V

    move-object p0, v2

    goto :goto_3

    :cond_3
    iget-boolean p0, v5, Lcom/sunia/HTREnginev2/z00$b;->e:Z

    if-nez p0, :cond_4

    move-object p0, v5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "node is leaf, no other following"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method
