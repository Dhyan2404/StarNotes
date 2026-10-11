.class public final enum Lcom/couchbase/lite/internal/QueryLanguage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/QueryLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/QueryLanguage;

.field public static final enum JSON:Lcom/couchbase/lite/internal/QueryLanguage;

.field public static final enum N1QL:Lcom/couchbase/lite/internal/QueryLanguage;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/QueryLanguage;
    .locals 2

    sget-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->JSON:Lcom/couchbase/lite/internal/QueryLanguage;

    sget-object v1, Lcom/couchbase/lite/internal/QueryLanguage;->N1QL:Lcom/couchbase/lite/internal/QueryLanguage;

    filled-new-array {v0, v1}, [Lcom/couchbase/lite/internal/QueryLanguage;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/internal/QueryLanguage;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/couchbase/lite/internal/QueryLanguage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->JSON:Lcom/couchbase/lite/internal/QueryLanguage;

    new-instance v0, Lcom/couchbase/lite/internal/QueryLanguage;

    const-string v1, "N1QL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/couchbase/lite/internal/QueryLanguage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->N1QL:Lcom/couchbase/lite/internal/QueryLanguage;

    invoke-static {}, Lcom/couchbase/lite/internal/QueryLanguage;->$values()[Lcom/couchbase/lite/internal/QueryLanguage;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->$VALUES:[Lcom/couchbase/lite/internal/QueryLanguage;

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

    iput p3, p0, Lcom/couchbase/lite/internal/QueryLanguage;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/QueryLanguage;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/QueryLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/QueryLanguage;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/QueryLanguage;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->$VALUES:[Lcom/couchbase/lite/internal/QueryLanguage;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/QueryLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/QueryLanguage;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/QueryLanguage;->code:I

    return p0
.end method
