.class public Lcom/onyx/harfbuzz/internal/Description;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "null"


# instance fields
.field public final a:Ljava/lang/StringBuilder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/onyx/harfbuzz/internal/Description;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/harfbuzz/internal/Description;->b:Z

    return-void
.end method

.method public static forByteArray([B)Ljava/lang/String;
    .locals 3
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/JByteArrayList;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/onyx/harfbuzz/internal/collections/JByteArrayList;-><init>([BII)V

    invoke-static {v0}, Lcom/onyx/harfbuzz/internal/Description;->forByteList(Lcom/onyx/harfbuzz/collections/ByteList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static forByteList(Lcom/onyx/harfbuzz/collections/ByteList;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/onyx/harfbuzz/collections/ByteList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Lcom/onyx/harfbuzz/internal/Description;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/internal/Description;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->b()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/ByteList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/onyx/harfbuzz/collections/ByteList;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/harfbuzz/internal/Description;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->c()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static forFloatList(Lcom/onyx/harfbuzz/collections/FloatList;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/onyx/harfbuzz/collections/FloatList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Lcom/onyx/harfbuzz/internal/Description;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/internal/Description;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->b()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/harfbuzz/internal/Description;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->c()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static forIntList(Lcom/onyx/harfbuzz/collections/IntList;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/onyx/harfbuzz/collections/IntList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Lcom/onyx/harfbuzz/internal/Description;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/internal/Description;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->b()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/IntList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/onyx/harfbuzz/collections/IntList;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/harfbuzz/internal/Description;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->c()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static forIterable(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/Iterable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/internal/Description;->forIterator(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static forIterator(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/util/Iterator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Lcom/onyx/harfbuzz/internal/Description;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/internal/Description;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->b()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/internal/Description;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->c()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static forPointList(Lcom/onyx/harfbuzz/collections/PointList;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/onyx/harfbuzz/collections/PointList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Lcom/onyx/harfbuzz/internal/Description;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/internal/Description;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->b()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/PointList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/onyx/harfbuzz/collections/PointList;->getX(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/harfbuzz/internal/Description;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/onyx/harfbuzz/collections/PointList;->getY(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/harfbuzz/internal/Description;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->c()V

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/internal/Description;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/harfbuzz/internal/Description;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/Description;->a:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/Description;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/harfbuzz/internal/Description;->b:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/Description;->a:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/harfbuzz/internal/Description;->b:Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/Description;->a:Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/Description;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
