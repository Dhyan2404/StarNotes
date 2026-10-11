.class Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;
.super Lcom/vivo/bluetoothpen/OnPenStateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;


# direct methods
.method public constructor <init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-direct {p0}, Lcom/vivo/bluetoothpen/OnPenStateListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->lambda$onFilmStateChange$2()V

    return-void
.end method

.method public static synthetic b(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->lambda$onFilmStateChange$0()V

    return-void
.end method

.method public static synthetic c(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->lambda$onFilmStateChange$1()V

    return-void
.end method

.method private synthetic lambda$onFilmStateChange$0()V
    .locals 0

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$700(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$onFilmStateChange$1()V
    .locals 1

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$600(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Z)V

    return-void
.end method

.method private synthetic lambda$onFilmStateChange$2()V
    .locals 1

    iget-object p0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$600(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;Z)V

    return-void
.end method


# virtual methods
.method public onFilmStateChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFilmStateChange: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {v1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$400(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VivoStylusGestureManagerImpl"

    invoke-static {v1, v0}, Lcom/vivo/penengine/impl/EngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {v0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$400(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$500(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/vivo/penengine/impl/a;

    invoke-direct {v0, p0}, Lcom/vivo/penengine/impl/a;-><init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$500(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/vivo/penengine/impl/b;

    invoke-direct {v0, p0}, Lcom/vivo/penengine/impl/b;-><init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x22

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;->this$0:Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->access$500(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/vivo/penengine/impl/c;

    invoke-direct {v0, p0}, Lcom/vivo/penengine/impl/c;-><init>(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onIMUCoordinateChange(II)V
    .locals 0

    return-void
.end method

.method public onIMUModeChange(I)V
    .locals 0

    return-void
.end method

.method public onMotorModeChange(I)V
    .locals 0

    return-void
.end method

.method public onPressureLevelChange(I)V
    .locals 0

    return-void
.end method

.method public onPressureStateChange(I)V
    .locals 0

    return-void
.end method

.method public onShakeStateChange(I)V
    .locals 0

    return-void
.end method

.method public onSoftwareVersionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWorkModeChange(I)V
    .locals 0

    return-void
.end method
