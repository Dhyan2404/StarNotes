.class public final Lcom/github/mikephil/charting/utils/MPPointF$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/utils/MPPointF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/github/mikephil/charting/utils/MPPointF;",
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
.method public a(Landroid/os/Parcel;)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    new-instance p0, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/MPPointF;->my_readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    new-array p0, p1, [Lcom/github/mikephil/charting/utils/MPPointF;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/MPPointF$a;->a(Landroid/os/Parcel;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/MPPointF$a;->b(I)[Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method
