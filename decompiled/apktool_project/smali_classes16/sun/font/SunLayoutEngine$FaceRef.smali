.class Lsun/font/SunLayoutEngine$FaceRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/SunLayoutEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceRef"
.end annotation


# instance fields
.field private facePtr:Ljava/lang/Long;

.field private font:Lsun/font/Font2D;


# direct methods
.method private constructor <init>(Lsun/font/Font2D;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lsun/font/SunLayoutEngine$FaceRef;->font:Lsun/font/Font2D;

    return-void
.end method

.method public synthetic constructor <init>(Lsun/font/Font2D;Lsun/font/SunLayoutEngine$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsun/font/SunLayoutEngine$FaceRef;-><init>(Lsun/font/Font2D;)V

    return-void
.end method

.method public static synthetic access$100(Lsun/font/SunLayoutEngine$FaceRef;)J
    .locals 2

    invoke-direct {p0}, Lsun/font/SunLayoutEngine$FaceRef;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized getNativePtr()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/SunLayoutEngine$FaceRef;->facePtr:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/font/SunLayoutEngine$FaceRef;->font:Lsun/font/Font2D;

    invoke-static {v0}, Lsun/font/SunLayoutEngine;->access$200(Lsun/font/Font2D;)Z

    move-result v1

    iget-object v2, p0, Lsun/font/SunLayoutEngine$FaceRef;->font:Lsun/font/Font2D;

    invoke-virtual {v2}, Lsun/font/Font2D;->getPlatformNativeFontPtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lsun/font/SunLayoutEngine;->access$300(Lsun/font/Font2D;ZJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lsun/font/SunLayoutEngine$FaceRef;->facePtr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/font/SunLayoutEngine$FaceRef;->font:Lsun/font/Font2D;

    invoke-static {v0, p0}, Lsun/java2d/Disposer;->addObjectRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/SunLayoutEngine$FaceRef;->font:Lsun/font/Font2D;

    :cond_1
    iget-object v0, p0, Lsun/font/SunLayoutEngine$FaceRef;->facePtr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object p0, p0, Lsun/font/SunLayoutEngine$FaceRef;->facePtr:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lsun/font/SunLayoutEngine;->access$400(J)V

    return-void
.end method
