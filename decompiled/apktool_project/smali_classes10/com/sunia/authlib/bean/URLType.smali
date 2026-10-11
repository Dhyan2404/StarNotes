.class public final enum Lcom/sunia/authlib/bean/URLType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/authlib/bean/URLType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/authlib/bean/URLType;

.field public static final enum INTER_PROD:Lcom/sunia/authlib/bean/URLType;

.field public static final enum PROD:Lcom/sunia/authlib/bean/URLType;

.field public static final enum TEST:Lcom/sunia/authlib/bean/URLType;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sunia/authlib/bean/URLType;

    const-string v1, "PROD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/authlib/bean/URLType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/authlib/bean/URLType;->PROD:Lcom/sunia/authlib/bean/URLType;

    new-instance v1, Lcom/sunia/authlib/bean/URLType;

    const-string v2, "TEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/sunia/authlib/bean/URLType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sunia/authlib/bean/URLType;->TEST:Lcom/sunia/authlib/bean/URLType;

    new-instance v2, Lcom/sunia/authlib/bean/URLType;

    const-string v3, "INTER_PROD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/sunia/authlib/bean/URLType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sunia/authlib/bean/URLType;->INTER_PROD:Lcom/sunia/authlib/bean/URLType;

    filled-new-array {v0, v1, v2}, [Lcom/sunia/authlib/bean/URLType;

    move-result-object v0

    sput-object v0, Lcom/sunia/authlib/bean/URLType;->$VALUES:[Lcom/sunia/authlib/bean/URLType;

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

    iput p3, p0, Lcom/sunia/authlib/bean/URLType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/authlib/bean/URLType;
    .locals 1

    const-class v0, Lcom/sunia/authlib/bean/URLType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/authlib/bean/URLType;

    return-object p0
.end method

.method public static values()[Lcom/sunia/authlib/bean/URLType;
    .locals 1

    sget-object v0, Lcom/sunia/authlib/bean/URLType;->$VALUES:[Lcom/sunia/authlib/bean/URLType;

    invoke-virtual {v0}, [Lcom/sunia/authlib/bean/URLType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/authlib/bean/URLType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sunia/authlib/bean/URLType;->value:I

    return p0
.end method
