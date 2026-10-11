.class public Lnet/sf/saxon/trans/KeyIndex$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trans/KeyIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lnet/sf/saxon/trans/KeyIndex;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/KeyIndex;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyIndex$a;->f:Lnet/sf/saxon/trans/KeyIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/trans/KeyIndex$a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/trans/KeyIndex$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/trans/KeyIndex$a;

    iget-object v0, p1, Lnet/sf/saxon/trans/KeyIndex$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lnet/sf/saxon/trans/KeyIndex$a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object p1, p1, Lnet/sf/saxon/trans/KeyIndex$a;->e:Ljava/util/List;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/trans/KeyIndex$a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/trans/KeyIndex$a;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyIndex$a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x1ab27cd6

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
