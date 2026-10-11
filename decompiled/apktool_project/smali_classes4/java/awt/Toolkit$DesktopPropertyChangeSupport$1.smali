.class Ljava/awt/Toolkit$DesktopPropertyChangeSupport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/awt/Toolkit$DesktopPropertyChangeSupport;

.field final synthetic val$evt:Ljava/beans/PropertyChangeEvent;


# direct methods
.method public constructor <init>(Ljava/awt/Toolkit$DesktopPropertyChangeSupport;Ljava/beans/PropertyChangeEvent;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport$1;->this$0:Ljava/awt/Toolkit$DesktopPropertyChangeSupport;

    iput-object p2, p0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport$1;->val$evt:Ljava/beans/PropertyChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    invoke-static {}, Ljava/awt/Toolkit$DesktopPropertyChangeSupport;->access$300()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava/awt/Toolkit$DesktopPropertyChangeSupport$1;->val$evt:Ljava/beans/PropertyChangeEvent;

    invoke-virtual {v0, p0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method
