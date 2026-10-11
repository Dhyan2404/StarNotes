.class public final Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/regexp/internal/CharacterIterator;


# instance fields
.field private final src:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public isEnd(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/StringCharacterIterator;->src:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
