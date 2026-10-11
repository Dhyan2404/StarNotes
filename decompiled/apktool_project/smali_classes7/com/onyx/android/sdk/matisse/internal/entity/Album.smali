.class public Lcom/onyx/android/sdk/matisse/internal/entity/Album;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALBUM_ID_ALL:Ljava/lang/String;

.field public static final ALBUM_NAME_ALL:Ljava/lang/String; = "All"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:J

.field private final mCoverUri:Landroid/net/Uri;

.field private final mDisplayName:Ljava/lang/String;

.field private final mId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/entity/Album$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Album$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mId:Ljava/lang/String;

    .line 9
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCoverUri:Landroid/net/Uri;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mDisplayName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCount:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/onyx/android/sdk/matisse/internal/entity/Album$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCoverUri:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mDisplayName:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCount:J

    return-void
.end method

.method public static valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Album;
    .locals 8

    const-string v0, "uri"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    const-string v1, "bucket_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "bucket_display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    return-object v7
.end method


# virtual methods
.method public addCaptureCount()V
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCount:J

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCount:J

    return-wide v0
.end method

.method public getCoverUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCoverUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->isAll()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/onyx/android/sdk/imagepicker/R$string;->album_name_all:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public isAll()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCount:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCoverUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
