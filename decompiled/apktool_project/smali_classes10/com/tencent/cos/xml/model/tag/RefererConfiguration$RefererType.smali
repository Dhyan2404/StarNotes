.class public final enum Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/RefererConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefererType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

.field public static final enum Black:Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

.field public static final enum White:Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    const/4 v1, 0x0

    const-string v2, "Black-List"

    const-string v3, "Black"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->Black:Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    const/4 v2, 0x1

    const-string v3, "White-List"

    const-string v4, "White"

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->White:Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    filled-new-array {v0, v1}, [Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->$VALUES:[Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;
    .locals 5

    invoke-static {}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->values()[Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->getTypeStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->$VALUES:[Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    return-object v0
.end method


# virtual methods
.method public getTypeStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->type:Ljava/lang/String;

    return-object p0
.end method
