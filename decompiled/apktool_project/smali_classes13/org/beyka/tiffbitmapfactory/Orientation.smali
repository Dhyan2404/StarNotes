.class public final enum Lorg/beyka/tiffbitmapfactory/Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum BOT_LEFT:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum BOT_RIGHT:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum LEFT_BOT:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum LEFT_TOP:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum RIGHT_BOT:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum RIGHT_TOP:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum TOP_LEFT:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum TOP_RIGHT:Lorg/beyka/tiffbitmapfactory/Orientation;

.field public static final enum UNAVAILABLE:Lorg/beyka/tiffbitmapfactory/Orientation;


# instance fields
.field final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/Orientation;->TOP_LEFT:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v1, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v4, "TOP_RIGHT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/beyka/tiffbitmapfactory/Orientation;->TOP_RIGHT:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v3, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v4, "BOT_RIGHT"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/beyka/tiffbitmapfactory/Orientation;->BOT_RIGHT:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v4, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v5, "BOT_LEFT"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/beyka/tiffbitmapfactory/Orientation;->BOT_LEFT:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v5, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v6, "LEFT_TOP"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/beyka/tiffbitmapfactory/Orientation;->LEFT_TOP:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v6, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v7, "RIGHT_TOP"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/beyka/tiffbitmapfactory/Orientation;->RIGHT_TOP:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v7, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v8, "RIGHT_BOT"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/beyka/tiffbitmapfactory/Orientation;->RIGHT_BOT:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v8, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v9, "LEFT_BOT"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/beyka/tiffbitmapfactory/Orientation;->LEFT_BOT:Lorg/beyka/tiffbitmapfactory/Orientation;

    new-instance v9, Lorg/beyka/tiffbitmapfactory/Orientation;

    const-string v10, "UNAVAILABLE"

    invoke-direct {v9, v10, v11, v2}, Lorg/beyka/tiffbitmapfactory/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/beyka/tiffbitmapfactory/Orientation;->UNAVAILABLE:Lorg/beyka/tiffbitmapfactory/Orientation;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    filled-new-array/range {v0 .. v8}, [Lorg/beyka/tiffbitmapfactory/Orientation;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/Orientation;->$VALUES:[Lorg/beyka/tiffbitmapfactory/Orientation;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/Orientation;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/Orientation;
    .locals 1

    const-class v0, Lorg/beyka/tiffbitmapfactory/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/Orientation;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/Orientation;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/Orientation;->$VALUES:[Lorg/beyka/tiffbitmapfactory/Orientation;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/Orientation;

    return-object v0
.end method
