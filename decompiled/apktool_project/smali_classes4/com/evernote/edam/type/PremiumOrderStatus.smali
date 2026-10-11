.class public final enum Lcom/evernote/edam/type/PremiumOrderStatus;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/edam/type/PremiumOrderStatus;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/type/PremiumOrderStatus;

.field public static final enum ACTIVE:Lcom/evernote/edam/type/PremiumOrderStatus;

.field public static final enum CANCELED:Lcom/evernote/edam/type/PremiumOrderStatus;

.field public static final enum CANCELLATION_PENDING:Lcom/evernote/edam/type/PremiumOrderStatus;

.field public static final enum FAILED:Lcom/evernote/edam/type/PremiumOrderStatus;

.field public static final enum NONE:Lcom/evernote/edam/type/PremiumOrderStatus;

.field public static final enum PENDING:Lcom/evernote/edam/type/PremiumOrderStatus;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/evernote/edam/type/PremiumOrderStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/evernote/edam/type/PremiumOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/PremiumOrderStatus;->NONE:Lcom/evernote/edam/type/PremiumOrderStatus;

    new-instance v1, Lcom/evernote/edam/type/PremiumOrderStatus;

    const-string v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/evernote/edam/type/PremiumOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/evernote/edam/type/PremiumOrderStatus;->PENDING:Lcom/evernote/edam/type/PremiumOrderStatus;

    new-instance v2, Lcom/evernote/edam/type/PremiumOrderStatus;

    const-string v3, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/evernote/edam/type/PremiumOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/evernote/edam/type/PremiumOrderStatus;->ACTIVE:Lcom/evernote/edam/type/PremiumOrderStatus;

    new-instance v3, Lcom/evernote/edam/type/PremiumOrderStatus;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/evernote/edam/type/PremiumOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/evernote/edam/type/PremiumOrderStatus;->FAILED:Lcom/evernote/edam/type/PremiumOrderStatus;

    new-instance v4, Lcom/evernote/edam/type/PremiumOrderStatus;

    const-string v5, "CANCELLATION_PENDING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/evernote/edam/type/PremiumOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/evernote/edam/type/PremiumOrderStatus;->CANCELLATION_PENDING:Lcom/evernote/edam/type/PremiumOrderStatus;

    new-instance v5, Lcom/evernote/edam/type/PremiumOrderStatus;

    const-string v6, "CANCELED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/evernote/edam/type/PremiumOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/evernote/edam/type/PremiumOrderStatus;->CANCELED:Lcom/evernote/edam/type/PremiumOrderStatus;

    filled-new-array/range {v0 .. v5}, [Lcom/evernote/edam/type/PremiumOrderStatus;

    move-result-object v0

    sput-object v0, Lcom/evernote/edam/type/PremiumOrderStatus;->$VALUES:[Lcom/evernote/edam/type/PremiumOrderStatus;

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

    iput p3, p0, Lcom/evernote/edam/type/PremiumOrderStatus;->value:I

    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/type/PremiumOrderStatus;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/evernote/edam/type/PremiumOrderStatus;->CANCELED:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/evernote/edam/type/PremiumOrderStatus;->CANCELLATION_PENDING:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/evernote/edam/type/PremiumOrderStatus;->FAILED:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0

    :cond_3
    sget-object p0, Lcom/evernote/edam/type/PremiumOrderStatus;->ACTIVE:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0

    :cond_4
    sget-object p0, Lcom/evernote/edam/type/PremiumOrderStatus;->PENDING:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0

    :cond_5
    sget-object p0, Lcom/evernote/edam/type/PremiumOrderStatus;->NONE:Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/type/PremiumOrderStatus;
    .locals 1

    const-class v0, Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object p0
.end method

.method public static values()[Lcom/evernote/edam/type/PremiumOrderStatus;
    .locals 1

    sget-object v0, Lcom/evernote/edam/type/PremiumOrderStatus;->$VALUES:[Lcom/evernote/edam/type/PremiumOrderStatus;

    invoke-virtual {v0}, [Lcom/evernote/edam/type/PremiumOrderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/type/PremiumOrderStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/type/PremiumOrderStatus;->value:I

    return p0
.end method
