.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusBrushType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

.field public static final enum HATCH_FILL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

.field public static final enum LINEAR_GRADIENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

.field public static final enum PATH_GRADIENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

.field public static final enum SOLID_COLOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

.field public static final enum TEXTURE_FILL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;


# instance fields
.field public final constructor:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v1, Lcom/sunia/HTREnginev2/amh;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/amh;-><init>()V

    const-string v2, "SOLID_COLOR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->SOLID_COLOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v2, Lcom/sunia/HTREnginev2/bmh;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/bmh;-><init>()V

    const-string v3, "HATCH_FILL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->HATCH_FILL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v3, Lcom/sunia/HTREnginev2/cmh;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/cmh;-><init>()V

    const-string v4, "TEXTURE_FILL"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v5, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->TEXTURE_FILL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v4, Lcom/sunia/HTREnginev2/dmh;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/dmh;-><init>()V

    const-string v5, "PATH_GRADIENT"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v6, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->PATH_GRADIENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    new-instance v5, Lcom/sunia/HTREnginev2/emh;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/emh;-><init>()V

    const-string v6, "LINEAR_GRADIENT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v7, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;-><init>(Ljava/lang/String;IILjava/util/function/Supplier;)V

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->LINEAR_GRADIENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->id:I

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->constructor:Ljava/util/function/Supplier;

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object v0
.end method
