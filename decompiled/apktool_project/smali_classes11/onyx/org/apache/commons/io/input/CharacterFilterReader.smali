.class public Lonyx/org/apache/commons/io/input/CharacterFilterReader;
.super Lonyx/org/apache/commons/io/input/AbstractCharacterFilterReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/drd;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/drd;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public static synthetic H(II)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic w(II)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/input/CharacterFilterReader;->H(II)Z

    move-result p0

    return p0
.end method
