.class public final enum Lcom/onyx/android/sdk/base/data/DockPoint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/DockPoint$Companion;,
        Lcom/onyx/android/sdk/base/data/DockPoint$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/base/data/DockPoint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0016B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0003J\u0006\u0010\u0008\u001a\u00020\u0003J\u001a\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bJ\u0008\u0010\n\u001a\u00020\u0000H\u0002J\u0008\u0010\u000c\u001a\u00020\u0000H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/DockPoint;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "getHorizontalValue",
        "getVerticalValue",
        "reverse",
        "reverseX",
        "",
        "reverseY",
        "TOP_LEFT",
        "TOP_CENTER",
        "TOP_RIGHT",
        "CENTER_LEFT",
        "CENTER",
        "CENTER_RIGHT",
        "BOTTOM_LEFT",
        "BOTTOM_CENTER",
        "BOTTOM_RIGHT",
        "Companion",
        "sdk-base_release"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum BOTTOM_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final Companion:Lcom/onyx/android/sdk/base/data/DockPoint$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final enum TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

.field public static final VALUE_CENTER:I = 0x2

.field public static final VALUE_END:I = 0x3

.field public static final VALUE_START:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v1, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v2, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v3, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v5, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v6, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v7, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v8, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x0

    const/16 v2, 0xb

    const-string v3, "TOP_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x1

    const/16 v2, 0xc

    const-string v3, "TOP_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x2

    const/16 v2, 0xd

    const-string v3, "TOP_RIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x3

    const/16 v2, 0x15

    const-string v3, "CENTER_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x4

    const/16 v2, 0x16

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x5

    const/16 v2, 0x17

    const-string v3, "CENTER_RIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x6

    const/16 v2, 0x1f

    const-string v3, "BOTTOM_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v1, 0x7

    const/16 v2, 0x20

    const-string v3, "BOTTOM_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    const/16 v1, 0x8

    const/16 v2, 0x21

    const-string v3, "BOTTOM_RIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/DockPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    invoke-static {}, Lcom/onyx/android/sdk/base/data/DockPoint;->$values()[Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->$VALUES:[Lcom/onyx/android/sdk/base/data/DockPoint;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/base/data/DockPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/DockPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->Companion:Lcom/onyx/android/sdk/base/data/DockPoint$Companion;

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

    iput p3, p0, Lcom/onyx/android/sdk/base/data/DockPoint;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/base/data/DockPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static synthetic reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse(ZZ)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reverse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final reverseX()Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/DockPoint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final reverseY()Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/DockPoint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/base/data/DockPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/DockPoint;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/DockPoint;->$VALUES:[Lcom/onyx/android/sdk/base/data/DockPoint;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/base/data/DockPoint;

    return-object v0
.end method


# virtual methods
.method public final getHorizontalValue()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/DockPoint;->value:I

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/DockPoint;->value:I

    return p0
.end method

.method public final getVerticalValue()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/DockPoint;->value:I

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public final reverse(ZZ)Lcom/onyx/android/sdk/base/data/DockPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverseX()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverseY()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object p0

    :cond_1
    return-object p0
.end method
