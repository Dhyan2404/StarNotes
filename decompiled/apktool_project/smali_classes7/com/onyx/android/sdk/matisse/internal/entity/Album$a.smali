.class public Lcom/onyx/android/sdk/matisse/internal/entity/Album$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/matisse/internal/entity/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/onyx/android/sdk/matisse/internal/entity/Album;",
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
.method public a(Landroid/os/Parcel;)Lcom/onyx/android/sdk/matisse/internal/entity/Album;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;-><init>(Landroid/os/Parcel;Lcom/onyx/android/sdk/matisse/internal/entity/Album$a;)V

    return-object p0
.end method

.method public b(I)[Lcom/onyx/android/sdk/matisse/internal/entity/Album;
    .locals 0

    new-array p0, p1, [Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album$a;->a(Landroid/os/Parcel;)Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album$a;->b(I)[Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    move-result-object p0

    return-object p0
.end method
