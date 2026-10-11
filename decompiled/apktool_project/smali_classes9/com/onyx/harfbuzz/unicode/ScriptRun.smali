.class public Lcom/onyx/harfbuzz/unicode/ScriptRun;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public charEnd:I

.field public charStart:I

.field public script:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charStart:I

    .line 3
    iput p2, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charEnd:I

    .line 4
    iput p3, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->script:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eq p0, p1, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/onyx/harfbuzz/unicode/ScriptRun;

    iget v1, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charStart:I

    iget v2, p1, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charStart:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charEnd:I

    iget v2, p1, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charEnd:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->script:I

    iget p1, p1, Lcom/onyx/harfbuzz/unicode/ScriptRun;->script:I

    if-eq p0, p1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charStart:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->charEnd:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/harfbuzz/unicode/ScriptRun;->script:I

    add-int/2addr v0, p0

    return v0
.end method
