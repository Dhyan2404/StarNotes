.class public final enum Lcom/fasterxml/uuid/UUIDType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/uuid/UUIDType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/uuid/UUIDType;

.field public static final enum DCE:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum FREE_FORM:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum NAME_BASED_MD5:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum NAME_BASED_SHA1:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum RANDOM_BASED:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum TIME_BASED:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum TIME_BASED_EPOCH:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum TIME_BASED_REORDERED:Lcom/fasterxml/uuid/UUIDType;

.field public static final enum UNKNOWN:Lcom/fasterxml/uuid/UUIDType;


# instance fields
.field private final _raw:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/fasterxml/uuid/UUIDType;

    const-string v1, "TIME_BASED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/uuid/UUIDType;->TIME_BASED:Lcom/fasterxml/uuid/UUIDType;

    new-instance v1, Lcom/fasterxml/uuid/UUIDType;

    const-string v4, "DCE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/fasterxml/uuid/UUIDType;->DCE:Lcom/fasterxml/uuid/UUIDType;

    new-instance v3, Lcom/fasterxml/uuid/UUIDType;

    const-string v4, "NAME_BASED_MD5"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/fasterxml/uuid/UUIDType;->NAME_BASED_MD5:Lcom/fasterxml/uuid/UUIDType;

    new-instance v4, Lcom/fasterxml/uuid/UUIDType;

    const-string v5, "RANDOM_BASED"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/fasterxml/uuid/UUIDType;->RANDOM_BASED:Lcom/fasterxml/uuid/UUIDType;

    new-instance v5, Lcom/fasterxml/uuid/UUIDType;

    const-string v6, "NAME_BASED_SHA1"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/fasterxml/uuid/UUIDType;->NAME_BASED_SHA1:Lcom/fasterxml/uuid/UUIDType;

    new-instance v6, Lcom/fasterxml/uuid/UUIDType;

    const-string v7, "TIME_BASED_REORDERED"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/fasterxml/uuid/UUIDType;->TIME_BASED_REORDERED:Lcom/fasterxml/uuid/UUIDType;

    new-instance v7, Lcom/fasterxml/uuid/UUIDType;

    const-string v8, "TIME_BASED_EPOCH"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/fasterxml/uuid/UUIDType;->TIME_BASED_EPOCH:Lcom/fasterxml/uuid/UUIDType;

    new-instance v8, Lcom/fasterxml/uuid/UUIDType;

    const-string v9, "FREE_FORM"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/fasterxml/uuid/UUIDType;->FREE_FORM:Lcom/fasterxml/uuid/UUIDType;

    new-instance v9, Lcom/fasterxml/uuid/UUIDType;

    const-string v10, "UNKNOWN"

    invoke-direct {v9, v10, v11, v2}, Lcom/fasterxml/uuid/UUIDType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/fasterxml/uuid/UUIDType;->UNKNOWN:Lcom/fasterxml/uuid/UUIDType;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    filled-new-array/range {v0 .. v8}, [Lcom/fasterxml/uuid/UUIDType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/uuid/UUIDType;->$VALUES:[Lcom/fasterxml/uuid/UUIDType;

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

    iput p3, p0, Lcom/fasterxml/uuid/UUIDType;->_raw:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/uuid/UUIDType;
    .locals 1

    const-class v0, Lcom/fasterxml/uuid/UUIDType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/uuid/UUIDType;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/uuid/UUIDType;
    .locals 1

    sget-object v0, Lcom/fasterxml/uuid/UUIDType;->$VALUES:[Lcom/fasterxml/uuid/UUIDType;

    invoke-virtual {v0}, [Lcom/fasterxml/uuid/UUIDType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/uuid/UUIDType;

    return-object v0
.end method


# virtual methods
.method public raw()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/uuid/UUIDType;->_raw:I

    return p0
.end method
