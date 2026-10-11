.class public final enum Lcom/alibaba/fastjson2/JSONValidator$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/JSONValidator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/JSONValidator$Type;

.field public static final enum Array:Lcom/alibaba/fastjson2/JSONValidator$Type;

.field public static final enum Object:Lcom/alibaba/fastjson2/JSONValidator$Type;

.field public static final enum Value:Lcom/alibaba/fastjson2/JSONValidator$Type;


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/JSONValidator$Type;
    .locals 3

    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Object:Lcom/alibaba/fastjson2/JSONValidator$Type;

    sget-object v1, Lcom/alibaba/fastjson2/JSONValidator$Type;->Array:Lcom/alibaba/fastjson2/JSONValidator$Type;

    sget-object v2, Lcom/alibaba/fastjson2/JSONValidator$Type;->Value:Lcom/alibaba/fastjson2/JSONValidator$Type;

    filled-new-array {v0, v1, v2}, [Lcom/alibaba/fastjson2/JSONValidator$Type;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator$Type;

    const-string v1, "Object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONValidator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Object:Lcom/alibaba/fastjson2/JSONValidator$Type;

    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator$Type;

    const-string v1, "Array"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONValidator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Array:Lcom/alibaba/fastjson2/JSONValidator$Type;

    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator$Type;

    const-string v1, "Value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONValidator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Value:Lcom/alibaba/fastjson2/JSONValidator$Type;

    invoke-static {}, Lcom/alibaba/fastjson2/JSONValidator$Type;->$values()[Lcom/alibaba/fastjson2/JSONValidator$Type;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->$VALUES:[Lcom/alibaba/fastjson2/JSONValidator$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONValidator$Type;
    .locals 1

    const-class v0, Lcom/alibaba/fastjson2/JSONValidator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONValidator$Type;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/JSONValidator$Type;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->$VALUES:[Lcom/alibaba/fastjson2/JSONValidator$Type;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/JSONValidator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/JSONValidator$Type;

    return-object v0
.end method
