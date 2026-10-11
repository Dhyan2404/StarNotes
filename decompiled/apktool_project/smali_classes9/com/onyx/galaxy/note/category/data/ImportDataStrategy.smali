.class public final enum Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;",
        "",
        "(Ljava/lang/String;I)V",
        "FORCE",
        "COMPARE_REVISION",
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

.field public static final enum COMPARE_REVISION:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

.field public static final enum FORCE:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->FORCE:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->COMPARE_REVISION:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    filled-new-array {v0, v1}, [Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    const-string v1, "FORCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->FORCE:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    const-string v1, "COMPARE_REVISION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->COMPARE_REVISION:Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->$values()[Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->$VALUES:[Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;->$VALUES:[Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;

    return-object v0
.end method
