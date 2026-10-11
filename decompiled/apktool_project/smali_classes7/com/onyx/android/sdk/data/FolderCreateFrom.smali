.class public final enum Lcom/onyx/android/sdk/data/FolderCreateFrom;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/data/FolderCreateFrom;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/FolderCreateFrom;",
        "",
        "(Ljava/lang/String;I)V",
        "HOME_FUNC_ROOT_FOLDER_CREATE",
        "HOME_FUNC_SUB_FOLDER_CREATE",
        "HOME_LIST_ITEM_HEADER_CREATE",
        "HOME_FUNC_FOLDER_MOVE_CREATE",
        "HOME_LIST_ITEM_MOVE_CREATE",
        "HOME_FUNC_FOLDER_MOVE_MANGE_CREATE",
        "HOME_LIST_ITEM_MOVE_MANGE_CREATE",
        "sdk-statistics_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/data/FolderCreateFrom;

.field public static final enum HOME_FUNC_FOLDER_MOVE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

.field public static final enum HOME_FUNC_FOLDER_MOVE_MANGE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

.field public static final enum HOME_FUNC_ROOT_FOLDER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

.field public static final enum HOME_FUNC_SUB_FOLDER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

.field public static final enum HOME_LIST_ITEM_HEADER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

.field public static final enum HOME_LIST_ITEM_MOVE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

.field public static final enum HOME_LIST_ITEM_MOVE_MANGE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/data/FolderCreateFrom;
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_ROOT_FOLDER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    sget-object v1, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_SUB_FOLDER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    sget-object v2, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_HEADER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    sget-object v3, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_FOLDER_MOVE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    sget-object v4, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_MOVE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    sget-object v5, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_FOLDER_MOVE_MANGE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    sget-object v6, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_MOVE_MANGE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    filled-new-array/range {v0 .. v6}, [Lcom/onyx/android/sdk/data/FolderCreateFrom;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    const-string v1, "HOME_FUNC_ROOT_FOLDER_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/FolderCreateFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_ROOT_FOLDER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    const-string v1, "HOME_FUNC_SUB_FOLDER_CREATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/FolderCreateFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_SUB_FOLDER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    const-string v1, "HOME_LIST_ITEM_HEADER_CREATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/FolderCreateFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_HEADER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    const-string v1, "HOME_FUNC_FOLDER_MOVE_CREATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/FolderCreateFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_FOLDER_MOVE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    const-string v1, "HOME_LIST_ITEM_MOVE_CREATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/FolderCreateFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_MOVE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    const-string v1, "HOME_FUNC_FOLDER_MOVE_MANGE_CREATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/FolderCreateFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_FOLDER_MOVE_MANGE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    const-string v1, "HOME_LIST_ITEM_MOVE_MANGE_CREATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/FolderCreateFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_MOVE_MANGE_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-static {}, Lcom/onyx/android/sdk/data/FolderCreateFrom;->$values()[Lcom/onyx/android/sdk/data/FolderCreateFrom;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->$VALUES:[Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/data/FolderCreateFrom;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/data/FolderCreateFrom;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/FolderCreateFrom;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/data/FolderCreateFrom;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/FolderCreateFrom;->$VALUES:[Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/data/FolderCreateFrom;

    return-object v0
.end method
