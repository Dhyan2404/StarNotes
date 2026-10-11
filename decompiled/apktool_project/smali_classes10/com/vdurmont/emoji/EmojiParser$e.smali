.class public final Lcom/vdurmont/emoji/EmojiParser$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vdurmont/emoji/EmojiParser;->removeAllEmojis(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
