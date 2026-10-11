.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusDashedLineCapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

.field public static final enum FLAT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

.field public static final enum ROUND:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

.field public static final enum TRIANGLE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    const-string v1, "FLAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->FLAT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    const-string v2, "ROUND"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->ROUND:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    const-string v3, "TRIANGLE"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->TRIANGLE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

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

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->id:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    return-object v0
.end method
