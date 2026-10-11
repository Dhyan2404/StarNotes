.class public final enum Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;",
        "",
        "Ljava/io/Serializable;",
        "(Ljava/lang/String;I)V",
        "toValueString",
        "",
        "CONTENT_TOP_LEFT",
        "CONTENT_TOP_CENTER",
        "CONTENT_TOP_RIGHT",
        "CONTENT_LEFT_CENTER",
        "CONTENT_RIGHT_CENTER",
        "CONTENT_BOTTOM_LEFT",
        "CONTENT_BOTTOM_CENTER",
        "CONTENT_BOTTOM_RIGHT",
        "BACKGROUND",
        "Companion",
        "sdk-genericshape_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum BACKGROUND:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_BOTTOM_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_BOTTOM_LEFT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_BOTTOM_RIGHT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_LEFT_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_RIGHT_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_TOP_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_TOP_LEFT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final enum CONTENT_TOP_RIGHT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

.field public static final Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_TOP_LEFT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_TOP_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v2, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_TOP_RIGHT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v3, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_LEFT_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v4, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_RIGHT_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v5, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_BOTTOM_LEFT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_BOTTOM_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v7, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_BOTTOM_RIGHT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    sget-object v8, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->BACKGROUND:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_TOP_LEFT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_TOP_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_TOP_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_TOP_RIGHT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_LEFT_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_LEFT_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_RIGHT_CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_RIGHT_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_BOTTOM_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_BOTTOM_LEFT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_BOTTOM_CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_BOTTOM_CENTER:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "CONTENT_BOTTOM_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->CONTENT_BOTTOM_RIGHT:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    const-string v1, "BACKGROUND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->BACKGROUND:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    invoke-static {}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->$values()[Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->$VALUES:[Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;

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
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->$VALUES:[Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;

    return-object v0
.end method


# virtual methods
.method public final toValueString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
