.class public final enum Lcom/onyx/engine/sdk/FontSpec$Origin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/FontSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/FontSpec$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/FontSpec$Origin;

.field public static final enum AGENT:Lcom/onyx/engine/sdk/FontSpec$Origin;

.field public static final enum AUTHOR:Lcom/onyx/engine/sdk/FontSpec$Origin;

.field public static final enum USER:Lcom/onyx/engine/sdk/FontSpec$Origin;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/FontSpec$Origin;
    .locals 3

    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->AUTHOR:Lcom/onyx/engine/sdk/FontSpec$Origin;

    sget-object v1, Lcom/onyx/engine/sdk/FontSpec$Origin;->AGENT:Lcom/onyx/engine/sdk/FontSpec$Origin;

    sget-object v2, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/engine/sdk/FontSpec$Origin;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/FontSpec$Origin;

    const-string v1, "AUTHOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/FontSpec$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->AUTHOR:Lcom/onyx/engine/sdk/FontSpec$Origin;

    new-instance v0, Lcom/onyx/engine/sdk/FontSpec$Origin;

    const-string v1, "AGENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/FontSpec$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->AGENT:Lcom/onyx/engine/sdk/FontSpec$Origin;

    new-instance v0, Lcom/onyx/engine/sdk/FontSpec$Origin;

    const-string v1, "USER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/FontSpec$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    invoke-static {}, Lcom/onyx/engine/sdk/FontSpec$Origin;->$values()[Lcom/onyx/engine/sdk/FontSpec$Origin;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->$VALUES:[Lcom/onyx/engine/sdk/FontSpec$Origin;

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

.method public static valueOf(I)Lcom/onyx/engine/sdk/FontSpec$Origin;
    .locals 5

    .line 2
    invoke-static {}, Lcom/onyx/engine/sdk/FontSpec$Origin;->values()[Lcom/onyx/engine/sdk/FontSpec$Origin;

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
    sget-object p0, Lcom/onyx/engine/sdk/FontSpec$Origin;->AUTHOR:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontSpec$Origin;
    .locals 1

    .line 1
    const-class v0, Lcom/onyx/engine/sdk/FontSpec$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/FontSpec$Origin;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->$VALUES:[Lcom/onyx/engine/sdk/FontSpec$Origin;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/FontSpec$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-object v0
.end method
