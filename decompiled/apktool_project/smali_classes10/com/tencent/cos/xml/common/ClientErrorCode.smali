.class public final enum Lcom/tencent/cos/xml/common/ClientErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/common/ClientErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum ALREADY_FINISHED:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum BAD_REQUEST:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum DUPLICATE_TASK:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum ETAG_NOT_FOUND:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum INVALID_CREDENTIALS:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum IO_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum KMS_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum POOR_NETWORK:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum SERVERERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum SINK_SOURCE_NOT_FOUND:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum UNKNOWN:Lcom/tencent/cos/xml/common/ClientErrorCode;

.field public static final enum USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;


# instance fields
.field private code:I

.field private errorMsg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v1, -0x2710

    const-string v2, "Unknown Error"

    const-string v3, "UNKNOWN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->UNKNOWN:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v1, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v2, 0x2710

    const-string v3, "InvalidArgument"

    const-string v4, "INVALID_ARGUMENT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v2, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v3, 0x2711

    const-string v4, "InvalidCredentials"

    const-string v5, "INVALID_CREDENTIALS"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_CREDENTIALS:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v3, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v4, 0x2712

    const-string v5, "BadRequest"

    const-string v6, "BAD_REQUEST"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/xml/common/ClientErrorCode;->BAD_REQUEST:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v4, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v5, 0x2713

    const-string v6, "SinkSourceNotFound"

    const-string v7, "SINK_SOURCE_NOT_FOUND"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/tencent/cos/xml/common/ClientErrorCode;->SINK_SOURCE_NOT_FOUND:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v5, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v6, 0x2714

    const-string v7, "ETagNotFound"

    const-string v8, "ETAG_NOT_FOUND"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/tencent/cos/xml/common/ClientErrorCode;->ETAG_NOT_FOUND:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v6, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v7, 0x4e20

    const-string v8, "InternalError"

    const-string v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v7, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v8, 0x4e21

    const-string v9, "ServerError"

    const-string v10, "SERVERERROR"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/tencent/cos/xml/common/ClientErrorCode;->SERVERERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v8, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v9, 0x4e22

    const-string v10, "IOError"

    const-string v11, "IO_ERROR"

    const/16 v12, 0x8

    invoke-direct {v8, v11, v12, v9, v10}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/tencent/cos/xml/common/ClientErrorCode;->IO_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v9, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v10, 0x4e23

    const-string v11, "NetworkError"

    const-string v12, "POOR_NETWORK"

    const/16 v13, 0x9

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/tencent/cos/xml/common/ClientErrorCode;->POOR_NETWORK:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v10, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v11, 0x7530

    const-string v12, "UserCancelled"

    const-string v13, "USER_CANCELLED"

    const/16 v14, 0xa

    invoke-direct {v10, v13, v14, v11, v12}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v11, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v12, 0x7531

    const-string v13, "AlreadyFinished"

    const-string v14, "ALREADY_FINISHED"

    const/16 v15, 0xb

    invoke-direct {v11, v14, v15, v12, v13}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/tencent/cos/xml/common/ClientErrorCode;->ALREADY_FINISHED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v12, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const/16 v13, 0x7532

    const-string v14, "DuplicateTask"

    const-string v15, "DUPLICATE_TASK"

    move-object/from16 v16, v11

    const/16 v11, 0xc

    invoke-direct {v12, v15, v11, v13, v14}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/tencent/cos/xml/common/ClientErrorCode;->DUPLICATE_TASK:Lcom/tencent/cos/xml/common/ClientErrorCode;

    new-instance v13, Lcom/tencent/cos/xml/common/ClientErrorCode;

    const v11, 0x9c40

    const-string v14, "KMSError"

    const-string v15, "KMS_ERROR"

    move-object/from16 v17, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v11, v14}, Lcom/tencent/cos/xml/common/ClientErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/tencent/cos/xml/common/ClientErrorCode;->KMS_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    filled-new-array/range {v0 .. v13}, [Lcom/tencent/cos/xml/common/ClientErrorCode;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->$VALUES:[Lcom/tencent/cos/xml/common/ClientErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/cos/xml/common/ClientErrorCode;->code:I

    iput-object p4, p0, Lcom/tencent/cos/xml/common/ClientErrorCode;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static to(I)Lcom/tencent/cos/xml/common/ClientErrorCode;
    .locals 5

    invoke-static {}, Lcom/tencent/cos/xml/common/ClientErrorCode;->values()[Lcom/tencent/cos/xml/common/ClientErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/tencent/cos/xml/common/ClientErrorCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "not error code defined"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/common/ClientErrorCode;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/common/ClientErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/common/ClientErrorCode;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->$VALUES:[Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/common/ClientErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/common/ClientErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/common/ClientErrorCode;->code:I

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/common/ClientErrorCode;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/common/ClientErrorCode;->errorMsg:Ljava/lang/String;

    return-void
.end method
