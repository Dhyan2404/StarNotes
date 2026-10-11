.class public Lcom/vdurmont/emoji/EmojiTrie;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vdurmont/emoji/EmojiTrie$b;,
        Lcom/vdurmont/emoji/EmojiTrie$Matches;
    }
.end annotation


# instance fields
.field public final a:Lcom/vdurmont/emoji/EmojiTrie$b;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/vdurmont/emoji/Emoji;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vdurmont/emoji/EmojiTrie$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vdurmont/emoji/EmojiTrie$b;-><init>(Lcom/vdurmont/emoji/EmojiTrie;Lcom/vdurmont/emoji/EmojiTrie$a;)V

    iput-object v0, p0, Lcom/vdurmont/emoji/EmojiTrie;->a:Lcom/vdurmont/emoji/EmojiTrie$b;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vdurmont/emoji/Emoji;

    iget-object v3, p0, Lcom/vdurmont/emoji/EmojiTrie;->a:Lcom/vdurmont/emoji/EmojiTrie$b;

    invoke-virtual {v2}, Lcom/vdurmont/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-char v7, v4, v6

    invoke-static {v3, v7}, Lcom/vdurmont/emoji/EmojiTrie$b;->a(Lcom/vdurmont/emoji/EmojiTrie$b;C)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v3, v7}, Lcom/vdurmont/emoji/EmojiTrie$b;->b(Lcom/vdurmont/emoji/EmojiTrie$b;C)V

    :cond_0
    invoke-static {v3, v7}, Lcom/vdurmont/emoji/EmojiTrie$b;->c(Lcom/vdurmont/emoji/EmojiTrie$b;C)Lcom/vdurmont/emoji/EmojiTrie$b;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3, v2}, Lcom/vdurmont/emoji/EmojiTrie$b;->d(Lcom/vdurmont/emoji/EmojiTrie$b;Lcom/vdurmont/emoji/Emoji;)V

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/vdurmont/emoji/EmojiTrie;->b:I

    return-void
.end method


# virtual methods
.method public a([CII)Lcom/vdurmont/emoji/Emoji;
    .locals 2

    if-ltz p2, :cond_2

    if-gt p2, p3, :cond_2

    array-length v0, p1

    if-gt p3, v0, :cond_2

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiTrie;->a:Lcom/vdurmont/emoji/EmojiTrie$b;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    aget-char v0, p1, p2

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiTrie$b;->a(Lcom/vdurmont/emoji/EmojiTrie$b;C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-char v0, p1, p2

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiTrie$b;->c(Lcom/vdurmont/emoji/EmojiTrie$b;C)Lcom/vdurmont/emoji/EmojiTrie$b;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/vdurmont/emoji/EmojiTrie$b;->f(Lcom/vdurmont/emoji/EmojiTrie$b;)Lcom/vdurmont/emoji/Emoji;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", end "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEmoji(Ljava/lang/String;)Lcom/vdurmont/emoji/Emoji;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/vdurmont/emoji/EmojiTrie;->a([CII)Lcom/vdurmont/emoji/Emoji;

    move-result-object p0

    return-object p0
.end method

.method public isEmoji([C)Lcom/vdurmont/emoji/EmojiTrie$Matches;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/vdurmont/emoji/EmojiTrie;->isEmoji([CII)Lcom/vdurmont/emoji/EmojiTrie$Matches;

    move-result-object p0

    return-object p0
.end method

.method public isEmoji([CII)Lcom/vdurmont/emoji/EmojiTrie$Matches;
    .locals 2

    if-ltz p2, :cond_3

    if-gt p2, p3, :cond_3

    .line 2
    array-length v0, p1

    if-gt p3, v0, :cond_3

    .line 3
    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiTrie;->a:Lcom/vdurmont/emoji/EmojiTrie$b;

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    aget-char v0, p1, p2

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiTrie$b;->a(Lcom/vdurmont/emoji/EmojiTrie$b;C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object p0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->IMPOSSIBLE:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    return-object p0

    .line 6
    :cond_0
    aget-char v0, p1, p2

    invoke-static {p0, v0}, Lcom/vdurmont/emoji/EmojiTrie$b;->c(Lcom/vdurmont/emoji/EmojiTrie$b;C)Lcom/vdurmont/emoji/EmojiTrie$b;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/vdurmont/emoji/EmojiTrie$b;->e(Lcom/vdurmont/emoji/EmojiTrie$b;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->EXACTLY:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->POSSIBLY:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    :goto_1
    return-object p0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", end "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
