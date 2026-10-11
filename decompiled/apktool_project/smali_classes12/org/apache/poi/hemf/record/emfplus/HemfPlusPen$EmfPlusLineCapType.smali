.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusLineCapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum ANCHOR_MASK:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum ARROW_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum CUSTOM:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum DIAMOND_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum FLAT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum NO_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum ROUND:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum ROUND_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum SQUARE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum SQUARE_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field public static final enum TRIANGLE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const-string v1, "FLAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->FLAT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const-string v2, "SQUARE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->SQUARE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const-string v3, "ROUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->ROUND:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const-string v4, "TRIANGLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->TRIANGLE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const/4 v5, 0x4

    const/16 v6, 0x10

    const-string v7, "NO_ANCHOR"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->NO_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const/4 v6, 0x5

    const/16 v7, 0x11

    const-string v8, "SQUARE_ANCHOR"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->SQUARE_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const/4 v7, 0x6

    const/16 v8, 0x12

    const-string v9, "ROUND_ANCHOR"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->ROUND_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const/4 v8, 0x7

    const/16 v9, 0x13

    const-string v10, "DIAMOND_ANCHOR"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->DIAMOND_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const/16 v9, 0x8

    const/16 v10, 0x14

    const-string v11, "ARROW_ANCHOR"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->ARROW_ANCHOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v9, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const/16 v10, 0x9

    const/16 v11, 0xf0

    const-string v12, "ANCHOR_MASK"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->ANCHOR_MASK:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    new-instance v10, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    const/16 v11, 0xa

    const/16 v12, 0xff

    const-string v13, "CUSTOM"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->CUSTOM:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    filled-new-array/range {v0 .. v10}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

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

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->id:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    return-object v0
.end method
