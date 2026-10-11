.class public final Lcom/onyx/harfbuzz/font/FontFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/font/FontFile$b;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Lcom/onyx/harfbuzz/font/FontFile$b;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/onyx/harfbuzz/font/FontFile$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/harfbuzz/font/FontFile$b;-><init>(Lcom/onyx/harfbuzz/font/FontFile;Lcom/onyx/harfbuzz/font/FontFile$a;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->b:Lcom/onyx/harfbuzz/font/FontFile$b;

    const-string v0, "assetManager"

    .line 3
    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    .line 4
    invoke-static {p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1, p2}, Lcom/onyx/harfbuzz/font/FontFile;->nCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onyx/harfbuzz/font/FontFile;->a:J

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create typeface from specified asset"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/onyx/harfbuzz/font/FontFile$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/harfbuzz/font/FontFile$b;-><init>(Lcom/onyx/harfbuzz/font/FontFile;Lcom/onyx/harfbuzz/font/FontFile$a;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->b:Lcom/onyx/harfbuzz/font/FontFile$b;

    const-string v0, "file"

    .line 9
    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/harfbuzz/font/FontFile;->nCreateFromPath(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->a:J

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create typeface from specified file"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/onyx/harfbuzz/font/FontFile$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/harfbuzz/font/FontFile$b;-><init>(Lcom/onyx/harfbuzz/font/FontFile;Lcom/onyx/harfbuzz/font/FontFile$a;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->b:Lcom/onyx/harfbuzz/font/FontFile$b;

    const-string v0, "stream"

    .line 14
    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/onyx/harfbuzz/font/FontFile;->nCreateFromStream(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->a:J

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create typeface from specified stream"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method private static native nCreateFromPath(Ljava/lang/String;)J
.end method

.method private static native nCreateFromStream(Ljava/io/InputStream;)J
.end method

.method private static native nCreateTypeface(JI)Lcom/onyx/harfbuzz/graphics/HBTypeface;
.end method

.method private static native nGetFaceCount(J)I
.end method

.method private static native nRelease(J)V
.end method


# virtual methods
.method public final a()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lcom/onyx/harfbuzz/font/FontFile;->a:J

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/font/FontFile;->nGetFaceCount(J)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-wide v3, p0, Lcom/onyx/harfbuzz/font/FontFile;->a:J

    invoke-static {v3, v4, v2}, Lcom/onyx/harfbuzz/font/FontFile;->nCreateTypeface(JI)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getNamedStyles()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/harfbuzz/font/NamedStyle;

    invoke-virtual {v5}, Lcom/onyx/harfbuzz/font/NamedStyle;->coordinates()[F

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getVariationInstance([F)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->c:Ljava/util/List;

    return-void
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->a:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/font/FontFile;->nRelease(J)V

    return-void
.end method

.method public getTypefaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->c:Ljava/util/List;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onyx/harfbuzz/font/FontFile;->c:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/font/FontFile;->a()V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/onyx/harfbuzz/font/FontFile;->c:Ljava/util/List;

    return-object p0
.end method
