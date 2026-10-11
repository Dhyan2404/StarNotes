.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusLineStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

.field public static final enum CUSTOM:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

.field public static final enum DASH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

.field public static final enum DASH_DOT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

.field public static final enum DASH_DOT_DOT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

.field public static final enum DOT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

.field public static final enum SOLID:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->SOLID:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    const-string v2, "DASH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->DASH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    const-string v3, "DOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->DOT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    const-string v4, "DASH_DOT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->DASH_DOT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    new-instance v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    const-string v5, "DASH_DOT_DOT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->DASH_DOT_DOT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    new-instance v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    const-string v6, "CUSTOM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->CUSTOM:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

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

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->id:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    return-object v0
.end method
