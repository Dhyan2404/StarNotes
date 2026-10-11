.class public Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vdurmont/emoji/EmojiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliasCandidate"
.end annotation


# instance fields
.field public final emoji:Lcom/vdurmont/emoji/Emoji;

.field public final endIndex:I

.field public final fitzpatrick:Lcom/vdurmont/emoji/Fitzpatrick;

.field public final startIndex:I


# direct methods
.method public constructor <init>(Lcom/vdurmont/emoji/Emoji;Lcom/vdurmont/emoji/Fitzpatrick;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;->emoji:Lcom/vdurmont/emoji/Emoji;

    .line 4
    iput-object p2, p0, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;->fitzpatrick:Lcom/vdurmont/emoji/Fitzpatrick;

    .line 5
    iput p3, p0, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;->startIndex:I

    .line 6
    iput p4, p0, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;->endIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vdurmont/emoji/Emoji;Lcom/vdurmont/emoji/Fitzpatrick;IILcom/vdurmont/emoji/EmojiParser$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vdurmont/emoji/EmojiParser$AliasCandidate;-><init>(Lcom/vdurmont/emoji/Emoji;Lcom/vdurmont/emoji/Fitzpatrick;II)V

    return-void
.end method
