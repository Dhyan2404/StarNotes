.class public final enum Lcom/sunia/commonv2/enum2/PathActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/commonv2/enum2/PathActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/commonv2/enum2/PathActionType;

.field public static final enum MOVE:Lcom/sunia/commonv2/enum2/PathActionType;

.field public static final enum NAI:Lcom/sunia/commonv2/enum2/PathActionType;

.field public static final enum NAI_V2:Lcom/sunia/commonv2/enum2/PathActionType;

.field public static final enum PATH:Lcom/sunia/commonv2/enum2/PathActionType;

.field public static final enum REMOVE:Lcom/sunia/commonv2/enum2/PathActionType;


# instance fields
.field value:I


# direct methods
.method private static synthetic $values()[Lcom/sunia/commonv2/enum2/PathActionType;
    .locals 5

    sget-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->PATH:Lcom/sunia/commonv2/enum2/PathActionType;

    sget-object v1, Lcom/sunia/commonv2/enum2/PathActionType;->NAI:Lcom/sunia/commonv2/enum2/PathActionType;

    sget-object v2, Lcom/sunia/commonv2/enum2/PathActionType;->NAI_V2:Lcom/sunia/commonv2/enum2/PathActionType;

    sget-object v3, Lcom/sunia/commonv2/enum2/PathActionType;->REMOVE:Lcom/sunia/commonv2/enum2/PathActionType;

    sget-object v4, Lcom/sunia/commonv2/enum2/PathActionType;->MOVE:Lcom/sunia/commonv2/enum2/PathActionType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sunia/commonv2/enum2/PathActionType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/commonv2/enum2/PathActionType;

    const-string v1, "PATH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/enum2/PathActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->PATH:Lcom/sunia/commonv2/enum2/PathActionType;

    new-instance v0, Lcom/sunia/commonv2/enum2/PathActionType;

    const-string v1, "NAI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/enum2/PathActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->NAI:Lcom/sunia/commonv2/enum2/PathActionType;

    new-instance v0, Lcom/sunia/commonv2/enum2/PathActionType;

    const-string v1, "NAI_V2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/enum2/PathActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->NAI_V2:Lcom/sunia/commonv2/enum2/PathActionType;

    new-instance v0, Lcom/sunia/commonv2/enum2/PathActionType;

    const-string v1, "REMOVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/enum2/PathActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->REMOVE:Lcom/sunia/commonv2/enum2/PathActionType;

    new-instance v0, Lcom/sunia/commonv2/enum2/PathActionType;

    const-string v1, "MOVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/enum2/PathActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->MOVE:Lcom/sunia/commonv2/enum2/PathActionType;

    invoke-static {}, Lcom/sunia/commonv2/enum2/PathActionType;->$values()[Lcom/sunia/commonv2/enum2/PathActionType;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->$VALUES:[Lcom/sunia/commonv2/enum2/PathActionType;

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

    iput p3, p0, Lcom/sunia/commonv2/enum2/PathActionType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/commonv2/enum2/PathActionType;
    .locals 1

    const-class v0, Lcom/sunia/commonv2/enum2/PathActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/commonv2/enum2/PathActionType;

    return-object p0
.end method

.method public static values()[Lcom/sunia/commonv2/enum2/PathActionType;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/enum2/PathActionType;->$VALUES:[Lcom/sunia/commonv2/enum2/PathActionType;

    invoke-virtual {v0}, [Lcom/sunia/commonv2/enum2/PathActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/commonv2/enum2/PathActionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/enum2/PathActionType;->value:I

    return p0
.end method
