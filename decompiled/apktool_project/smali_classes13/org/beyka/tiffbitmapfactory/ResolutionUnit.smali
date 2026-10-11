.class public final enum Lorg/beyka/tiffbitmapfactory/ResolutionUnit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/ResolutionUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

.field public static final enum CENTIMETER:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

.field public static final enum INCH:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

.field public static final enum NONE:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;


# instance fields
.field final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->NONE:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    new-instance v1, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    const-string v2, "INCH"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->INCH:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    new-instance v2, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    const-string v3, "CENTIMETER"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->CENTIMETER:Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    filled-new-array {v0, v1, v2}, [Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->$VALUES:[Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/ResolutionUnit;
    .locals 1

    const-class v0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/ResolutionUnit;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->$VALUES:[Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/ResolutionUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/ResolutionUnit;

    return-object v0
.end method
