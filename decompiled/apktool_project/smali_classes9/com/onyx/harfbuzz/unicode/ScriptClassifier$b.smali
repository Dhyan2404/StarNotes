.class public Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/unicode/ScriptClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/onyx/harfbuzz/unicode/ScriptRun;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:[B

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->e:[B

    iput p3, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->f:I

    iput p2, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->g:I

    return-void
.end method


# virtual methods
.method public a()Lcom/onyx/harfbuzz/unicode/ScriptRun;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->g:I

    iget v1, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->f:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->e:[B

    aget-byte v1, v1, v0

    add-int/lit8 v2, v0, 0x1

    :goto_0
    iput v2, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->g:I

    iget v2, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->g:I

    iget v3, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->f:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->e:[B

    aget-byte v3, v3, v2

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;

    invoke-direct {p0, v0, v2, v1}, Lcom/onyx/harfbuzz/unicode/ScriptRun;-><init>(III)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->g:I

    iget p0, p0, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->f:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/ScriptClassifier$b;->a()Lcom/onyx/harfbuzz/unicode/ScriptRun;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
