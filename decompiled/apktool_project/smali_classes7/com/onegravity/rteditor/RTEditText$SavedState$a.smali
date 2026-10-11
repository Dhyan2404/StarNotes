.class public Lcom/onegravity/rteditor/RTEditText$SavedState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/RTEditText$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/onegravity/rteditor/RTEditText$SavedState;",
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
.method public a(Landroid/os/Parcel;)Lcom/onegravity/rteditor/RTEditText$SavedState;
    .locals 1

    new-instance p0, Lcom/onegravity/rteditor/RTEditText$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/RTEditText$SavedState;-><init>(Landroid/os/Parcel;Lcom/onegravity/rteditor/RTEditText$a;)V

    return-object p0
.end method

.method public b(I)[Lcom/onegravity/rteditor/RTEditText$SavedState;
    .locals 0

    new-array p0, p1, [Lcom/onegravity/rteditor/RTEditText$SavedState;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/RTEditText$SavedState$a;->a(Landroid/os/Parcel;)Lcom/onegravity/rteditor/RTEditText$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/RTEditText$SavedState$a;->b(I)[Lcom/onegravity/rteditor/RTEditText$SavedState;

    move-result-object p0

    return-object p0
.end method
