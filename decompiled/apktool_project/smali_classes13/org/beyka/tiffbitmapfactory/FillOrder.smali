.class public final enum Lorg/beyka/tiffbitmapfactory/FillOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/FillOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/FillOrder;

.field public static final enum LSB2MSB:Lorg/beyka/tiffbitmapfactory/FillOrder;

.field public static final enum MSB2LSB:Lorg/beyka/tiffbitmapfactory/FillOrder;


# instance fields
.field final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/beyka/tiffbitmapfactory/FillOrder;

    const-string v1, "MSB2LSB"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/FillOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/FillOrder;->MSB2LSB:Lorg/beyka/tiffbitmapfactory/FillOrder;

    new-instance v1, Lorg/beyka/tiffbitmapfactory/FillOrder;

    const-string v2, "LSB2MSB"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/beyka/tiffbitmapfactory/FillOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/beyka/tiffbitmapfactory/FillOrder;->LSB2MSB:Lorg/beyka/tiffbitmapfactory/FillOrder;

    filled-new-array {v0, v1}, [Lorg/beyka/tiffbitmapfactory/FillOrder;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/FillOrder;->$VALUES:[Lorg/beyka/tiffbitmapfactory/FillOrder;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/FillOrder;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/FillOrder;
    .locals 1

    const-class v0, Lorg/beyka/tiffbitmapfactory/FillOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/FillOrder;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/FillOrder;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/FillOrder;->$VALUES:[Lorg/beyka/tiffbitmapfactory/FillOrder;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/FillOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/FillOrder;

    return-object v0
.end method
