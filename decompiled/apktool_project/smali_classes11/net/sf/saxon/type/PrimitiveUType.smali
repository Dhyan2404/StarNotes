.class public final enum Lnet/sf/saxon/type/PrimitiveUType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/type/PrimitiveUType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum ANY_URI:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum ATTRIBUTE:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum BASE64_BINARY:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum BOOLEAN:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum COMMENT:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum DATE:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum DATE_TIME:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum DECIMAL:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum DOCUMENT:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum DOUBLE:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum DURATION:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum ELEMENT:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum EXTENSION:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum FLOAT:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum FUNCTION:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum G_DAY:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum G_MONTH:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum G_MONTH_DAY:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum G_YEAR:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum G_YEAR_MONTH:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum HEX_BINARY:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum NAMESPACE:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum NOTATION:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum PI:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum QNAME:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum STRING:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum TEXT:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum TIME:Lnet/sf/saxon/type/PrimitiveUType;

.field public static final enum UNTYPED_ATOMIC:Lnet/sf/saxon/type/PrimitiveUType;


# instance fields
.field private final bit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    new-instance v1, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v0, v1

    const-string v2, "DOCUMENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/sf/saxon/type/PrimitiveUType;->DOCUMENT:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v2, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v1, v2

    const-string v3, "ELEMENT"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/sf/saxon/type/PrimitiveUType;->ELEMENT:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v3, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v2, v3

    const-string v4, "ATTRIBUTE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/sf/saxon/type/PrimitiveUType;->ATTRIBUTE:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v4, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v3, v4

    const-string v5, "TEXT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/sf/saxon/type/PrimitiveUType;->TEXT:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v5, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v4, v5

    const-string v6, "COMMENT"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/sf/saxon/type/PrimitiveUType;->COMMENT:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v6, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v5, v6

    const-string v7, "PI"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/sf/saxon/type/PrimitiveUType;->PI:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v7, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v6, v7

    const-string v8, "NAMESPACE"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/sf/saxon/type/PrimitiveUType;->NAMESPACE:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v8, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v7, v8

    const-string v9, "FUNCTION"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/sf/saxon/type/PrimitiveUType;->FUNCTION:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v9, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v8, v9

    const-string v10, "STRING"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/sf/saxon/type/PrimitiveUType;->STRING:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v10, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v9, v10

    const-string v11, "BOOLEAN"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/sf/saxon/type/PrimitiveUType;->BOOLEAN:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v11, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v10, v11

    const-string v12, "DECIMAL"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/sf/saxon/type/PrimitiveUType;->DECIMAL:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v12, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v11, v12

    const-string v13, "FLOAT"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/sf/saxon/type/PrimitiveUType;->FLOAT:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v13, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v12, v13

    const-string v14, "DOUBLE"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/sf/saxon/type/PrimitiveUType;->DOUBLE:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v14, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v13, v14

    const-string v15, "DURATION"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lnet/sf/saxon/type/PrimitiveUType;->DURATION:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v14, v0

    const-string v15, "DATE_TIME"

    move-object/from16 v30, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->DATE_TIME:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object v15, v0

    const-string v1, "TIME"

    move-object/from16 v31, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->TIME:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v16, v0

    const-string v1, "DATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->DATE:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v17, v0

    const-string v1, "G_YEAR_MONTH"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->G_YEAR_MONTH:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v18, v0

    const-string v1, "G_YEAR"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->G_YEAR:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v19, v0

    const-string v1, "G_MONTH_DAY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->G_MONTH_DAY:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v20, v0

    const-string v1, "G_DAY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->G_DAY:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v21, v0

    const-string v1, "G_MONTH"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->G_MONTH:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x16

    move-object/from16 v32, v3

    const-string v3, "HEX_BINARY"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->HEX_BINARY:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "BASE64_BINARY"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->BASE64_BINARY:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "ANY_URI"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->ANY_URI:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "QNAME"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->QNAME:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "NOTATION"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->NOTATION:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "UNTYPED_ATOMIC"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/PrimitiveUType;

    new-instance v0, Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const/16 v2, 0x1e

    const-string v3, "EXTENSION"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/type/PrimitiveUType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->EXTENSION:Lnet/sf/saxon/type/PrimitiveUType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    filled-new-array/range {v0 .. v28}, [Lnet/sf/saxon/type/PrimitiveUType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/PrimitiveUType;->$VALUES:[Lnet/sf/saxon/type/PrimitiveUType;

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

    iput p3, p0, Lnet/sf/saxon/type/PrimitiveUType;->bit:I

    return-void
.end method

.method public static forBit(I)Lnet/sf/saxon/type/PrimitiveUType;
    .locals 1

    invoke-static {}, Lnet/sf/saxon/type/PrimitiveUType;->values()[Lnet/sf/saxon/type/PrimitiveUType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/type/PrimitiveUType;
    .locals 1

    const-class v0, Lnet/sf/saxon/type/PrimitiveUType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/PrimitiveUType;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/type/PrimitiveUType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType;->$VALUES:[Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v0}, [Lnet/sf/saxon/type/PrimitiveUType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/PrimitiveUType;

    return-object v0
.end method


# virtual methods
.method public getBit()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/PrimitiveUType;->bit:I

    return p0
.end method

.method public toItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_8
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_9
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_a
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_b
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_c
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_d
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_e
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_f
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_10
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_11
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_12
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_13
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_14
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_15
    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :pswitch_17
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :pswitch_18
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :pswitch_19
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :pswitch_1a
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :pswitch_1b
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :pswitch_1c
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/PrimitiveUType$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "???"

    return-object p0

    :pswitch_0
    const-string p0, "external object"

    return-object p0

    :pswitch_1
    const-string p0, "untypedAtomic"

    return-object p0

    :pswitch_2
    const-string p0, "NOTATION"

    return-object p0

    :pswitch_3
    const-string p0, "QName"

    return-object p0

    :pswitch_4
    const-string p0, "anyURI"

    return-object p0

    :pswitch_5
    const-string p0, "base64Binary"

    return-object p0

    :pswitch_6
    const-string p0, "hexBinary"

    return-object p0

    :pswitch_7
    const-string p0, "gMoonth"

    return-object p0

    :pswitch_8
    const-string p0, "gDay"

    return-object p0

    :pswitch_9
    const-string p0, "gMonthDay"

    return-object p0

    :pswitch_a
    const-string p0, "gYear"

    return-object p0

    :pswitch_b
    const-string p0, "gYearMonth"

    return-object p0

    :pswitch_c
    const-string p0, "date"

    return-object p0

    :pswitch_d
    const-string p0, "time"

    return-object p0

    :pswitch_e
    const-string p0, "dateTime"

    return-object p0

    :pswitch_f
    const-string p0, "duration"

    return-object p0

    :pswitch_10
    const-string p0, "double"

    return-object p0

    :pswitch_11
    const-string p0, "float"

    return-object p0

    :pswitch_12
    const-string p0, "decimal"

    return-object p0

    :pswitch_13
    const-string p0, "boolean"

    return-object p0

    :pswitch_14
    const-string p0, "string"

    return-object p0

    :pswitch_15
    const-string p0, "function"

    return-object p0

    :pswitch_16
    const-string p0, "namespace"

    return-object p0

    :pswitch_17
    const-string p0, "processing-instruction"

    return-object p0

    :pswitch_18
    const-string p0, "comment"

    return-object p0

    :pswitch_19
    const-string p0, "text"

    return-object p0

    :pswitch_1a
    const-string p0, "attribute"

    return-object p0

    :pswitch_1b
    const-string p0, "element"

    return-object p0

    :pswitch_1c
    const-string p0, "document"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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

.method public toUType()Lnet/sf/saxon/type/UType;
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/UType;

    const/4 v1, 0x1

    iget p0, p0, Lnet/sf/saxon/type/PrimitiveUType;->bit:I

    shl-int p0, v1, p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/UType;-><init>(I)V

    return-object v0
.end method
