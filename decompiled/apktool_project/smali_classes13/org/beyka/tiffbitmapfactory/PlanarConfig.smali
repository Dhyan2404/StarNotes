.class public final enum Lorg/beyka/tiffbitmapfactory/PlanarConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/PlanarConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/PlanarConfig;

.field public static final enum CONTIG:Lorg/beyka/tiffbitmapfactory/PlanarConfig;

.field public static final enum SEPARATE:Lorg/beyka/tiffbitmapfactory/PlanarConfig;


# instance fields
.field final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    const-string v1, "CONTIG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/PlanarConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/PlanarConfig;->CONTIG:Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    new-instance v1, Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    const-string v2, "SEPARATE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/beyka/tiffbitmapfactory/PlanarConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/beyka/tiffbitmapfactory/PlanarConfig;->SEPARATE:Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    filled-new-array {v0, v1}, [Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/PlanarConfig;->$VALUES:[Lorg/beyka/tiffbitmapfactory/PlanarConfig;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/PlanarConfig;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/PlanarConfig;
    .locals 1

    const-class v0, Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/PlanarConfig;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/PlanarConfig;->$VALUES:[Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/PlanarConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/PlanarConfig;

    return-object v0
.end method
