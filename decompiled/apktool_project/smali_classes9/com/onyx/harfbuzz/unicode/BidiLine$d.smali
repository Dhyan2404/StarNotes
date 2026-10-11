.class public Lcom/onyx/harfbuzz/unicode/BidiLine$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/unicode/BidiLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/onyx/harfbuzz/unicode/BidiPair;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;

.field public f:Lcom/onyx/harfbuzz/unicode/BidiPair;

.field public final synthetic g:Lcom/onyx/harfbuzz/unicode/BidiLine;


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/unicode/BidiLine;)V
    .locals 1

    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->g:Lcom/onyx/harfbuzz/unicode/BidiLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;

    invoke-direct {v0}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;-><init>()V

    iput-object v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->e:Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;

    invoke-virtual {v0, p1}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->a(Lcom/onyx/harfbuzz/unicode/BidiLine;)V

    iget-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->e:Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->b()Lcom/onyx/harfbuzz/unicode/BidiPair;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->f:Lcom/onyx/harfbuzz/unicode/BidiPair;

    return-void
.end method


# virtual methods
.method public a()Lcom/onyx/harfbuzz/unicode/BidiPair;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->f:Lcom/onyx/harfbuzz/unicode/BidiPair;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->e:Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->b()Lcom/onyx/harfbuzz/unicode/BidiPair;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->f:Lcom/onyx/harfbuzz/unicode/BidiPair;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->e:Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/unicode/BidiMirrorLocator;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->f:Lcom/onyx/harfbuzz/unicode/BidiPair;

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

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/unicode/BidiLine$d;->a()Lcom/onyx/harfbuzz/unicode/BidiPair;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
