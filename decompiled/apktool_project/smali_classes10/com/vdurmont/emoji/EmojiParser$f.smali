.class public final Lcom/vdurmont/emoji/EmojiParser$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vdurmont/emoji/EmojiParser;->removeEmojis(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiParser$f;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$f;->a:Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmoji()Lcom/vdurmont/emoji/Emoji;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getEmoji()Lcom/vdurmont/emoji/Emoji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vdurmont/emoji/Emoji;->getUnicode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;->getFitzpatrickUnicode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
