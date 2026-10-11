.class public Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_0

    iput p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->a:I

    iput p2, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->b:I

    iput p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Lower bound cannot be greater then upper bound"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Lower bound cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    iget v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->c:I

    iget p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->b:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLowerBound()I
    .locals 0

    iget p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->a:I

    return p0
.end method

.method public getPos()I
    .locals 0

    iget p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->c:I

    return p0
.end method

.method public getUpperBound()I
    .locals 0

    iget p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->b:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePos(I)V
    .locals 1

    iget v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->a:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->b:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
