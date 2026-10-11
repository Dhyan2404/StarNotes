.class final enum Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFTextShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HSLFTextAnchor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum BOTTOM:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum BOTTOM_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum BOTTOM_CENTER:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum BOTTOM_CENTER_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum MIDDLE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum MIDDLE_CENTER:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum TOP:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum TOP_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum TOP_CENTER:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

.field public static final enum TOP_CENTER_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;


# instance fields
.field public final baseline:Ljava/lang/Boolean;

.field public final centered:Z

.field public final nativeId:I

.field public final vAlign:Lorg/apache/poi/sl/usermodel/VerticalAlignment;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v7, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v1, "TOP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v15, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    const/4 v5, 0x0

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v7

    move-object v4, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v7, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->TOP:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v9, "MIDDLE"

    const/4 v10, 0x1

    const/4 v11, 0x1

    sget-object v0, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->MIDDLE:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    const/4 v13, 0x0

    move-object v8, v1

    move-object v12, v0

    move-object/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->MIDDLE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v9, "BOTTOM"

    const/4 v10, 0x2

    const/4 v11, 0x2

    sget-object v3, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-object v8, v2

    move-object v12, v3

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v2, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->BOTTOM:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v9, "TOP_CENTER"

    const/4 v10, 0x3

    const/4 v11, 0x3

    const/4 v13, 0x1

    move-object v8, v4

    move-object v12, v15

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v4, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->TOP_CENTER:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v5, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v9, "MIDDLE_CENTER"

    const/4 v10, 0x4

    const/4 v11, 0x4

    move-object v8, v5

    move-object v12, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v5, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->MIDDLE_CENTER:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v6, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v9, "BOTTOM_CENTER"

    const/4 v10, 0x5

    const/4 v11, 0x5

    move-object v8, v6

    move-object v12, v3

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v6, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->BOTTOM_CENTER:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v16, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v9, "TOP_BASELINE"

    const/4 v10, 0x6

    const/4 v11, 0x6

    const/4 v13, 0x0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v8, v16

    move-object v12, v15

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v16, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->TOP_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v24, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v18, "BOTTOM_BASELINE"

    const/16 v19, 0x7

    const/16 v20, 0x7

    const/16 v22, 0x0

    move-object/from16 v17, v24

    move-object/from16 v21, v3

    move-object/from16 v23, v0

    invoke-direct/range {v17 .. v23}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v24, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->BOTTOM_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v25, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v9, "TOP_CENTER_BASELINE"

    const/16 v10, 0x8

    const/16 v11, 0x8

    const/4 v13, 0x1

    move-object/from16 v8, v25

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v25, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->TOP_CENTER_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    new-instance v9, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    const-string v18, "BOTTOM_CENTER_BASELINE"

    const/16 v19, 0x9

    const/16 v20, 0x9

    const/16 v22, 0x1

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;-><init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V

    sput-object v9, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->BOTTOM_CENTER_BASELINE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-object v0, v7

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v24

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/apache/poi/sl/usermodel/VerticalAlignment;ZLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/sl/usermodel/VerticalAlignment;",
            "Z",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->nativeId:I

    iput-object p4, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->vAlign:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    iput-boolean p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->centered:Z

    iput-object p6, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->baseline:Ljava/lang/Boolean;

    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;
    .locals 5

    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->values()[Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    return-object v0
.end method
