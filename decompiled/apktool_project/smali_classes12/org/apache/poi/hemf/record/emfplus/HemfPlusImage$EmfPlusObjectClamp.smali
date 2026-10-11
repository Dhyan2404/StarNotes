.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmfPlusObjectClamp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

.field public static final enum BitmapClamp:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

.field public static final enum RectClamp:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    const-string v1, "RectClamp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->RectClamp:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    const-string v2, "BitmapClamp"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->BitmapClamp:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    filled-new-array {v0, v1}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

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

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->id:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    return-object v0
.end method
