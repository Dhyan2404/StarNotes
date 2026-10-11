.class public Lcom/tencent/qcloud/track/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEACON_EVENT_CACHE_FILE_NAME:Ljava/lang/String;

.field public static final SIMPLE_DATA_BEACON_APP_KEY:Ljava/lang/String; = "0AND05KOZX0E3L2H"

.field public static final SIMPLE_DATA_EVENT_CODE_ERROR:Ljava/lang/String; = "qcloud_track_sd_sdk_error"

.field public static final SIMPLE_DATA_EVENT_CODE_START:Ljava/lang/String; = "qcloud_track_sd_sdk_start"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QCloudBeaconEventCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qcloud/track/Constants;->BEACON_EVENT_CACHE_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
