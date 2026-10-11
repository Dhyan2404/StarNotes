.class public final enum Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illuminant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

.field public static final enum D50:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

.field public static final enum D65:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;


# instance fields
.field private final whitePoint:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "D50"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->D50:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    new-instance v2, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v3, "D65"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;-><init>(Ljava/lang/String;I[F)V

    sput-object v2, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->D65:Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    filled-new-array {v0, v2}, [Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->$VALUES:[Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    return-void

    :array_0
    .array-data 4
        0x42c0d7a8
        0x42c80000    # 100.0f
        0x42a509a0
    .end array-data

    :array_1
    .array-data 4
        0x42be15f7    # 95.0429f
        0x42c80000    # 100.0f
        0x42d9c7ae    # 108.89f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    array-length p1, p3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Bad white point definition: %s"

    invoke-static {p1, p3, p2}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->whitePoint:[F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;
    .locals 1

    const-class v0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    return-object p0
.end method

.method public static values()[Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->$VALUES:[Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    invoke-virtual {v0}, [Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    return-object v0
.end method


# virtual methods
.method public getWhitePoint()[F
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->whitePoint:[F

    return-object p0
.end method
