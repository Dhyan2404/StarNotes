.class public final Lcom/vdurmont/emoji/EmojiParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vdurmont/emoji/EmojiParser$EmojiTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vdurmont/emoji/EmojiParser;->replaceAllEmojis(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiParser$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/vdurmont/emoji/EmojiParser$UnicodeCandidate;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiParser$b;->a:Ljava/lang/String;

    return-object p0
.end method
