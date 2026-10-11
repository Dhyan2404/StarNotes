.class public final enum Lorg/apache/xmlbeans/XmlOptions$BeanMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/XmlOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BeanMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/xmlbeans/XmlOptions$BeanMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum ADD:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum ADD_NEW:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum GET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum GET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum GET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum INSERT_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum INSERT_NEW_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum INSTANCE_TYPE:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum IS_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum IS_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum IS_SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum REMOVE_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum SET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum SET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum SET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum SET_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum SET_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum SIZE_OF_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum UNSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum XGET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum XGET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum XGET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum XGET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum XSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum XSET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

.field public static final enum XSET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v0, v1

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v1, v2

    const-string v3, "XGET"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v3, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v2, v3

    const-string v4, "IS_SET"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v3, v4

    const-string v5, "IS_NIL"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v5, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v4, v5

    const-string v6, "IS_NIL_IDX"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->IS_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v6, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v5, v6

    const-string v7, "SET"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v7, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v6, v7

    const-string v8, "SET_NIL"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_NIL:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v8, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v7, v8

    const-string v9, "SET_NIL_IDX"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_NIL_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v9, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v8, v9

    const-string v10, "XSET"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v10, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v9, v10

    const-string v11, "UNSET"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->UNSET:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v11, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v10, v11

    const-string v12, "GET_ARRAY"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v12, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v11, v12

    const-string v13, "XGET_ARRAY"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v12, v13

    const-string v14, "GET_IDX"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v14, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v13, v14

    const-string v15, "XGET_IDX"

    move-object/from16 v28, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v14, v0

    const-string v15, "XSET_ARRAY"

    move-object/from16 v29, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object v15, v0

    const-string v1, "XSET_IDX"

    move-object/from16 v30, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XSET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v16, v0

    const-string v1, "SIZE_OF_ARRAY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SIZE_OF_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v17, v0

    const-string v1, "SET_ARRAY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_ARRAY:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v18, v0

    const-string v1, "SET_IDX"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v19, v0

    const-string v1, "INSERT_IDX"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v20, v0

    const-string v1, "INSERT_NEW_IDX"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSERT_NEW_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v21, v0

    const-string v1, "ADD"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v22, v0

    const-string v1, "ADD_NEW"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->ADD_NEW:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v23, v0

    const-string v1, "REMOVE_IDX"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->REMOVE_IDX:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v24, v0

    const-string v1, "GET_LIST"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->GET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v25, v0

    const-string v1, "XGET_LIST"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->XGET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v26, v0

    const-string v1, "SET_LIST"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->SET_LIST:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v27, v0

    const-string v1, "INSTANCE_TYPE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->INSTANCE_TYPE:Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    filled-new-array/range {v0 .. v27}, [Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->$VALUES:[Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions$BeanMethod;
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    return-object p0
.end method

.method public static values()[Lorg/apache/xmlbeans/XmlOptions$BeanMethod;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->$VALUES:[Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    invoke-virtual {v0}, [Lorg/apache/xmlbeans/XmlOptions$BeanMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/XmlOptions$BeanMethod;

    return-object v0
.end method
