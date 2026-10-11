.class public final enum Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/record/SlideAtomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlideLayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum BIG_OBJECT:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum BLANK_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum COLUMN_TWO_ROWS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum FOUR_OBJECTS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum HANDOUT:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum MASTER_NOTES:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum MASTER_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum MASTER_TITLE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum NOTES_TITLE_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TITLE_2_ROW_BOTTOM_2_COLUMN_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TITLE_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TITLE_ONLY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TITLE_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TWO_COLUMNS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TWO_COLUMNS_ROW:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TWO_ROWS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum TWO_ROWS_COLUMN:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum VERTICAL_TITLE_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

.field public static final enum VERTICAL_TWO_ROWS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;


# instance fields
.field private nativeId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v1, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v0, v1

    const-string v2, "TITLE_SLIDE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v2, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v1, v2

    const-string v3, "TITLE_BODY"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v3, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v2, v3

    const-string v4, "MASTER_TITLE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->MASTER_TITLE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v4, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v3, v4

    const-string v5, "MASTER_SLIDE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->MASTER_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v5, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v4, v5

    const-string v6, "MASTER_NOTES"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->MASTER_NOTES:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v6, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v5, v6

    const-string v7, "NOTES_TITLE_BODY"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->NOTES_TITLE_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v7, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v6, v7

    const-string v8, "HANDOUT"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->HANDOUT:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v8, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v7, v8

    const-string v9, "TITLE_ONLY"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_ONLY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v9, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v8, v9

    const-string v10, "TWO_COLUMNS"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TWO_COLUMNS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v10, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v9, v10

    const-string v11, "TWO_ROWS"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TWO_ROWS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v11, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v10, v11

    const-string v12, "COLUMN_TWO_ROWS"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->COLUMN_TWO_ROWS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v12, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v11, v12

    const-string v13, "TWO_ROWS_COLUMN"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TWO_ROWS_COLUMN:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v13, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v12, v13

    const-string v14, "TITLE_2_ROW_BOTTOM_2_COLUMN_BODY"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_2_ROW_BOTTOM_2_COLUMN_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v14, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v13, v14

    const-string v15, "TWO_COLUMNS_ROW"

    move-object/from16 v19, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TWO_COLUMNS_ROW:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v14, v0

    const-string v15, "FOUR_OBJECTS"

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->FOUR_OBJECTS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object v15, v0

    const-string v1, "BIG_OBJECT"

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->BIG_OBJECT:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object/from16 v16, v0

    const-string v1, "BLANK_SLIDE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->BLANK_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object/from16 v17, v0

    const-string v1, "VERTICAL_TITLE_BODY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->VERTICAL_TITLE_BODY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    new-instance v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object/from16 v18, v0

    const-string v1, "VERTICAL_TWO_ROWS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->VERTICAL_TWO_ROWS:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    filled-new-array/range {v0 .. v18}, [Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->$VALUES:[Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

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

    iput p3, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->nativeId:I

    return-void
.end method

.method public static forNativeID(I)Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->values()[Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->$VALUES:[Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    return-object v0
.end method


# virtual methods
.method public getNativeId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->nativeId:I

    return p0
.end method
