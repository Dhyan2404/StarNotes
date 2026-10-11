.class public Lsun/awt/SunDisplayChanger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lsun/util/logging/NeoPlatformLogger;


# instance fields
.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/awt/DisplayChangedListener;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "sun.awt.multiscreen.SunDisplayChanger"

    invoke-static {v0}, Lsun/util/logging/NeoPlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;

    move-result-object v0

    sput-object v0, Lsun/awt/SunDisplayChanger;->log:Lsun/util/logging/NeoPlatformLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lsun/awt/DisplayChangedListener;)V
    .locals 3

    sget-object v0, Lsun/awt/SunDisplayChanger;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string v1, "Assertion (theListener != null) failed"

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->finer(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyListeners()V
    .locals 5

    sget-object v0, Lsun/awt/SunDisplayChanger;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notifyListeners"

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/awt/DisplayChangedListener;

    :try_start_1
    sget-object v2, Lsun/awt/SunDisplayChanger;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v3, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayChanged for listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/NeoPlatformLogger;->finest(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lsun/awt/DisplayChangedListener;->displayChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyPaletteChanged()V
    .locals 5

    sget-object v0, Lsun/awt/SunDisplayChanger;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notifyPaletteChanged"

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->finest(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/awt/DisplayChangedListener;

    :try_start_1
    sget-object v2, Lsun/awt/SunDisplayChanger;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v3, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paletteChanged for listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/NeoPlatformLogger;->finest(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lsun/awt/DisplayChangedListener;->paletteChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public remove(Lsun/awt/DisplayChangedListener;)V
    .locals 3

    sget-object v0, Lsun/awt/SunDisplayChanger;->log:Lsun/util/logging/NeoPlatformLogger;

    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string v1, "Assertion (theListener != null) failed"

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/NeoPlatformLogger;->finer(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lsun/awt/SunDisplayChanger;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
