.class public Lcom/oplus/ocs/base/common/CapabilityInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/ocs/base/common/CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/oplus/ocs/base/common/AuthResult;

.field private d:Landroid/os/IBinder;

.field public mClassName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/ocs/base/common/CapabilityInfo$1;

    invoke-direct {v0}, Lcom/oplus/ocs/base/common/CapabilityInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/common/CapabilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Lcom/oplus/ocs/base/common/Feature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->b:I

    .line 10
    const-class v0, Lcom/oplus/ocs/base/common/AuthResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->mClassName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->mClassName:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/oplus/ocs/base/utils/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oplus/ocs/base/common/AuthResult;

    iput-object v0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->c:Lcom/oplus/ocs/base/common/AuthResult;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/oplus/ocs/base/common/AuthResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;I",
            "Lcom/oplus/ocs/base/common/AuthResult;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/ocs/base/common/CapabilityInfo;-><init>(Ljava/util/List;ILcom/oplus/ocs/base/common/AuthResult;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/oplus/ocs/base/common/AuthResult;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;I",
            "Lcom/oplus/ocs/base/common/AuthResult;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->b:I

    .line 5
    iput-object p3, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->c:Lcom/oplus/ocs/base/common/AuthResult;

    .line 6
    iput-object p4, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->c:Lcom/oplus/ocs/base/common/AuthResult;

    return-object p0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->b:I

    return p0
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget p2, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->c:Lcom/oplus/ocs/base/common/AuthResult;

    iget-object v0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->mClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/oplus/ocs/base/common/AuthResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->mClassName:Ljava/lang/String;

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/oplus/ocs/base/utils/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
