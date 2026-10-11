.class public final enum Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;",
        "",
        "(Ljava/lang/String;I)V",
        "TOP_LEFT",
        "TOP_MIDDLE",
        "TOP_RIGHT",
        "MIDDLE_LEFT",
        "MIDDLE_RIGHT",
        "BOTTOM_LEFT",
        "BOTTOM_MIDDLE",
        "BOTTOM_RIGHT",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum BOTTOM_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum BOTTOM_MIDDLE:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum BOTTOM_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum MIDDLE_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum MIDDLE_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum TOP_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum TOP_MIDDLE:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

.field public static final enum TOP_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
    .locals 8

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->TOP_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->TOP_MIDDLE:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->TOP_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->MIDDLE_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->MIDDLE_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    sget-object v5, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->BOTTOM_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    sget-object v6, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->BOTTOM_MIDDLE:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    sget-object v7, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->BOTTOM_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    filled-new-array/range {v0 .. v7}, [Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->TOP_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "TOP_MIDDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->TOP_MIDDLE:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->TOP_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "MIDDLE_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->MIDDLE_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "MIDDLE_RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->MIDDLE_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->BOTTOM_LEFT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "BOTTOM_MIDDLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->BOTTOM_MIDDLE:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->BOTTOM_RIGHT:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->$values()[Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;->$VALUES:[Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    return-object v0
.end method
