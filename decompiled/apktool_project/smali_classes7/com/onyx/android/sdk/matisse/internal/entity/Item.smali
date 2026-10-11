.class public Lcom/onyx/android/sdk/matisse/internal/entity/Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_DISPLAY_NAME_CAPTURE:Ljava/lang/String; = "Capture"

.field public static final ITEM_ID_CAPTURE:J = -0x1L


# instance fields
.field public final duration:J

.field public final id:J

.field public final mimeType:Ljava/lang/String;

.field public final size:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/entity/Item$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->id:J

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isImage()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string p3, "external"

    .line 9
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 10
    :goto_0
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    .line 11
    iput-wide p4, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    .line 12
    iput-wide p6, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->duration:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->id:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    .line 16
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/onyx/android/sdk/matisse/internal/entity/Item$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Item;
    .locals 9

    :try_start_0
    new-instance v8, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "mime_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "duration"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;-><init>(JLjava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    iget-wide v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->id:J

    iget-wide v4, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    if-nez v0, :cond_5

    :cond_4
    iget-wide v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    iget-wide v4, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-wide v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->duration:J

    iget-wide p0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->duration:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isCapture()Z
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->id:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGif()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/MimeType;->isGif(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isImage()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/MimeType;->isImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVideo()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
