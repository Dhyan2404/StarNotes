.class public final enum Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;",
        "",
        "count",
        "",
        "(Ljava/lang/String;II)V",
        "getCount",
        "()I",
        "SINGLE",
        "DOUBLE",
        "FOUR",
        "sdk-universal_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

.field public static final enum DOUBLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

.field public static final enum FOUR:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

.field public static final enum SINGLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;


# instance fields
.field private final count:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->SINGLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->DOUBLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->FOUR:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->SINGLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    const-string v1, "DOUBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->DOUBLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    const-string v1, "FOUR"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->FOUR:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->$values()[Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->$VALUES:[Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->count:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->$VALUES:[Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->count:I

    return p0
.end method
