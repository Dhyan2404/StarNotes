.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum BRUSH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum CUSTOM_LINE_CAP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum FONT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum IMAGE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum IMAGE_ATTRIBUTES:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum INVALID:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum PATH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum PEN:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum REGION:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

.field public static final enum STRING_FORMAT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;


# instance fields
.field public final constructor:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v1, Lcom/sunia/HTREnginev2/crh;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/crh;-><init>()V

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->INVALID:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v2, Lcom/sunia/HTREnginev2/drh;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/drh;-><init>()V

    const-string v3, "BRUSH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->BRUSH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v3, Lcom/sunia/HTREnginev2/erh;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/erh;-><init>()V

    const-string v4, "PEN"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v5, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->PEN:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v4, Lcom/sunia/HTREnginev2/frh;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/frh;-><init>()V

    const-string v5, "PATH"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v6, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->PATH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v5, Lcom/sunia/HTREnginev2/grh;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/grh;-><init>()V

    const-string v6, "REGION"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v7, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->REGION:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v6, Lcom/sunia/HTREnginev2/hrh;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/hrh;-><init>()V

    const-string v7, "IMAGE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v8, v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->IMAGE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v7, Lcom/sunia/HTREnginev2/irh;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/irh;-><init>()V

    const-string v8, "FONT"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v9, v7}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->FONT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v8, Lcom/sunia/HTREnginev2/crh;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/crh;-><init>()V

    const-string v9, "STRING_FORMAT"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v10, v8}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->STRING_FORMAT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v9, Lcom/sunia/HTREnginev2/jrh;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/jrh;-><init>()V

    const-string v10, "IMAGE_ATTRIBUTES"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v11, v9}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v8, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->IMAGE_ATTRIBUTES:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v9, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    new-instance v10, Lcom/sunia/HTREnginev2/crh;

    invoke-direct {v10}, Lcom/sunia/HTREnginev2/crh;-><init>()V

    const-string v11, "CUSTOM_LINE_CAP"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v12, v10}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v9, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->CUSTOM_LINE_CAP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->id:I

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->constructor:Ljava/util/function/Supplier;

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object v0
.end method
