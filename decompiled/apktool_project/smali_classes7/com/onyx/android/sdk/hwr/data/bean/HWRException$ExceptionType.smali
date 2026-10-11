.class public final enum Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/data/bean/HWRException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExceptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;",
        "",
        "(Ljava/lang/String;I)V",
        "UNDEFINED",
        "RESOURCE_NOT_FOUND",
        "INPUT_DATA_FALSE",
        "RECOGNIZER_INIT_FAIL",
        "RECOGNIZER_OPEN_FAIL",
        "RECOGNIZER_TYPE_FALSE",
        "CONVERT_FAIL",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

.field public static final enum CONVERT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

.field public static final enum INPUT_DATA_FALSE:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

.field public static final enum RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

.field public static final enum RECOGNIZER_OPEN_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

.field public static final enum RECOGNIZER_TYPE_FALSE:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

.field public static final enum RESOURCE_NOT_FOUND:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

.field public static final enum UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RESOURCE_NOT_FOUND:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->INPUT_DATA_FALSE:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    sget-object v3, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    sget-object v4, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_OPEN_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    sget-object v5, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_TYPE_FALSE:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    sget-object v6, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->CONVERT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    filled-new-array/range {v0 .. v6}, [Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "RESOURCE_NOT_FOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RESOURCE_NOT_FOUND:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "INPUT_DATA_FALSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->INPUT_DATA_FALSE:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "RECOGNIZER_INIT_FAIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "RECOGNIZER_OPEN_FAIL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_OPEN_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "RECOGNIZER_TYPE_FALSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_TYPE_FALSE:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "CONVERT_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->CONVERT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-static {}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->$values()[Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->$VALUES:[Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->$VALUES:[Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    return-object v0
.end method
