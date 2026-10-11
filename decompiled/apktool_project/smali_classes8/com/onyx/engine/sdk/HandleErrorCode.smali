.class public final enum Lcom/onyx/engine/sdk/HandleErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/HandleErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum FILE_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum MARK_DOWN_CONVERT_FAILED:Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum MSDOC_CONFIG_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum MSDOC_CONTENT_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum OK:Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum OPEN_FAILED:Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum UNKNOWN:Lcom/onyx/engine/sdk/HandleErrorCode;

.field public static final enum ZIP_NOT_RECOGNISED:Lcom/onyx/engine/sdk/HandleErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/HandleErrorCode;
    .locals 8

    sget-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->OK:Lcom/onyx/engine/sdk/HandleErrorCode;

    sget-object v1, Lcom/onyx/engine/sdk/HandleErrorCode;->FILE_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

    sget-object v2, Lcom/onyx/engine/sdk/HandleErrorCode;->OPEN_FAILED:Lcom/onyx/engine/sdk/HandleErrorCode;

    sget-object v3, Lcom/onyx/engine/sdk/HandleErrorCode;->ZIP_NOT_RECOGNISED:Lcom/onyx/engine/sdk/HandleErrorCode;

    sget-object v4, Lcom/onyx/engine/sdk/HandleErrorCode;->MSDOC_CONFIG_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

    sget-object v5, Lcom/onyx/engine/sdk/HandleErrorCode;->MSDOC_CONTENT_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

    sget-object v6, Lcom/onyx/engine/sdk/HandleErrorCode;->MARK_DOWN_CONVERT_FAILED:Lcom/onyx/engine/sdk/HandleErrorCode;

    sget-object v7, Lcom/onyx/engine/sdk/HandleErrorCode;->UNKNOWN:Lcom/onyx/engine/sdk/HandleErrorCode;

    filled-new-array/range {v0 .. v7}, [Lcom/onyx/engine/sdk/HandleErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->OK:Lcom/onyx/engine/sdk/HandleErrorCode;

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "FILE_NOT_EXIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->FILE_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "OPEN_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->OPEN_FAILED:Lcom/onyx/engine/sdk/HandleErrorCode;

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "ZIP_NOT_RECOGNISED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->ZIP_NOT_RECOGNISED:Lcom/onyx/engine/sdk/HandleErrorCode;

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "MSDOC_CONFIG_NOT_EXIST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->MSDOC_CONFIG_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "MSDOC_CONTENT_NOT_EXIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->MSDOC_CONTENT_NOT_EXIST:Lcom/onyx/engine/sdk/HandleErrorCode;

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "MARK_DOWN_CONVERT_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->MARK_DOWN_CONVERT_FAILED:Lcom/onyx/engine/sdk/HandleErrorCode;

    new-instance v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/HandleErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->UNKNOWN:Lcom/onyx/engine/sdk/HandleErrorCode;

    invoke-static {}, Lcom/onyx/engine/sdk/HandleErrorCode;->$values()[Lcom/onyx/engine/sdk/HandleErrorCode;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->$VALUES:[Lcom/onyx/engine/sdk/HandleErrorCode;

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

.method public static valueOf(I)Lcom/onyx/engine/sdk/HandleErrorCode;
    .locals 5

    .line 2
    invoke-static {}, Lcom/onyx/engine/sdk/HandleErrorCode;->values()[Lcom/onyx/engine/sdk/HandleErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/onyx/engine/sdk/HandleErrorCode;->UNKNOWN:Lcom/onyx/engine/sdk/HandleErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/HandleErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/engine/sdk/HandleErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/HandleErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/HandleErrorCode;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/HandleErrorCode;->$VALUES:[Lcom/onyx/engine/sdk/HandleErrorCode;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/HandleErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/HandleErrorCode;

    return-object v0
.end method
