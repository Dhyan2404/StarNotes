.class public Lorg/apache/commons/compress/harmony/pack200/Archive$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/Archive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->a:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->c:I

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/md;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/md;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->sum()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->c:I

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/nd;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/nd;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->sum()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->c:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->j(Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/harmony/pack200/Archive$a;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->k(Lorg/apache/commons/compress/harmony/pack200/Archive$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:[B

    array-length p0, p0

    return p0
.end method

.method public static synthetic k(Lorg/apache/commons/compress/harmony/pack200/Archive$a;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/Archive$a;->a(Lorg/apache/commons/compress/harmony/pack200/Archive$a;)[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->d:I

    return-void
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->c:I

    return p0
.end method

.method public g()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->a:Ljava/util/List;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->b:Ljava/util/List;

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->d:I

    return p0
.end method
