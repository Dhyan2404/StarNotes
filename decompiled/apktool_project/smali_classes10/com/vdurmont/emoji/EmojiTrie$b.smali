.class public Lcom/vdurmont/emoji/EmojiTrie$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vdurmont/emoji/EmojiTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/vdurmont/emoji/EmojiTrie$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/vdurmont/emoji/Emoji;

.field public final synthetic c:Lcom/vdurmont/emoji/EmojiTrie;


# direct methods
.method public constructor <init>(Lcom/vdurmont/emoji/EmojiTrie;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->c:Lcom/vdurmont/emoji/EmojiTrie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vdurmont/emoji/EmojiTrie;Lcom/vdurmont/emoji/EmojiTrie$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/vdurmont/emoji/EmojiTrie$b;-><init>(Lcom/vdurmont/emoji/EmojiTrie;)V

    return-void
.end method

.method public static synthetic a(Lcom/vdurmont/emoji/EmojiTrie$b;C)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vdurmont/emoji/EmojiTrie$b;->j(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/vdurmont/emoji/EmojiTrie$b;C)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vdurmont/emoji/EmojiTrie$b;->g(C)V

    return-void
.end method

.method public static synthetic c(Lcom/vdurmont/emoji/EmojiTrie$b;C)Lcom/vdurmont/emoji/EmojiTrie$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vdurmont/emoji/EmojiTrie$b;->h(C)Lcom/vdurmont/emoji/EmojiTrie$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/vdurmont/emoji/EmojiTrie$b;Lcom/vdurmont/emoji/Emoji;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vdurmont/emoji/EmojiTrie$b;->l(Lcom/vdurmont/emoji/Emoji;)V

    return-void
.end method

.method public static synthetic e(Lcom/vdurmont/emoji/EmojiTrie$b;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/vdurmont/emoji/EmojiTrie$b;->k()Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/vdurmont/emoji/EmojiTrie$b;)Lcom/vdurmont/emoji/Emoji;
    .locals 0

    invoke-virtual {p0}, Lcom/vdurmont/emoji/EmojiTrie$b;->i()Lcom/vdurmont/emoji/Emoji;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final g(C)V
    .locals 2

    iget-object v0, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    new-instance v1, Lcom/vdurmont/emoji/EmojiTrie$b;

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->c:Lcom/vdurmont/emoji/EmojiTrie;

    invoke-direct {v1, p0}, Lcom/vdurmont/emoji/EmojiTrie$b;-><init>(Lcom/vdurmont/emoji/EmojiTrie;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(C)Lcom/vdurmont/emoji/EmojiTrie$b;
    .locals 0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vdurmont/emoji/EmojiTrie$b;

    return-object p0
.end method

.method public final i()Lcom/vdurmont/emoji/Emoji;
    .locals 0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->b:Lcom/vdurmont/emoji/Emoji;

    return-object p0
.end method

.method public final j(C)Z
    .locals 0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->b:Lcom/vdurmont/emoji/Emoji;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Lcom/vdurmont/emoji/Emoji;)V
    .locals 0

    iput-object p1, p0, Lcom/vdurmont/emoji/EmojiTrie$b;->b:Lcom/vdurmont/emoji/Emoji;

    return-void
.end method
