.class public Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/unicode/BidiAlgorithm$a;
    }
.end annotation


# static fields
.field public static final MAX_LEVEL:B = 0x7dt


# instance fields
.field public a:J

.field public b:J

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a:J

    .line 9
    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    .line 10
    iget-object p1, p1, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "text"

    .line 2
    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Text is empty"

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/onyx/harfbuzz/unicode/BidiBuffer;->create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a:J

    .line 5
    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    .line 6
    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->c:Ljava/lang/String;

    return-void
.end method

.method public static finalizable(Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;)Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;
    .locals 2
    .param p0    # Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm$a;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm$a;-><init>(Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm$a;

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object of a subclass is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFinalizable(Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;)Z
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native nCreate(J)J
.end method

.method private static native nCreateParagraph(JIII)J
.end method

.method private static native nDispose(J)V
.end method

.method private static native nGetCharBidiClassesPtr(J)J
.end method

.method private static native nGetParagraphBoundary(JII)I
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Char Start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Char End: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Text Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-le p2, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad Range: ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method public createParagraph(IIB)Lcom/onyx/harfbuzz/unicode/BidiParagraph;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a(II)V

    if-ltz p3, :cond_0

    const/16 v0, 0x7d

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 6
    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a:J

    iget-wide v3, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    .line 7
    invoke-static {v3, v4, p1, p2, p3}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->nCreateParagraph(JIII)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;-><init>(JJ)V

    return-object v0
.end method

.method public createParagraph(IILcom/onyx/harfbuzz/unicode/BaseDirection;)Lcom/onyx/harfbuzz/unicode/BidiParagraph;
    .locals 5
    .param p3    # Lcom/onyx/harfbuzz/unicode/BaseDirection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a(II)V

    .line 2
    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiParagraph;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a:J

    iget-wide v3, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    iget p0, p3, Lcom/onyx/harfbuzz/unicode/BaseDirection;->value:I

    .line 3
    invoke-static {v3, v4, p1, p2, p0}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->nCreateParagraph(JIII)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;-><init>(JJ)V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->nDispose(J)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/unicode/BidiBuffer;->release(J)V

    return-void
.end method

.method public getCharBidiClasses()Lcom/onyx/harfbuzz/collections/IntList;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->nGetCharBidiClassesPtr(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/onyx/harfbuzz/internal/collections/UInt8BufferIntList;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public getParagraphBoundary(II)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->a(II)V

    iget-wide v0, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->nGetParagraphBoundary(JII)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BidiAlgorithm{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", charBidiClasses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiAlgorithm;->getCharBidiClasses()Lcom/onyx/harfbuzz/collections/IntList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/IntList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
