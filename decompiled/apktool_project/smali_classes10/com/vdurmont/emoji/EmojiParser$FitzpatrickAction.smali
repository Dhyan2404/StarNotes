.class public final enum Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vdurmont/emoji/EmojiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FitzpatrickAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

.field public static final enum IGNORE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

.field public static final enum PARSE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

.field public static final enum REMOVE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    const-string v1, "PARSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->PARSE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    new-instance v1, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    const-string v2, "REMOVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->REMOVE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    new-instance v2, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    const-string v3, "IGNORE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->IGNORE:Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    filled-new-array {v0, v1, v2}, [Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    move-result-object v0

    sput-object v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->$VALUES:[Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;
    .locals 1

    const-class v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    return-object p0
.end method

.method public static values()[Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;
    .locals 1

    sget-object v0, Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->$VALUES:[Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    invoke-virtual {v0}, [Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vdurmont/emoji/EmojiParser$FitzpatrickAction;

    return-object v0
.end method
