.class public Lcom/sunia/HTREnginev2/p8j$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/p8j;->k()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/p8j;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/p8j;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p8j$a;->e:Lcom/sunia/HTREnginev2/p8j;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p8j$a;->e:Lcom/sunia/HTREnginev2/p8j;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/p8j;->a(Lcom/sunia/HTREnginev2/p8j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/p8j$a$a;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/p8j$a$a;-><init>(Lcom/sunia/HTREnginev2/p8j$a;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p8j$a;->e:Lcom/sunia/HTREnginev2/p8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/p8j;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p8j$a;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p8j$a;->e:Lcom/sunia/HTREnginev2/p8j;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/p8j;->a(Lcom/sunia/HTREnginev2/p8j;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
