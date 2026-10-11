.class public final enum Lcom/onyx/android/sdk/data/InsertPageFrom;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/data/InsertPageFrom;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/InsertPageFrom;",
        "",
        "desc",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "RECENT_TEMPLATE",
        "MORE_TEMPLATE",
        "OTHER_NOTE",
        "IMPORT_FILE",
        "IMPORT_PICTURE",
        "TAKE_PICTURE",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/data/InsertPageFrom;

.field public static final enum IMPORT_FILE:Lcom/onyx/android/sdk/data/InsertPageFrom;

.field public static final enum IMPORT_PICTURE:Lcom/onyx/android/sdk/data/InsertPageFrom;

.field public static final enum MORE_TEMPLATE:Lcom/onyx/android/sdk/data/InsertPageFrom;

.field public static final enum OTHER_NOTE:Lcom/onyx/android/sdk/data/InsertPageFrom;

.field public static final enum RECENT_TEMPLATE:Lcom/onyx/android/sdk/data/InsertPageFrom;

.field public static final enum TAKE_PICTURE:Lcom/onyx/android/sdk/data/InsertPageFrom;


# instance fields
.field private final desc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/data/InsertPageFrom;
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->RECENT_TEMPLATE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget-object v1, Lcom/onyx/android/sdk/data/InsertPageFrom;->MORE_TEMPLATE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget-object v2, Lcom/onyx/android/sdk/data/InsertPageFrom;->OTHER_NOTE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget-object v3, Lcom/onyx/android/sdk/data/InsertPageFrom;->IMPORT_FILE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget-object v4, Lcom/onyx/android/sdk/data/InsertPageFrom;->IMPORT_PICTURE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget-object v5, Lcom/onyx/android/sdk/data/InsertPageFrom;->TAKE_PICTURE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    filled-new-array/range {v0 .. v5}, [Lcom/onyx/android/sdk/data/InsertPageFrom;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/statistics/R$string;->insert_from_recent_template:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RECENT_TEMPLATE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/onyx/android/sdk/data/InsertPageFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->RECENT_TEMPLATE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget v2, Lcom/onyx/android/sdk/statistics/R$string;->insert_from_more_template:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MORE_TEMPLATE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/onyx/android/sdk/data/InsertPageFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->MORE_TEMPLATE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget v2, Lcom/onyx/android/sdk/statistics/R$string;->insert_from_other_note:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTHER_NOTE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/onyx/android/sdk/data/InsertPageFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->OTHER_NOTE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget v2, Lcom/onyx/android/sdk/statistics/R$string;->insert_from_import_file:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMPORT_FILE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v2}, Lcom/onyx/android/sdk/data/InsertPageFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->IMPORT_FILE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget v2, Lcom/onyx/android/sdk/statistics/R$string;->insert_from_import_picture:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMPORT_PICTURE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v2}, Lcom/onyx/android/sdk/data/InsertPageFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->IMPORT_PICTURE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    new-instance v0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    sget v2, Lcom/onyx/android/sdk/statistics/R$string;->insert_from_take_picture:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAKE_PICTURE"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/data/InsertPageFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->TAKE_PICTURE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    invoke-static {}, Lcom/onyx/android/sdk/data/InsertPageFrom;->$values()[Lcom/onyx/android/sdk/data/InsertPageFrom;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->$VALUES:[Lcom/onyx/android/sdk/data/InsertPageFrom;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/android/sdk/data/InsertPageFrom;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/data/InsertPageFrom;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/data/InsertPageFrom;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/InsertPageFrom;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/data/InsertPageFrom;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/InsertPageFrom;->$VALUES:[Lcom/onyx/android/sdk/data/InsertPageFrom;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/data/InsertPageFrom;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/InsertPageFrom;->desc:Ljava/lang/String;

    return-object p0
.end method
