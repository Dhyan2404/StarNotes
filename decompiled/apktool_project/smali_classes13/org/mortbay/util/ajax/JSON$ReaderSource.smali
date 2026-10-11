.class public Lorg/mortbay/util/ajax/JSON$ReaderSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReaderSource"
.end annotation


# instance fields
.field public a:Ljava/io/Reader;

.field public b:I

.field public c:[C


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->a:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I

    if-gez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;->a()V

    iget v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->c:[C

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public next()C
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;->a()V

    iget v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I

    int-to-char v0, v0

    const/4 v1, -0x1

    iput v1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I

    return v0
.end method

.method public peek()C
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;->a()V

    iget p0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I

    int-to-char p0, p0

    return p0
.end method

.method public scratchBuffer()[C
    .locals 1

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->c:[C

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->c:[C

    :cond_0
    iget-object p0, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->c:[C

    return-object p0
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->a:Ljava/io/Reader;

    const/4 p1, -0x1

    iput p1, p0, Lorg/mortbay/util/ajax/JSON$ReaderSource;->b:I

    return-void
.end method
