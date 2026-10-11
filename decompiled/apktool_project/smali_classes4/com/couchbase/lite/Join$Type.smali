.class final enum Lcom/couchbase/lite/Join$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Join;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/Join$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/Join$Type;

.field public static final enum CROSS:Lcom/couchbase/lite/Join$Type;

.field public static final enum INNER:Lcom/couchbase/lite/Join$Type;

.field public static final enum LEFT_OUTER:Lcom/couchbase/lite/Join$Type;


# instance fields
.field private final tag:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/Join$Type;
    .locals 3

    sget-object v0, Lcom/couchbase/lite/Join$Type;->INNER:Lcom/couchbase/lite/Join$Type;

    sget-object v1, Lcom/couchbase/lite/Join$Type;->LEFT_OUTER:Lcom/couchbase/lite/Join$Type;

    sget-object v2, Lcom/couchbase/lite/Join$Type;->CROSS:Lcom/couchbase/lite/Join$Type;

    filled-new-array {v0, v1, v2}, [Lcom/couchbase/lite/Join$Type;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/couchbase/lite/Join$Type;

    const-string v1, "INNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/couchbase/lite/Join$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Join$Type;->INNER:Lcom/couchbase/lite/Join$Type;

    new-instance v0, Lcom/couchbase/lite/Join$Type;

    const/4 v1, 0x1

    const-string v2, "LEFT OUTER"

    const-string v3, "LEFT_OUTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/couchbase/lite/Join$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Join$Type;->LEFT_OUTER:Lcom/couchbase/lite/Join$Type;

    new-instance v0, Lcom/couchbase/lite/Join$Type;

    const-string v1, "CROSS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/couchbase/lite/Join$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Join$Type;->CROSS:Lcom/couchbase/lite/Join$Type;

    invoke-static {}, Lcom/couchbase/lite/Join$Type;->$values()[Lcom/couchbase/lite/Join$Type;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/Join$Type;->$VALUES:[Lcom/couchbase/lite/Join$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/couchbase/lite/Join$Type;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/Join$Type;
    .locals 1

    const-class v0, Lcom/couchbase/lite/Join$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Join$Type;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/Join$Type;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/Join$Type;->$VALUES:[Lcom/couchbase/lite/Join$Type;

    invoke-virtual {v0}, [Lcom/couchbase/lite/Join$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/Join$Type;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Join$Type;->tag:Ljava/lang/String;

    return-object p0
.end method
