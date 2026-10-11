.class public final enum Lcom/evernote/edam/error/EDAMErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/edam/error/EDAMErrorCode;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum AUTH_EXPIRED:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum BAD_DATA_FORMAT:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum DATA_CONFLICT:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum DATA_REQUIRED:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum ENML_VALIDATION:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum INVALID_AUTH:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum LEN_TOO_LONG:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum LEN_TOO_SHORT:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum PERMISSION_DENIED:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum QUOTA_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum RATE_LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum SHARD_UNAVAILABLE:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum TAKEN_DOWN:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum TOO_FEW:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum TOO_MANY:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum UNKNOWN:Lcom/evernote/edam/error/EDAMErrorCode;

.field public static final enum UNSUPPORTED_OPERATION:Lcom/evernote/edam/error/EDAMErrorCode;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    new-instance v1, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v0, v1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->UNKNOWN:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v2, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v1, v2

    const-string v3, "BAD_DATA_FORMAT"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/evernote/edam/error/EDAMErrorCode;->BAD_DATA_FORMAT:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v3, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v2, v3

    const-string v4, "PERMISSION_DENIED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/evernote/edam/error/EDAMErrorCode;->PERMISSION_DENIED:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v4, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v3, v4

    const-string v5, "INTERNAL_ERROR"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/evernote/edam/error/EDAMErrorCode;->INTERNAL_ERROR:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v5, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v4, v5

    const-string v6, "DATA_REQUIRED"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/evernote/edam/error/EDAMErrorCode;->DATA_REQUIRED:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v6, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v5, v6

    const-string v7, "LIMIT_REACHED"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/evernote/edam/error/EDAMErrorCode;->LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v7, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v6, v7

    const-string v8, "QUOTA_REACHED"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/evernote/edam/error/EDAMErrorCode;->QUOTA_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v8, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v7, v8

    const-string v9, "INVALID_AUTH"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/evernote/edam/error/EDAMErrorCode;->INVALID_AUTH:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v9, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v8, v9

    const-string v10, "AUTH_EXPIRED"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v11, v12}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/evernote/edam/error/EDAMErrorCode;->AUTH_EXPIRED:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v10, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v9, v10

    const-string v11, "DATA_CONFLICT"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/evernote/edam/error/EDAMErrorCode;->DATA_CONFLICT:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v11, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v10, v11

    const-string v12, "ENML_VALIDATION"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v13, v14}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/evernote/edam/error/EDAMErrorCode;->ENML_VALIDATION:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v12, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v11, v12

    const-string v13, "SHARD_UNAVAILABLE"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v14, v15}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/evernote/edam/error/EDAMErrorCode;->SHARD_UNAVAILABLE:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v13, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v12, v13

    const-string v14, "LEN_TOO_SHORT"

    move-object/from16 v19, v0

    const/16 v0, 0xd

    invoke-direct {v13, v14, v15, v0}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/evernote/edam/error/EDAMErrorCode;->LEN_TOO_SHORT:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v14, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v13, v14

    const-string v15, "LEN_TOO_LONG"

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v14, v15, v0, v1}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/evernote/edam/error/EDAMErrorCode;->LEN_TOO_LONG:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v0, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v14, v0

    const-string v15, "TOO_FEW"

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-direct {v0, v15, v1, v2}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->TOO_FEW:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v0, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object v15, v0

    const-string v1, "TOO_MANY"

    move-object/from16 v22, v3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->TOO_MANY:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v0, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object/from16 v16, v0

    const-string v1, "UNSUPPORTED_OPERATION"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->UNSUPPORTED_OPERATION:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v0, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object/from16 v17, v0

    const-string v1, "TAKEN_DOWN"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->TAKEN_DOWN:Lcom/evernote/edam/error/EDAMErrorCode;

    new-instance v0, Lcom/evernote/edam/error/EDAMErrorCode;

    move-object/from16 v18, v0

    const-string v1, "RATE_LIMIT_REACHED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/edam/error/EDAMErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->RATE_LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    filled-new-array/range {v0 .. v18}, [Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object v0

    sput-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->$VALUES:[Lcom/evernote/edam/error/EDAMErrorCode;

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

    iput p3, p0, Lcom/evernote/edam/error/EDAMErrorCode;->value:I

    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/error/EDAMErrorCode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->RATE_LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->TAKEN_DOWN:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->UNSUPPORTED_OPERATION:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->TOO_MANY:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->TOO_FEW:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->LEN_TOO_LONG:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->LEN_TOO_SHORT:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->SHARD_UNAVAILABLE:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->ENML_VALIDATION:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->DATA_CONFLICT:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->AUTH_EXPIRED:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->INVALID_AUTH:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->QUOTA_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->DATA_REQUIRED:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->INTERNAL_ERROR:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->PERMISSION_DENIED:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->BAD_DATA_FORMAT:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/evernote/edam/error/EDAMErrorCode;->UNKNOWN:Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/error/EDAMErrorCode;
    .locals 1

    const-class v0, Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/error/EDAMErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/evernote/edam/error/EDAMErrorCode;
    .locals 1

    sget-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->$VALUES:[Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-virtual {v0}, [Lcom/evernote/edam/error/EDAMErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/error/EDAMErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/error/EDAMErrorCode;->value:I

    return p0
.end method
