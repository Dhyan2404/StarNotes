.class public Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/unicode/BidiParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/onyx/harfbuzz/unicode/BidiRun;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/harfbuzz/unicode/BidiRun;

.field public final synthetic f:Lcom/onyx/harfbuzz/unicode/BidiParagraph;


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiParagraph;)V
    .locals 2

    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;->f:Lcom/onyx/harfbuzz/unicode/BidiParagraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->getCharStart()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->a(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;->e:Lcom/onyx/harfbuzz/unicode/BidiRun;

    return-void
.end method


# virtual methods
.method public a()Lcom/onyx/harfbuzz/unicode/BidiRun;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;->e:Lcom/onyx/harfbuzz/unicode/BidiRun;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;->f:Lcom/onyx/harfbuzz/unicode/BidiParagraph;

    iget-wide v1, v1, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->b:J

    iget v3, v0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charEnd:I

    invoke-static {v1, v2, v3}, Lcom/onyx/harfbuzz/unicode/BidiParagraph;->a(JI)Lcom/onyx/harfbuzz/unicode/BidiRun;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;->e:Lcom/onyx/harfbuzz/unicode/BidiRun;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;->e:Lcom/onyx/harfbuzz/unicode/BidiRun;

    if-eqz p0, :cond_0

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

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiParagraph$d;->a()Lcom/onyx/harfbuzz/unicode/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
