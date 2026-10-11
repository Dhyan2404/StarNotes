.class public final enum Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hsmf/datatypes/NameIdChunks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredefinedPropertySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_ADDRESS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_AIR_SYNC:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_APPOINTMENT:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_ATTACHMENT:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_COMMON:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_LOG:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_MEETING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_MESSAGING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_NOTE:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_POST_RSS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_SHARING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_TASK:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_UNIFIED_MESSAGING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

.field public static final enum PSETID_XML_EXTRACTED_ENTITIES:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;


# instance fields
.field private final classID:Lorg/apache/poi/hpsf/ClassID;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v1, 0x0

    const-string v2, "00062008-0000-0000-C000-000000000046"

    const-string v3, "PSETID_COMMON"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_COMMON:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v1, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v2, 0x1

    const-string v3, "00062004-0000-0000-C000-000000000046"

    const-string v4, "PSETID_ADDRESS"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_ADDRESS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v2, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v3, 0x2

    const-string v4, "00062002-0000-0000-C000-000000000046"

    const-string v5, "PSETID_APPOINTMENT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_APPOINTMENT:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v3, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v4, 0x3

    const-string v5, "6ED8DA90-450B-101B-98DA-00AA003F1305"

    const-string v6, "PSETID_MEETING"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_MEETING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v4, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v5, 0x4

    const-string v6, "0006200A-0000-0000-C000-000000000046"

    const-string v7, "PSETID_LOG"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_LOG:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v5, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v6, 0x5

    const-string v7, "41F28F13-83F4-4114-A584-EEDB5A6B0BFF"

    const-string v8, "PSETID_MESSAGING"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_MESSAGING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v6, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v7, 0x6

    const-string v8, "0006200E-0000-0000-C000-000000000046"

    const-string v9, "PSETID_NOTE"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_NOTE:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v7, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/4 v8, 0x7

    const-string v9, "00062041-0000-0000-C000-000000000046"

    const-string v10, "PSETID_POST_RSS"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_POST_RSS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v8, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/16 v9, 0x8

    const-string v10, "00062003-0000-0000-C000-000000000046"

    const-string v11, "PSETID_TASK"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_TASK:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v9, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/16 v10, 0x9

    const-string v11, "4442858E-A9E3-4E80-B900-317A210CC15B"

    const-string v12, "PSETID_UNIFIED_MESSAGING"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_UNIFIED_MESSAGING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v10, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/16 v11, 0xa

    const-string v12, "71035549-0739-4DCB-9163-00F0580DBBDF"

    const-string v13, "PSETID_AIR_SYNC"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_AIR_SYNC:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v11, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/16 v12, 0xb

    const-string v13, "00062040-0000-0000-C000-000000000046"

    const-string v14, "PSETID_SHARING"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_SHARING:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v12, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/16 v13, 0xc

    const-string v14, "23239608-685D-4732-9C55-4C95CB4E8E33"

    const-string v15, "PSETID_XML_EXTRACTED_ENTITIES"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_XML_EXTRACTED_ENTITIES:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    new-instance v13, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    const/16 v14, 0xd

    const-string v15, "96357F7F-59E1-47D0-99A7-46515C183B54"

    move-object/from16 v16, v12

    const-string v12, "PSETID_ATTACHMENT"

    invoke-direct {v13, v12, v14, v15}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->PSETID_ATTACHMENT:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    move-object/from16 v12, v16

    filled-new-array/range {v0 .. v13}, [Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->$VALUES:[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

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

    new-instance p1, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {p1, p3}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;
    .locals 1

    const-class v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;
    .locals 1

    sget-object v0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->$VALUES:[Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    invoke-virtual {v0}, [Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;

    return-object v0
.end method


# virtual methods
.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method
