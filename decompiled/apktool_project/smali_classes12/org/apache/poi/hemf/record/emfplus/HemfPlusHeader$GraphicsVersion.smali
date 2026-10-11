.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphicsVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

.field public static final enum V1:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

.field public static final enum V1_1:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    const-string v1, "V1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->V1:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    const-string v2, "V1_1"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->V1_1:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    filled-new-array {v0, v1}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

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

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->id:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;

    return-object v0
.end method
