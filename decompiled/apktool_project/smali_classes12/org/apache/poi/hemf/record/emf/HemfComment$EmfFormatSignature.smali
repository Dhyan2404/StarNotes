.class public final enum Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfFormatSignature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

.field public static final enum ENHMETA_SIGNATURE:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

.field public static final enum EPS_SIGNATURE:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;


# instance fields
.field id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    const/4 v1, 0x0

    const v2, 0x464d4520

    const-string v3, "ENHMETA_SIGNATURE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->ENHMETA_SIGNATURE:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    new-instance v1, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    const/4 v2, 0x1

    const v3, 0x46535045

    const-string v4, "EPS_SIGNATURE"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->EPS_SIGNATURE:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    filled-new-array {v0, v1}, [Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

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

    iput p3, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->id:I

    return-void
.end method

.method public static getById(I)Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;
    .locals 5

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->values()[Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;
    .locals 1

    const-class v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    return-object v0
.end method
