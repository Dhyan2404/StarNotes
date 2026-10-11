.class Ljava/awt/Toolkit$DesktopPropertyChangeSupport;
.super Ljava/beans/PropertyChangeSupport;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/Toolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopPropertyChangeSupport"
.end annotation


# static fields
.field private static final PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;


# instance fields
.field private final source:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "desktop property change support key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->source:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$300()Ljava/lang/StringBuilder;
    .locals 1

    sget-object v0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    sget-object v1, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    iget-object v2, p0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v0, v2}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lsun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    sget-object v1, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    iget-object v2, p0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v0, v2}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lsun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport$1;

    invoke-direct {v0, p0, p1}, Ljava/awt/Toolkit$DesktopPropertyChangeSupport$1;-><init>(Ljava/awt/Toolkit$DesktopPropertyChangeSupport;Ljava/beans/PropertyChangeEvent;)V

    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object p0

    invoke-static {}, Lsun/awt/AppContext;->getAppContexts()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/awt/AppContext;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lsun/awt/AppContext;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public declared-synchronized getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    sget-object v1, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/beans/PropertyChangeListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    sget-object v1, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    new-array p1, p1, [Ljava/beans/PropertyChangeListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    sget-object v1, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    sget-object v1, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->PROP_CHANGE_SUPPORT_KEY:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
