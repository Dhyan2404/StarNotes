.class public final Lcom/sunia/HTREnginev2/q8j;
.super Lcom/sunia/HTREnginev2/p8j;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/vnf;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/q8j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/p8j<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile transient c:Lcom/sunia/HTREnginev2/q8j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/q8j$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public volatile transient d:Lcom/sunia/HTREnginev2/q8j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/q8j$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/p8j;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/sunia/HTREnginev2/p8j;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q8j;->c:Lcom/sunia/HTREnginev2/q8j$a;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q8j;->d:Lcom/sunia/HTREnginev2/q8j$a;

    return-void
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q8j;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/q8j;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q8j;->c:Lcom/sunia/HTREnginev2/q8j$a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sunia/HTREnginev2/q8j$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    iget-object p0, v0, Lcom/sunia/HTREnginev2/q8j$a;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q8j;->d:Lcom/sunia/HTREnginev2/q8j$a;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sunia/HTREnginev2/q8j$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q8j;->l(Lcom/sunia/HTREnginev2/q8j$a;)V

    iget-object p0, v0, Lcom/sunia/HTREnginev2/q8j$a;->b:Ljava/lang/Object;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Lcom/sunia/HTREnginev2/q8j$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/q8j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q8j;->c:Lcom/sunia/HTREnginev2/q8j$a;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q8j;->d:Lcom/sunia/HTREnginev2/q8j$a;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q8j;->c:Lcom/sunia/HTREnginev2/q8j$a;

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/q8j$a;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/q8j$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q8j;->l(Lcom/sunia/HTREnginev2/q8j$a;)V

    return-void
.end method
