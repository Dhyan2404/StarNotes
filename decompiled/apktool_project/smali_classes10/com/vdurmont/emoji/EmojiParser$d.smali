.class public final Lcom/vdurmont/emoji/EmojiParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vdurmont/emoji/EmojiParser;->parseToHtmlHexadecimal(Ljava/lang/String;Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;


# direct methods
.method public constructor <init>(Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;)V
    .locals 0

    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiParser$d;->a:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vdurmont/emoji/EmojiParser$h;->a:[I

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$d;->a:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmoji()Lcom/vdurmont/emoji/Emoji;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vdurmont/emoji/Emoji;->getHtmlHexadecimal()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmoji()Lcom/vdurmont/emoji/Emoji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vdurmont/emoji/Emoji;->getHtmlHexadecimal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getFitzpatrickUnicode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
