.class public Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;
.super Landroidx/loader/content/CursorLoader;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "bucket_display_name"

.field public static final B:Landroid/net/Uri;

.field public static final C:[Ljava/lang/String;

.field public static final COLUMN_COUNT:Ljava/lang/String; = "count"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final D:[Ljava/lang/String;

.field public static final E:[Ljava/lang/String;

.field public static final F:Ljava/lang/String; = "(media_type=? OR media_type=?) AND _size>0) GROUP BY (bucket_id"

.field public static final G:Ljava/lang/String; = "(media_type=? OR media_type=?) AND _size>0"

.field public static final H:[Ljava/lang/String;

.field public static final I:Ljava/lang/String; = "media_type=? AND _size>0) GROUP BY (bucket_id"

.field public static final J:Ljava/lang/String; = "media_type=? AND _size>0"

.field public static final K:Ljava/lang/String; = "media_type=? AND _size>0 AND mime_type=?) GROUP BY (bucket_id"

.field public static final L:Ljava/lang/String; = "media_type=? AND _size>0 AND mime_type=?"

.field public static final M:Ljava/lang/String; = "date_modified DESC"

.field public static final z:Ljava/lang/String; = "bucket_id"


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->B:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "bucket_id"

    const-string v3, "bucket_display_name"

    const-string v4, "mime_type"

    const-string v5, "uri"

    const-string v6, "count"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->C:[Ljava/lang/String;

    const-string v0, "COUNT(*) AS count"

    const-string v1, "_id"

    const-string v2, "bucket_id"

    const-string v3, "bucket_display_name"

    const-string v4, "mime_type"

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->D:[Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->E:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->H:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    sget-object v2, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->B:Landroid/net/Uri;

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->D:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->E:[Ljava/lang/String;

    :goto_0
    move-object v3, v0

    const-string v6, "date_modified DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static e(I)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/gif"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "mime_type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/MimeType;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;)Landroidx/loader/content/CursorLoader;
    .locals 4

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowGif()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media_type=? AND _size>0 AND mime_type=?) GROUP BY (bucket_id"

    goto :goto_0

    :cond_0
    const-string v0, "media_type=? AND _size>0 AND mime_type=?"

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->e(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_1
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowImages()Z

    move-result v0

    const-string v2, "media_type=? AND _size>0) GROUP BY (bucket_id"

    const-string v3, "media_type=? AND _size>0"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->f(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onlyShowVideos()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->f(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "(media_type=? OR media_type=?) AND _size>0) GROUP BY (bucket_id"

    goto :goto_3

    :cond_6
    const-string v0, "(media_type=? OR media_type=?) AND _size>0"

    :goto_3
    sget-object v1, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->H:[Ljava/lang/String;

    :goto_4
    new-instance v2, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;

    invoke-direct {v2, p0, v0, v1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 33

    .line 2
    invoke-super/range {p0 .. p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->C:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->d()Z

    move-result v3

    const-string v5, "mime_type"

    const-string v6, "bucket_display_name"

    const-string v7, "_id"

    const/4 v9, 0x3

    const-string v10, "All"

    const/4 v11, 0x6

    const-string v12, "bucket_id"

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v3, :cond_4

    .line 5
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_2

    move/from16 v2, v16

    .line 6
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 8
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 9
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 10
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 11
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 12
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 13
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 14
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 15
    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->g(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    const-string v8, "count"

    .line 16
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 17
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 18
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    .line 19
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    filled-new-array/range {v21 .. v26}, [Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/2addr v2, v8

    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->g(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v15

    goto :goto_1

    :cond_2
    move-object v0, v15

    move/from16 v2, v16

    :goto_1
    new-array v4, v11, [Ljava/lang/String;

    .line 23
    sget-object v5, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    aput-object v5, v4, v16

    aput-object v5, v4, v14

    aput-object v10, v4, v13

    aput-object v15, v4, v9

    if-nez v0, :cond_3

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_2
    const/4 v0, 0x4

    aput-object v15, v4, v0

    .line 25
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v4, v2

    .line 26
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 27
    new-instance v0, Landroid/database/MergeCursor;

    new-array v2, v13, [Landroid/database/Cursor;

    aput-object v1, v2, v16

    aput-object v3, v2, v14

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0

    .line 28
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_6

    .line 29
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 30
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    const-wide/16 v17, 0x1

    if-nez v8, :cond_5

    .line 32
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_4

    .line 33
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v19, v19, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 34
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 35
    :cond_6
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->C:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 36
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 37
    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->g(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    .line 38
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move/from16 v9, v16

    .line 39
    :goto_5
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 40
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_6

    .line 41
    :cond_7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 42
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 43
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 44
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 45
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 46
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 47
    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->g(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v15

    .line 48
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 49
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v27

    .line 50
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    .line 51
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v31

    .line 52
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    filled-new-array/range {v27 .. v32}, [Ljava/lang/String;

    move-result-object v13

    .line 53
    invoke-virtual {v3, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 54
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    int-to-long v14, v9

    add-long v14, v14, v24

    long-to-int v9, v14

    .line 55
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_7

    :cond_8
    const/4 v13, 0x2

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    move/from16 v9, v16

    const/4 v4, 0x0

    :goto_7
    new-array v0, v11, [Ljava/lang/String;

    .line 56
    sget-object v2, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    aput-object v2, v0, v16

    const/4 v5, 0x1

    aput-object v2, v0, v5

    const/4 v2, 0x2

    aput-object v10, v0, v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v0, v5

    if-nez v4, :cond_a

    move-object v15, v6

    goto :goto_8

    .line 57
    :cond_a
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_8
    const/4 v4, 0x4

    aput-object v15, v0, v4

    .line 58
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 59
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 60
    new-instance v0, Landroid/database/MergeCursor;

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object v1, v2, v16

    const/4 v1, 0x1

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method
