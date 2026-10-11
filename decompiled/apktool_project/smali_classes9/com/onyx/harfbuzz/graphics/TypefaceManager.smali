.class public Lcom/onyx/harfbuzz/graphics/TypefaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/graphics/TypefaceManager$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-boolean v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onyx/harfbuzz/graphics/TypefaceManager$b;-><init>(Lcom/onyx/harfbuzz/graphics/TypefaceManager$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->c:Z

    :cond_0
    return-void
.end method

.method public static clean()V
    .locals 5

    const-class v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    sget-object v3, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAvailableFamilies()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/TypeFamily;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const-class v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a()V

    sget-object v2, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {v3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Lcom/onyx/harfbuzz/graphics/TypeFamily;

    invoke-direct {v4, v3, v2}, Lcom/onyx/harfbuzz/graphics/TypeFamily;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getAvailableTypefaces()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a()V

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getTypeFamily(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/TypeFamily;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a()V

    sget-object v2, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {v3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/onyx/harfbuzz/graphics/TypeFamily;

    invoke-direct {v1, p0, v0}, Lcom/onyx/harfbuzz/graphics/TypeFamily;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getTypeface(Ljava/lang/Object;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getTypefaceByName(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getTypefaceTag(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "typeface"

    invoke-static {p0, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "This typeface is not registered"

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static registerTypeface(Lcom/onyx/harfbuzz/graphics/HBTypeface;Ljava/lang/Object;)V
    .locals 6
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "typeface"

    invoke-static {p0, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "This typeface is already registered"

    invoke-static {v2, v5}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-eqz p1, :cond_2

    sget-object v2, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v5, "This tag is already taken"

    invoke-static {v3, v5}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    invoke-virtual {v2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    :cond_2
    sput-boolean v4, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->c:Z

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unregisterTypeface(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V
    .locals 5
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "typeface"

    invoke-static {p0, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/harfbuzz/graphics/TypefaceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "This typeface is not registered"

    invoke-static {v3, v4}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/harfbuzz/graphics/TypefaceManager;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
