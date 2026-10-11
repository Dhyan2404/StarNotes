.class public final enum Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/record/ExOleObjAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Subtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum CLIPART_GALLERY:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum DEFAULT:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum EQUATION:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum EXCEL:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum EXCEL_CHART:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum GRAPH:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum IMAGE:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum MEDIA_PLAYER:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum NOTEIT:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum ORGANIZATION_CHART:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum POWERPOINT_PRESENTATION:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum POWERPOINT_SLIDE:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum PROJECT:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum SOUND:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum WORDART:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

.field public static final enum WORD_TABLE:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->DEFAULT:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v1, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v2, "CLIPART_GALLERY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->CLIPART_GALLERY:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v2, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v3, "WORD_TABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->WORD_TABLE:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v3, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v4, "EXCEL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->EXCEL:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v4, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v5, "GRAPH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->GRAPH:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v5, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v6, "ORGANIZATION_CHART"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->ORGANIZATION_CHART:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v6, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v7, "EQUATION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->EQUATION:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v7, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v8, "WORDART"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->WORDART:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v8, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v9, "SOUND"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->SOUND:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v9, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v10, "IMAGE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->IMAGE:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v10, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v11, "POWERPOINT_PRESENTATION"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->POWERPOINT_PRESENTATION:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v11, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v12, "POWERPOINT_SLIDE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->POWERPOINT_SLIDE:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v12, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v13, "PROJECT"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->PROJECT:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v13, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v14, "NOTEIT"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->NOTEIT:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v14, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v15, "EXCEL_CHART"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->EXCEL_CHART:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    new-instance v15, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    const-string v13, "MEDIA_PLAYER"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->MEDIA_PLAYER:Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->$VALUES:[Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->$VALUES:[Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    return-object v0
.end method
