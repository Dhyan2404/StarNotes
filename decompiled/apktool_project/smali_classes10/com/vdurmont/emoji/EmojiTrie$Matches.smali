.class public final enum Lcom/vdurmont/emoji/EmojiTrie$Matches;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vdurmont/emoji/EmojiTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Matches"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vdurmont/emoji/EmojiTrie$Matches;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vdurmont/emoji/EmojiTrie$Matches;

.field public static final enum EXACTLY:Lcom/vdurmont/emoji/EmojiTrie$Matches;

.field public static final enum IMPOSSIBLE:Lcom/vdurmont/emoji/EmojiTrie$Matches;

.field public static final enum POSSIBLY:Lcom/vdurmont/emoji/EmojiTrie$Matches;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vdurmont/emoji/EmojiTrie$Matches;

    const-string v1, "EXACTLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vdurmont/emoji/EmojiTrie$Matches;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->EXACTLY:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    new-instance v1, Lcom/vdurmont/emoji/EmojiTrie$Matches;

    const-string v2, "POSSIBLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vdurmont/emoji/EmojiTrie$Matches;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vdurmont/emoji/EmojiTrie$Matches;->POSSIBLY:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    new-instance v2, Lcom/vdurmont/emoji/EmojiTrie$Matches;

    const-string v3, "IMPOSSIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/vdurmont/emoji/EmojiTrie$Matches;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vdurmont/emoji/EmojiTrie$Matches;->IMPOSSIBLE:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    filled-new-array {v0, v1, v2}, [Lcom/vdurmont/emoji/EmojiTrie$Matches;

    move-result-object v0

    sput-object v0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->$VALUES:[Lcom/vdurmont/emoji/EmojiTrie$Matches;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vdurmont/emoji/EmojiTrie$Matches;
    .locals 1

    const-class v0, Lcom/vdurmont/emoji/EmojiTrie$Matches;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vdurmont/emoji/EmojiTrie$Matches;

    return-object p0
.end method

.method public static values()[Lcom/vdurmont/emoji/EmojiTrie$Matches;
    .locals 1

    sget-object v0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->$VALUES:[Lcom/vdurmont/emoji/EmojiTrie$Matches;

    invoke-virtual {v0}, [Lcom/vdurmont/emoji/EmojiTrie$Matches;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vdurmont/emoji/EmojiTrie$Matches;

    return-object v0
.end method


# virtual methods
.method public exactMatch()Z
    .locals 1

    sget-object v0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->EXACTLY:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public impossibleMatch()Z
    .locals 1

    sget-object v0, Lcom/vdurmont/emoji/EmojiTrie$Matches;->IMPOSSIBLE:Lcom/vdurmont/emoji/EmojiTrie$Matches;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
