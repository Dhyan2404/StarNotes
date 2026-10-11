.class public final enum Lcom/onyx/android/sdk/data/ElementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/data/ElementType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/ElementType;",
        "",
        "(Ljava/lang/String;I)V",
        "HANDWRITING",
        "PHOTO",
        "STICKER",
        "TEXT",
        "GRAPH",
        "PAGE",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/data/ElementType;

.field public static final enum GRAPH:Lcom/onyx/android/sdk/data/ElementType;

.field public static final enum HANDWRITING:Lcom/onyx/android/sdk/data/ElementType;

.field public static final enum PAGE:Lcom/onyx/android/sdk/data/ElementType;

.field public static final enum PHOTO:Lcom/onyx/android/sdk/data/ElementType;

.field public static final enum STICKER:Lcom/onyx/android/sdk/data/ElementType;

.field public static final enum TEXT:Lcom/onyx/android/sdk/data/ElementType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/data/ElementType;
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/ElementType;->HANDWRITING:Lcom/onyx/android/sdk/data/ElementType;

    sget-object v1, Lcom/onyx/android/sdk/data/ElementType;->PHOTO:Lcom/onyx/android/sdk/data/ElementType;

    sget-object v2, Lcom/onyx/android/sdk/data/ElementType;->STICKER:Lcom/onyx/android/sdk/data/ElementType;

    sget-object v3, Lcom/onyx/android/sdk/data/ElementType;->TEXT:Lcom/onyx/android/sdk/data/ElementType;

    sget-object v4, Lcom/onyx/android/sdk/data/ElementType;->GRAPH:Lcom/onyx/android/sdk/data/ElementType;

    sget-object v5, Lcom/onyx/android/sdk/data/ElementType;->PAGE:Lcom/onyx/android/sdk/data/ElementType;

    filled-new-array/range {v0 .. v5}, [Lcom/onyx/android/sdk/data/ElementType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/ElementType;

    const-string v1, "HANDWRITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->HANDWRITING:Lcom/onyx/android/sdk/data/ElementType;

    new-instance v0, Lcom/onyx/android/sdk/data/ElementType;

    const-string v1, "PHOTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->PHOTO:Lcom/onyx/android/sdk/data/ElementType;

    new-instance v0, Lcom/onyx/android/sdk/data/ElementType;

    const-string v1, "STICKER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->STICKER:Lcom/onyx/android/sdk/data/ElementType;

    new-instance v0, Lcom/onyx/android/sdk/data/ElementType;

    const-string v1, "TEXT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->TEXT:Lcom/onyx/android/sdk/data/ElementType;

    new-instance v0, Lcom/onyx/android/sdk/data/ElementType;

    const-string v1, "GRAPH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->GRAPH:Lcom/onyx/android/sdk/data/ElementType;

    new-instance v0, Lcom/onyx/android/sdk/data/ElementType;

    const-string v1, "PAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->PAGE:Lcom/onyx/android/sdk/data/ElementType;

    invoke-static {}, Lcom/onyx/android/sdk/data/ElementType;->$values()[Lcom/onyx/android/sdk/data/ElementType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->$VALUES:[Lcom/onyx/android/sdk/data/ElementType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/ElementType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/data/ElementType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/ElementType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/data/ElementType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/data/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/ElementType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/data/ElementType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/ElementType;->$VALUES:[Lcom/onyx/android/sdk/data/ElementType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/data/ElementType;

    return-object v0
.end method
