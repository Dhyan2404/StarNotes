.class public Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/Marker;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/MarkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log4jMarker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64L


# instance fields
.field private final name:Ljava/lang/String;

.field private volatile parents:[Lorg/apache/logging/log4j/Marker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Marker name cannot be null."

    .line 5
    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    return-void
.end method

.method private static varargs addParentInfo(Ljava/lang/StringBuilder;[Lorg/apache/logging/log4j/Marker;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "parents"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v4}, Lorg/apache/logging/log4j/Marker;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, v4, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    if-eqz v1, :cond_1

    check-cast v4, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    iget-object v1, v4, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lorg/apache/logging/log4j/Marker;->getParents()[Lorg/apache/logging/log4j/Marker;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p0, v1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->addParentInfo(Ljava/lang/StringBuilder;[Lorg/apache/logging/log4j/Marker;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    const-string p1, " ]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "marker"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation",
            "unrolled"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;

    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/apache/logging/log4j/Marker;->getParents()[Lorg/apache/logging/log4j/Marker;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    array-length v2, p0

    if-ne v2, v0, :cond_2

    aget-object p0, p0, v1

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object p0, p0, v0

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0

    :cond_5
    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, p0, v3

    invoke-static {v4, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method private static varargs contains(Lorg/apache/logging/log4j/Marker;[Lorg/apache/logging/log4j/Marker;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "localParents"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne v3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public varargs declared-synchronized addParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parentMarkers"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "A parent marker must be specified"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    array-length v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v1, p1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    invoke-static {v5, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->contains(Lorg/apache/logging/log4j/Marker;[Lorg/apache/logging/log4j/Marker;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5, p0}, Lorg/apache/logging/log4j/Marker;->isInstanceOf(Lorg/apache/logging/log4j/Marker;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    monitor-exit p0

    return-object p0

    :cond_2
    :try_start_1
    array-length v1, v0

    add-int/2addr v1, v4

    :cond_3
    new-array v1, v1, [Lorg/apache/logging/log4j/Marker;

    if-eqz v0, :cond_4

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-nez v0, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    array-length v3, v0

    :goto_1
    array-length v4, p1

    :goto_2
    if-ge v2, v4, :cond_8

    aget-object v5, p1, v2

    if-eqz v0, :cond_6

    invoke-static {v5, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->contains(Lorg/apache/logging/log4j/Marker;[Lorg/apache/logging/log4j/Marker;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v5, p0}, Lorg/apache/logging/log4j/Marker;->isInstanceOf(Lorg/apache/logging/log4j/Marker;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    add-int/lit8 v6, v3, 0x1

    aput-object v5, v1, v3

    move v3, v6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iput-object v1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Lorg/apache/logging/log4j/Marker;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/Marker;

    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Marker;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->addParentInfo(Ljava/lang/StringBuilder;[Lorg/apache/logging/log4j/Marker;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParents()[Lorg/apache/logging/log4j/Marker;
    .locals 1

    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/logging/log4j/Marker;

    return-object p0
.end method

.method public hasParents()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isInstanceOf(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "markerName"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation",
            "unrolled"
        }
    .end annotation

    const-string v0, "A marker name is required"

    .line 8
    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/MarkerManager;->b()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/logging/log4j/Marker;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 11
    :cond_1
    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    if-eqz p0, :cond_7

    .line 12
    array-length v2, p0

    if-ne v2, v1, :cond_2

    .line 13
    aget-object p0, p0, v0

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 14
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object p0, p0, v1

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :cond_4
    :goto_0
    return v1

    :cond_5
    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_7

    .line 15
    aget-object v4, p0, v3

    .line 16
    invoke-static {v4, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method

.method public isInstanceOf(Lorg/apache/logging/log4j/Marker;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation",
            "unrolled"
        }
    .end annotation

    const-string v0, "A marker parameter is required"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    .line 3
    array-length v2, p0

    if-ne v2, v0, :cond_1

    .line 4
    aget-object p0, p0, v1

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 5
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object p0, p0, v0

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_6

    .line 6
    aget-object v4, p0, v3

    .line 7
    invoke-static {v4, p1}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->checkParent(Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Marker;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public declared-synchronized remove(Lorg/apache/logging/log4j/Marker;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parent"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "A parent marker must be specified"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/MarkerManager;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/Marker;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    add-int/lit8 v4, v2, -0x1

    :try_start_2
    new-array v5, v4, [Lorg/apache/logging/log4j/Marker;

    move v6, v1

    move v7, v6

    :goto_0
    if-ge v6, v2, :cond_5

    aget-object v8, v0, v6

    invoke-interface {v8, p1}, Lorg/apache/logging/log4j/Marker;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_4

    if-ne v7, v4, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    add-int/lit8 v9, v7, 0x1

    :try_start_3
    aput-object v8, v5, v7

    move v7, v9

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iput-object v5, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs setParents([Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/Marker;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "markers"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/logging/log4j/Marker;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->parents:[Lorg/apache/logging/log4j/Marker;

    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/MarkerManager$Log4jMarker;->formatTo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
