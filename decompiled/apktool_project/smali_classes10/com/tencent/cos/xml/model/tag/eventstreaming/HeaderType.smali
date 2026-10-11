.class public final enum Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum BYTE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum BYTE_ARRAY:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum FALSE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum INTEGER:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum LONG:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum SHORT:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum STRING:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum TIMESTAMP:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum TRUE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

.field public static final enum UUID:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;


# instance fields
.field final headerTypeId:B


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->TRUE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v1, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v2, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->FALSE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v2, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v3, "BYTE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->BYTE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v3, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v4, "SHORT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->SHORT:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v4, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v5, "INTEGER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->INTEGER:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v5, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v6, "LONG"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->LONG:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v6, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v7, "BYTE_ARRAY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->BYTE_ARRAY:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v7, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v8, "STRING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->STRING:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v8, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v9, "TIMESTAMP"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->TIMESTAMP:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    new-instance v9, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    const-string v10, "UUID"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->UUID:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    filled-new-array/range {v0 .. v9}, [Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->$VALUES:[Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

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

    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->headerTypeId:B

    return-void
.end method

.method public static fromTypeId(B)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unknown headerTypeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->UUID:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->TIMESTAMP:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->STRING:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->BYTE_ARRAY:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->LONG:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->INTEGER:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->SHORT:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->BYTE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->FALSE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->TRUE:Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;
    .locals 1

    const-class v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->$VALUES:[Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    invoke-virtual {v0}, [Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/xml/model/tag/eventstreaming/HeaderType;

    return-object v0
.end method
