.class public final enum Lcom/sunia/nbiv2/sdk/NBIStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/nbiv2/sdk/NBIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/nbiv2/sdk/NBIStatus;

.field public static final enum EMPTY:Lcom/sunia/nbiv2/sdk/NBIStatus;

.field public static final enum FINISHED:Lcom/sunia/nbiv2/sdk/NBIStatus;

.field public static final enum HANDING:Lcom/sunia/nbiv2/sdk/NBIStatus;

.field public static final enum INVALID_POINTER:Lcom/sunia/nbiv2/sdk/NBIStatus;

.field public static final enum START:Lcom/sunia/nbiv2/sdk/NBIStatus;

.field public static final enum STOPPED:Lcom/sunia/nbiv2/sdk/NBIStatus;


# instance fields
.field private status:I


# direct methods
.method private static synthetic $values()[Lcom/sunia/nbiv2/sdk/NBIStatus;
    .locals 6

    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->START:Lcom/sunia/nbiv2/sdk/NBIStatus;

    sget-object v1, Lcom/sunia/nbiv2/sdk/NBIStatus;->HANDING:Lcom/sunia/nbiv2/sdk/NBIStatus;

    sget-object v2, Lcom/sunia/nbiv2/sdk/NBIStatus;->FINISHED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    sget-object v3, Lcom/sunia/nbiv2/sdk/NBIStatus;->STOPPED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    sget-object v4, Lcom/sunia/nbiv2/sdk/NBIStatus;->EMPTY:Lcom/sunia/nbiv2/sdk/NBIStatus;

    sget-object v5, Lcom/sunia/nbiv2/sdk/NBIStatus;->INVALID_POINTER:Lcom/sunia/nbiv2/sdk/NBIStatus;

    filled-new-array/range {v0 .. v5}, [Lcom/sunia/nbiv2/sdk/NBIStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/nbiv2/sdk/NBIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->START:Lcom/sunia/nbiv2/sdk/NBIStatus;

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    const-string v1, "HANDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/nbiv2/sdk/NBIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->HANDING:Lcom/sunia/nbiv2/sdk/NBIStatus;

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/nbiv2/sdk/NBIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->FINISHED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    const-string v1, "STOPPED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/nbiv2/sdk/NBIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->STOPPED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    const-string v1, "EMPTY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/nbiv2/sdk/NBIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->EMPTY:Lcom/sunia/nbiv2/sdk/NBIStatus;

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    const-string v1, "INVALID_POINTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/nbiv2/sdk/NBIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->INVALID_POINTER:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-static {}, Lcom/sunia/nbiv2/sdk/NBIStatus;->$values()[Lcom/sunia/nbiv2/sdk/NBIStatus;

    move-result-object v0

    sput-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->$VALUES:[Lcom/sunia/nbiv2/sdk/NBIStatus;

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

    iput p3, p0, Lcom/sunia/nbiv2/sdk/NBIStatus;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/nbiv2/sdk/NBIStatus;
    .locals 1

    const-class v0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/nbiv2/sdk/NBIStatus;

    return-object p0
.end method

.method public static values()[Lcom/sunia/nbiv2/sdk/NBIStatus;
    .locals 1

    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->$VALUES:[Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v0}, [Lcom/sunia/nbiv2/sdk/NBIStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/nbiv2/sdk/NBIStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIStatus;->status:I

    return p0
.end method
