.class Lsun/awt/FontConfiguration$PropertiesHandler$FontProperties;
.super Ljava/util/Properties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/FontConfiguration$PropertiesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontProperties"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/awt/FontConfiguration$PropertiesHandler;


# direct methods
.method public constructor <init>(Lsun/awt/FontConfiguration$PropertiesHandler;)V
    .locals 0

    iput-object p1, p0, Lsun/awt/FontConfiguration$PropertiesHandler$FontProperties;->this$0:Lsun/awt/FontConfiguration$PropertiesHandler;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler$FontProperties;->this$0:Lsun/awt/FontConfiguration$PropertiesHandler;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->access$2300(Lsun/awt/FontConfiguration$PropertiesHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
