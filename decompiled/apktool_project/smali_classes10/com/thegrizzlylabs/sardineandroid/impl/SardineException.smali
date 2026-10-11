.class public Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x361fbcd6e48551b4L


# instance fields
.field private responsePhrase:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->statusCode:I

    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->responsePhrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->getResponsePhrase()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s (%d %s)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResponsePhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->responsePhrase:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;->statusCode:I

    return p0
.end method
