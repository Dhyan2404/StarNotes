.class public Lcom/vdurmont/emoji/EmojiParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;,
        Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;,
        Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;,
        Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractEmojis(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/vdurmont/emoji/EmojiParser;->getUnicodeCandidates(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;

    invoke-virtual {v1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmoji()Lcom/vdurmont/emoji/Emoji;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vdurmont/emoji/Emoji;->supportsFitzpatrick()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->hasFitzpatrick()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmoji()Lcom/vdurmont/emoji/Emoji;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getFitzpatrick()Lcom/vdurmont/emoji/Fitzpatrick;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vdurmont/emoji/Emoji;->getUnicode(Lcom/vdurmont/emoji/Fitzpatrick;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmoji()Lcom/vdurmont/emoji/Emoji;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vdurmont/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAliasAt(Ljava/lang/String;I)Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    return-object v2

    :cond_1
    const/16 v3, 0x7c

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v0, :cond_4

    if-ge v1, v8, :cond_4

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vdurmont/emoji/EmojiManager;->getForAlias(Ljava/lang/String;)Lcom/vdurmont/emoji/Emoji;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v5}, Lcom/vdurmont/emoji/Emoji;->supportsFitzpatrick()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vdurmont/emoji/Fitzpatrick;->fitzpatrickFromType(Ljava/lang/String;)Lcom/vdurmont/emoji/Fitzpatrick;

    move-result-object v6

    new-instance p0, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;

    const/4 v9, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;-><init>(Lcom/vdurmont/emoji/Emoji;Lcom/vdurmont/emoji/Fitzpatrick;IILcom/vdurmont/emoji/EmojiParser$a;)V

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vdurmont/emoji/EmojiManager;->getForAlias(Ljava/lang/String;)Lcom/vdurmont/emoji/Emoji;

    move-result-object v5

    if-nez v5, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;-><init>(Lcom/vdurmont/emoji/Emoji;Lcom/vdurmont/emoji/Fitzpatrick;IILcom/vdurmont/emoji/EmojiParser$a;)V

    return-object p0

    :cond_6
    :goto_0
    return-object v2
.end method

.method public static getEmojiEndPos([CI)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    const/4 v1, -0x1

    :goto_0
    array-length v2, p0

    if-gt v0, v2, :cond_2

    sget-object v2, Lcom/vdurmont/emoji/EmojiManager;->e:Lcom/vdurmont/emoji/EmojiTrie;

    invoke-virtual {v2, p0, p1, v0}, Lcom/vdurmont/emoji/EmojiTrie;->isEmoji([CII)Lcom/vdurmont/emoji/EmojiTrie$Matches;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vdurmont/emoji/EmojiTrie$Matches;->exactMatch()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/vdurmont/emoji/EmojiTrie$Matches;->impossibleMatch()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getHtmlEncodedEmojiAt(Ljava/lang/String;I)Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;
    .locals 15

    move-object v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x0

    if-lt v1, v2, :cond_7

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x23

    if-eq v1, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lcom/vdurmont/emoji/EmojiManager;->e:Lcom/vdurmont/emoji/EmojiTrie;

    iget v1, v1, Lcom/vdurmont/emoji/EmojiTrie;->b:I

    new-array v5, v1, [C

    const/4 v6, -0x1

    const/4 v7, 0x0

    move/from16 v8, p1

    move-object v10, v3

    move v11, v6

    move v9, v7

    :goto_0
    add-int/lit8 v12, v8, 0x3

    const/16 v13, 0x3b

    invoke-virtual {p0, v13, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-ne v12, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x2

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x78

    if-ne v13, v14, :cond_2

    const/16 v13, 0x10

    goto :goto_1

    :cond_2
    const/16 v13, 0xa

    :goto_1
    div-int/lit8 v14, v13, 0x10

    add-int/2addr v8, v14

    invoke-virtual {p0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8, v5, v9}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v9, v8

    sget-object v8, Lcom/vdurmont/emoji/EmojiManager;->e:Lcom/vdurmont/emoji/EmojiTrie;

    invoke-virtual {v8, v5, v7, v9}, Lcom/vdurmont/emoji/EmojiTrie;->a([CII)Lcom/vdurmont/emoji/Emoji;

    move-result-object v13

    if-eqz v13, :cond_3

    move v11, v12

    move-object v10, v13

    :cond_3
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v14, v12, 0x4

    if-le v13, v14, :cond_5

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v2, :cond_5

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v4, :cond_5

    if-ge v9, v1, :cond_5

    invoke-virtual {v8, v5, v7, v9}, Lcom/vdurmont/emoji/EmojiTrie;->isEmoji([CII)Lcom/vdurmont/emoji/EmojiTrie$Matches;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vdurmont/emoji/EmojiTrie$Matches;->impossibleMatch()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v8, v12

    goto :goto_0

    :catch_0
    :cond_5
    :goto_2
    move-object v1, v10

    move v4, v11

    if-nez v1, :cond_6

    return-object v3

    :cond_6
    new-instance v6, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;-><init>(Lcom/vdurmont/emoji/Emoji;Lcom/vdurmont/emoji/Fitzpatrick;IILcom/vdurmont/emoji/EmojiParser$a;)V

    return-object v6

    :cond_7
    :goto_3
    return-object v3
.end method

.method public static getNextUnicodeCandidate([CI)Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;
    .locals 5

    :goto_0
    array-length v0, p0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    invoke-static {p0, p1}, Lcom/vdurmont/emoji/EmojiParser;->getEmojiEndPos([CI)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/String;

    sub-int v3, v0, p1

    invoke-direct {v2, p0, p1, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Lcom/vdurmont/emoji/EmojiManager;->getByUnicode(Ljava/lang/String;)Lcom/vdurmont/emoji/Emoji;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    array-length v4, p0

    if-gt v3, v4, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_1
    new-instance p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;-><init>(Lcom/vdurmont/emoji/Emoji;Ljava/lang/String;ILcom/vdurmont/emoji/EmojiParser$a;)V

    return-object p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getUnicodeCandidates(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/vdurmont/emoji/EmojiParser;->getNextUnicodeCandidate([CI)Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getFitzpatrickEndIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lcom/vdurmont/emoji/EmojiParser;->getUnicodeCandidates(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;

    invoke-virtual {v3}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmojiStartIndex()I

    move-result v4

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;->transform(Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getFitzpatrickEndIndex()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToAliases(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->PARSE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseToAliases(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToAliases(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$a;

    invoke-direct {v0, p1}, Lcom/vdurmont/emoji/EmojiParser$a;-><init>(Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)V

    .line 3
    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToHtmlDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->PARSE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseToHtmlDecimal(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToHtmlDecimal(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$c;

    invoke-direct {v0, p1}, Lcom/vdurmont/emoji/EmojiParser$c;-><init>(Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)V

    .line 3
    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToHtmlHexadecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->PARSE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseToHtmlHexadecimal(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToHtmlHexadecimal(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$d;

    invoke-direct {v0, p1}, Lcom/vdurmont/emoji/EmojiParser$d;-><init>(Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)V

    .line 3
    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {p0, v1}, Lcom/vdurmont/emoji/EmojiParser;->getAliasAt(Ljava/lang/String;I)Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lcom/vdurmont/emoji/EmojiParser;->getHtmlEncodedEmojiAt(Ljava/lang/String;I)Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;->emoji:Lcom/vdurmont/emoji/Emoji;

    invoke-virtual {v1}, Lcom/vdurmont/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;->endIndex:I

    iget-object v2, v2, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;->fitzpatrick:Lcom/vdurmont/emoji/Fitzpatrick;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/vdurmont/emoji/Fitzpatrick;->unicode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeAllEmojis(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$e;

    invoke-direct {v0}, Lcom/vdurmont/emoji/EmojiParser$e;-><init>()V

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeAllEmojisExcept(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/vdurmont/emoji/Emoji;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$g;

    invoke-direct {v0, p1}, Lcom/vdurmont/emoji/EmojiParser$g;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeEmojis(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/vdurmont/emoji/Emoji;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$f;

    invoke-direct {v0, p1}, Lcom/vdurmont/emoji/EmojiParser$f;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllEmojis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$b;

    invoke-direct {v0, p1}, Lcom/vdurmont/emoji/EmojiParser$b;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiParser;->parseFromUnicode(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
