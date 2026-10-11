.class public Lcom/vivo/penalgoengine/entity/ShapeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vivo/penalgoengine/entity/ShapeData;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURVE_TYPE_ARC:I = 0x12

.field public static final CURVE_TYPE_ARC_ARROW:I = 0x13

.field public static final CURVE_TYPE_BROKEN_LINE:I = 0x16

.field public static final CURVE_TYPE_CIRCLE:I = 0xf

.field public static final CURVE_TYPE_DIAMOND:I = 0x9

.field public static final CURVE_TYPE_ELLIPSE:I = 0xe

.field public static final CURVE_TYPE_HEART:I = 0xa

.field public static final CURVE_TYPE_HEXAGON:I = 0xd

.field public static final CURVE_TYPE_LINE:I = 0x10

.field public static final CURVE_TYPE_LINE_ARROW:I = 0x11

.field public static final CURVE_TYPE_PARALLELOGRAM:I = 0x7

.field public static final CURVE_TYPE_PENTAGON:I = 0xc

.field public static final CURVE_TYPE_PENTAGRAM:I = 0x6

.field public static final CURVE_TYPE_QUADRANGLE:I = 0x15

.field public static final CURVE_TYPE_RECTANGLE:I = 0x8

.field public static final CURVE_TYPE_REVERSE_ARC_ARROW:I = 0x18

.field public static final CURVE_TYPE_REVERSE_LINE_ARROW:I = 0x17

.field public static final CURVE_TYPE_TRIANGLE:I = 0xb

.field public static final CURVE_TYPE_VORTEX:I = 0x14

.field public static final GESTURE_TYPE_EXCHANGE:I = 0x64


# instance fields
.field private touchPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vivo/penalgoengine/entity/TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/penalgoengine/entity/ShapeData$a;

    invoke-direct {v0}, Lcom/vivo/penalgoengine/entity/ShapeData$a;-><init>()V

    sput-object v0, Lcom/vivo/penalgoengine/entity/ShapeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/vivo/penalgoengine/entity/TouchPoint;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->type:I

    .line 7
    iput-object p2, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->touchPoints:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->type:I

    .line 4
    sget-object v0, Lcom/vivo/penalgoengine/entity/TouchPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->touchPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTouchPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vivo/penalgoengine/entity/TouchPoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->touchPoints:Ljava/util/List;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->type:I

    return p0
.end method

.method public setTouchPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vivo/penalgoengine/entity/TouchPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->touchPoints:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->touchPoints:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/vivo/penalgoengine/entity/ShapeData;->touchPoints:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
