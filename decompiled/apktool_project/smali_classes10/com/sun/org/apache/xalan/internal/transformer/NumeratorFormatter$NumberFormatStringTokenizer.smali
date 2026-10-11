.class Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NumberFormatStringTokenizer"
.end annotation


# instance fields
.field private currentPosition:I

.field private maxPosition:I

.field private str:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->this$0:Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->maxPosition:I

    return-void
.end method


# virtual methods
.method public countTokens()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v0, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    move v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hasMoreTokens()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->maxPosition:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_2

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NumeratorFormatter$NumberFormatStringTokenizer;->currentPosition:I

    return-void
.end method
