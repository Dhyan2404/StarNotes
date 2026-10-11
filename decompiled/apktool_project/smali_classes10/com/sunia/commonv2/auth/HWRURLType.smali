.class public final enum Lcom/sunia/commonv2/auth/HWRURLType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/commonv2/auth/HWRURLType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/commonv2/auth/HWRURLType;

.field public static final enum INTER_PROD:Lcom/sunia/commonv2/auth/HWRURLType;

.field public static final enum PROD:Lcom/sunia/commonv2/auth/HWRURLType;

.field public static final enum TEST:Lcom/sunia/commonv2/auth/HWRURLType;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/sunia/commonv2/auth/HWRURLType;
    .locals 3

    sget-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->PROD:Lcom/sunia/commonv2/auth/HWRURLType;

    sget-object v1, Lcom/sunia/commonv2/auth/HWRURLType;->TEST:Lcom/sunia/commonv2/auth/HWRURLType;

    sget-object v2, Lcom/sunia/commonv2/auth/HWRURLType;->INTER_PROD:Lcom/sunia/commonv2/auth/HWRURLType;

    filled-new-array {v0, v1, v2}, [Lcom/sunia/commonv2/auth/HWRURLType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/commonv2/auth/HWRURLType;

    const-string v1, "PROD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRURLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->PROD:Lcom/sunia/commonv2/auth/HWRURLType;

    new-instance v0, Lcom/sunia/commonv2/auth/HWRURLType;

    const-string v1, "TEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRURLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->TEST:Lcom/sunia/commonv2/auth/HWRURLType;

    new-instance v0, Lcom/sunia/commonv2/auth/HWRURLType;

    const-string v1, "INTER_PROD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRURLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->INTER_PROD:Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-static {}, Lcom/sunia/commonv2/auth/HWRURLType;->$values()[Lcom/sunia/commonv2/auth/HWRURLType;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->$VALUES:[Lcom/sunia/commonv2/auth/HWRURLType;

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

    iput p3, p0, Lcom/sunia/commonv2/auth/HWRURLType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/sunia/commonv2/auth/HWRURLType;
    .locals 5

    invoke-static {}, Lcom/sunia/commonv2/auth/HWRURLType;->values()[Lcom/sunia/commonv2/auth/HWRURLType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sunia/commonv2/auth/HWRURLType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HWRURLType value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/commonv2/auth/HWRURLType;
    .locals 1

    const-class v0, Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/commonv2/auth/HWRURLType;

    return-object p0
.end method

.method public static values()[Lcom/sunia/commonv2/auth/HWRURLType;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->$VALUES:[Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-virtual {v0}, [Lcom/sunia/commonv2/auth/HWRURLType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/commonv2/auth/HWRURLType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/auth/HWRURLType;->value:I

    return p0
.end method
