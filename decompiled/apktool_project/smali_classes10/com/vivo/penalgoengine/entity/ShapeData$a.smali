.class public Lcom/vivo/penalgoengine/entity/ShapeData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/penalgoengine/entity/ShapeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vivo/penalgoengine/entity/ShapeData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/vivo/penalgoengine/entity/ShapeData;
    .locals 0

    new-instance p0, Lcom/vivo/penalgoengine/entity/ShapeData;

    invoke-direct {p0, p1}, Lcom/vivo/penalgoengine/entity/ShapeData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/vivo/penalgoengine/entity/ShapeData;
    .locals 0

    new-array p0, p1, [Lcom/vivo/penalgoengine/entity/ShapeData;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/penalgoengine/entity/ShapeData$a;->a(Landroid/os/Parcel;)Lcom/vivo/penalgoengine/entity/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/penalgoengine/entity/ShapeData$a;->b(I)[Lcom/vivo/penalgoengine/entity/ShapeData;

    move-result-object p0

    return-object p0
.end method
