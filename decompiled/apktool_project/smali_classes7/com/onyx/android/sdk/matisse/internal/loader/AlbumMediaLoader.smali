.class public Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;
.super Landroidx/loader/content/CursorLoader;
.source "SourceFile"


# static fields
.field public static final A:Landroid/net/Uri;

.field public static final B:[Ljava/lang/String;

.field public static final C:Ljava/lang/String; = "(media_type=? OR media_type=?) AND _size>0"

.field public static final D:[Ljava/lang/String;

.field public static final E:Ljava/lang/String; = "media_type=? AND _size>0"

.field public static final F:Ljava/lang/String; = "(media_type=? OR media_type=?) AND  bucket_id=? AND _size>0"

.field public static final G:Ljava/lang/String; = "media_type=? AND  bucket_id=? AND _size>0"

.field public static final H:Ljava/lang/String; = "media_type=? AND mime_type=? AND _size>0"

.field public static final I:Ljava/lang/String; = "media_type=? AND  bucket_id=? AND mime_type=? AND _size>0"

.field public static final J:Ljava/lang/String; = "date_modified DESC"


# instance fields
.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->A:Landroid/net/Uri;

    const-string v0, "_size"

    const-string v1, "duration"

    const-string v2, "_id"

    const-string v3, "_display_name"

    const-string v4, "mime_type"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->B:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7

    sget-object v2, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->A:Landroid/net/Uri;

    sget-object v3, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->B:[Ljava/lang/String;

    const-string v6, "date_modified DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->z:Z

    return-void
.end method

.method public static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/gif"

    filled-new-array {p0, p1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(ILjava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(I)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/gif"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Album;Z)Landroidx/loader/content/CursorLoader;
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->isAll()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowGif()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->g(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "media_type=? AND mime_type=? AND _size>0"

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowImages()Z

    move-result p1

    const-string v0, "media_type=? AND _size>0"

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->h(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowVideos()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->h(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->D:[Ljava/lang/String;

    const-string v0, "(media_type=? OR media_type=?) AND _size>0"

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowGif()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->e(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "media_type=? AND  bucket_id=? AND mime_type=? AND _size>0"

    :goto_0
    move-object v0, p2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowImages()Z

    move-result p2

    const-string v0, "media_type=? AND  bucket_id=? AND _size>0"

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->f(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowVideos()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->f(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "(media_type=? OR media_type=?) AND  bucket_id=? AND _size>0"

    goto :goto_0

    :goto_1
    const/4 p2, 0x0

    :goto_2
    new-instance v1, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .line 2
    invoke-super {p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->z:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;->hasCameraFeature(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->B:[Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Capture"

    const-string v6, ""

    filled-new-array {v1, v5, v6, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 6
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object p0, v3, v2

    const/4 p0, 0x1

    aput-object v0, v3, p0

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method
