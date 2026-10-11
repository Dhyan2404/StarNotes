.class public final enum Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

.field public static final enum DOCUMENT:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

.field public static final enum LINES:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;


# instance fields
.field private final jsonType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    const-string v1, "DOCUMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->DOCUMENT:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    const-string v2, "LINES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->LINES:Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    filled-new-array {v0, v1}, [Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->$VALUES:[Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

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

    iput-object p3, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->jsonType:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;
    .locals 5

    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->values()[Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->$VALUES:[Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/JSONType;->jsonType:Ljava/lang/String;

    return-object p0
.end method
