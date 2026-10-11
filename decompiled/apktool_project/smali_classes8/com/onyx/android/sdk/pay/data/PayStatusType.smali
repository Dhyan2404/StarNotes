.class public final enum Lcom/onyx/android/sdk/pay/data/PayStatusType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/pay/data/PayStatusType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/data/PayStatusType;",
        "",
        "(Ljava/lang/String;I)V",
        "LOADING",
        "LOAD_FAIL",
        "OTHER_PAYING",
        "PAYING",
        "CHECKING",
        "PAY_SUCCESS",
        "PAY_LATER_REMIND",
        "PAY_FAIL",
        "PAY_FAIL_WITHOUT_RETRY",
        "ORDER_CANCEL",
        "sdk-pay_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum CHECKING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum LOADING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum LOAD_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum ORDER_CANCEL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum OTHER_PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum PAY_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum PAY_FAIL_WITHOUT_RETRY:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum PAY_LATER_REMIND:Lcom/onyx/android/sdk/pay/data/PayStatusType;

.field public static final enum PAY_SUCCESS:Lcom/onyx/android/sdk/pay/data/PayStatusType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/pay/data/PayStatusType;
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOADING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOAD_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v2, Lcom/onyx/android/sdk/pay/data/PayStatusType;->OTHER_PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v3, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v4, Lcom/onyx/android/sdk/pay/data/PayStatusType;->CHECKING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v5, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_SUCCESS:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v6, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_LATER_REMIND:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v7, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v8, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_FAIL_WITHOUT_RETRY:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    sget-object v9, Lcom/onyx/android/sdk/pay/data/PayStatusType;->ORDER_CANCEL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    filled-new-array/range {v0 .. v9}, [Lcom/onyx/android/sdk/pay/data/PayStatusType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOADING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "LOAD_FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOAD_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "OTHER_PAYING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->OTHER_PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "PAYING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "CHECKING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->CHECKING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "PAY_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_SUCCESS:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "PAY_LATER_REMIND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_LATER_REMIND:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "PAY_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "PAY_FAIL_WITHOUT_RETRY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_FAIL_WITHOUT_RETRY:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    const-string v1, "ORDER_CANCEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/data/PayStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->ORDER_CANCEL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-static {}, Lcom/onyx/android/sdk/pay/data/PayStatusType;->$values()[Lcom/onyx/android/sdk/pay/data/PayStatusType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->$VALUES:[Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/pay/data/PayStatusType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/data/PayStatusType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/pay/data/PayStatusType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->$VALUES:[Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/pay/data/PayStatusType;

    return-object v0
.end method
