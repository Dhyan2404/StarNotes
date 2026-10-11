.class public final enum Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "OPEN",
        "IMPORT",
        "ADD_STROKE",
        "UNDO",
        "REDO",
        "ERASE",
        "REPLACE",
        "TRANSFORM",
        "CONVERT",
        "EXPORT",
        "CLEAR",
        "CLOSE",
        "sdk-hwr_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum ADD_STROKE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum CLEAR:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum CLOSE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum CONVERT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum ERASE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum EXPORT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum IMPORT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum NONE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum OPEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum REDO:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum REPLACE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum TRANSFORM:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

.field public static final enum UNDO:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;
    .locals 13

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->NONE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->OPEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->IMPORT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v3, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->ADD_STROKE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v4, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->UNDO:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v5, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->REDO:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v6, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->ERASE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v7, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->REPLACE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v8, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->TRANSFORM:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v9, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->CONVERT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v10, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->EXPORT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v11, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->CLEAR:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    sget-object v12, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->CLOSE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    filled-new-array/range {v0 .. v12}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->NONE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->OPEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "IMPORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->IMPORT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "ADD_STROKE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->ADD_STROKE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "UNDO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->UNDO:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "REDO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->REDO:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "ERASE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->ERASE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "REPLACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->REPLACE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "TRANSFORM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->TRANSFORM:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "CONVERT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->CONVERT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "EXPORT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->EXPORT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "CLEAR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->CLEAR:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    const-string v1, "CLOSE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->CLOSE:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    invoke-static {}, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->$values()[Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->$VALUES:[Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->$VALUES:[Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    return-object v0
.end method
