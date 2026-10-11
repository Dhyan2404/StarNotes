.class public final enum Lcom/onyx/android/sdk/device/bean/MultiWindowType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        "",
        "location",
        "",
        "(Ljava/lang/String;II)V",
        "getLocation",
        "()I",
        "setLocation",
        "(I)V",
        "isWindowAtTheBottom",
        "",
        "isWindowAtTheLeft",
        "isWindowAtTheRight",
        "isWindowAtTheTop",
        "MULTI_WINDOW_NONE",
        "MULTI_WINDOW_UN_KNOW",
        "MULTI_WINDOW_H_1_2",
        "MULTI_WINDOW_H_1_3",
        "MULTI_WINDOW_H_2_3",
        "MULTI_WINDOW_V_1_2",
        "MULTI_WINDOW_V_1_3",
        "MULTI_WINDOW_V_2_3",
        "sdk-device_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_H_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_H_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_H_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_NONE:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_UN_KNOW:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_V_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_V_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

.field public static final enum MULTI_WINDOW_V_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;


# instance fields
.field private location:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_NONE:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    sget-object v1, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_UN_KNOW:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    sget-object v2, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    sget-object v3, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    sget-object v4, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    sget-object v5, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    sget-object v6, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    sget-object v7, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    filled-new-array/range {v0 .. v7}, [Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v1, "MULTI_WINDOW_NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_NONE:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v8, "MULTI_WINDOW_UN_KNOW"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_UN_KNOW:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v2, "MULTI_WINDOW_H_1_2"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v8, "MULTI_WINDOW_H_1_3"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v2, "MULTI_WINDOW_H_2_3"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v8, "MULTI_WINDOW_V_1_2"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v2, "MULTI_WINDOW_V_1_3"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    new-instance v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    const-string v8, "MULTI_WINDOW_V_2_3"

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    invoke-static {}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->$values()[Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->$VALUES:[Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->location:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, -0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->$VALUES:[Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    return-object v0
.end method


# virtual methods
.method public final getLocation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->location:I

    return p0
.end method

.method public final isWindowAtTheBottom()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->location:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWindowAtTheLeft()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->location:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWindowAtTheRight()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->location:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isWindowAtTheTop()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->location:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setLocation(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->location:I

    return-void
.end method
