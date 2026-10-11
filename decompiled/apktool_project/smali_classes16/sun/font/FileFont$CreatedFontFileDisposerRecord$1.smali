.class Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/FileFont$CreatedFontFileDisposerRecord;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/FileFont$CreatedFontFileDisposerRecord;


# direct methods
.method public constructor <init>(Lsun/font/FileFont$CreatedFontFileDisposerRecord;)V
    .locals 0

    iput-object p1, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;->this$0:Lsun/font/FileFont$CreatedFontFileDisposerRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;->this$0:Lsun/font/FileFont$CreatedFontFileDisposerRecord;

    iget-object v0, v0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->fontFile:Ljava/io/File;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;->this$0:Lsun/font/FileFont$CreatedFontFileDisposerRecord;

    iget v2, v1, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->count:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->fontFile:Ljava/io/File;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v1, v1, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->tracker:Lsun/font/CreatedFontTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Lsun/font/CreatedFontTracker;->subBytes(I)V

    :cond_1
    iget-object v0, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;->this$0:Lsun/font/FileFont$CreatedFontFileDisposerRecord;

    iget-object v0, v0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->fontFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v0

    iget-object v0, v0, Lsun/font/SunFontManager;->tmpFontFiles:Ljava/util/Vector;

    iget-object p0, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;->this$0:Lsun/font/FileFont$CreatedFontFileDisposerRecord;

    iget-object p0, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->fontFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-object v3

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
