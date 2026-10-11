.class public final enum Lcom/tencent/cos/xml/common/Permission;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/common/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/common/Permission;

.field public static final enum FULL_CONTROL:Lcom/tencent/cos/xml/common/Permission;

.field public static final enum READ:Lcom/tencent/cos/xml/common/Permission;

.field public static final enum WRITE:Lcom/tencent/cos/xml/common/Permission;


# instance fields
.field private permission:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/cos/xml/common/Permission;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/tencent/cos/xml/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/common/Permission;->READ:Lcom/tencent/cos/xml/common/Permission;

    new-instance v1, Lcom/tencent/cos/xml/common/Permission;

    const-string v2, "WRITE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/tencent/cos/xml/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/common/Permission;->WRITE:Lcom/tencent/cos/xml/common/Permission;

    new-instance v2, Lcom/tencent/cos/xml/common/Permission;

    const-string v3, "FULL_CONTROL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/tencent/cos/xml/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/cos/xml/common/Permission;->FULL_CONTROL:Lcom/tencent/cos/xml/common/Permission;

    filled-new-array {v0, v1, v2}, [Lcom/tencent/cos/xml/common/Permission;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/common/Permission;->$VALUES:[Lcom/tencent/cos/xml/common/Permission;

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

    iput-object p3, p0, Lcom/tencent/cos/xml/common/Permission;->permission:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/tencent/cos/xml/common/Permission;
    .locals 5

    invoke-static {}, Lcom/tencent/cos/xml/common/Permission;->values()[Lcom/tencent/cos/xml/common/Permission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/tencent/cos/xml/common/Permission;->permission:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/common/Permission;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/common/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/common/Permission;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/common/Permission;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/common/Permission;->$VALUES:[Lcom/tencent/cos/xml/common/Permission;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/common/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/common/Permission;

    return-object v0
.end method


# virtual methods
.method public getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/common/Permission;->permission:Ljava/lang/String;

    return-object p0
.end method
