.class public Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vdurmont/emoji/EmojiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnicodeCandidate"
.end annotation


# instance fields
.field public final a:Lcom/vdurmont/emoji/Emoji;

.field public final b:Lcom/vdurmont/emoji/Fitzpatrick;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/vdurmont/emoji/Emoji;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->a:Lcom/vdurmont/emoji/Emoji;

    .line 4
    invoke-static {p2}, Lcom/vdurmont/emoji/Fitzpatrick;->fitzpatrickFromUnicode(Ljava/lang/String;)Lcom/vdurmont/emoji/Fitzpatrick;

    move-result-object p1

    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->b:Lcom/vdurmont/emoji/Fitzpatrick;

    .line 5
    iput p3, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vdurmont/emoji/Emoji;Ljava/lang/String;ILcom/vdurmont/emoji/EmojiParser$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;-><init>(Lcom/vdurmont/emoji/Emoji;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getEmoji()Lcom/vdurmont/emoji/Emoji;
    .locals 0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->a:Lcom/vdurmont/emoji/Emoji;

    return-object p0
.end method

.method public getEmojiEndIndex()I
    .locals 1

    iget v0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->c:I

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->a:Lcom/vdurmont/emoji/Emoji;

    invoke-virtual {p0}, Lcom/vdurmont/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getEmojiStartIndex()I
    .locals 0

    iget p0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->c:I

    return p0
.end method

.method public getFitzpatrick()Lcom/vdurmont/emoji/Fitzpatrick;
    .locals 0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->b:Lcom/vdurmont/emoji/Fitzpatrick;

    return-object p0
.end method

.method public getFitzpatrickEndIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmojiEndIndex()I

    move-result v0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->b:Lcom/vdurmont/emoji/Fitzpatrick;

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getFitzpatrickType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->hasFitzpatrick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->b:Lcom/vdurmont/emoji/Fitzpatrick;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getFitzpatrickUnicode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->hasFitzpatrick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->b:Lcom/vdurmont/emoji/Fitzpatrick;

    iget-object p0, p0, Lcom/vdurmont/emoji/Fitzpatrick;->unicode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public hasFitzpatrick()Z
    .locals 0

    invoke-virtual {p0}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getFitzpatrick()Lcom/vdurmont/emoji/Fitzpatrick;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
