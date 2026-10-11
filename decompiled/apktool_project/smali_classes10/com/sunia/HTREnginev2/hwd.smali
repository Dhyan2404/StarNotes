.class public final synthetic Lcom/sunia/HTREnginev2/hwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencentcloudapi/cls/android/producer/Callback;


# instance fields
.field public final synthetic a:Lcom/tencent/qcloud/track/service/ClsTrackService;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hwd;->a:Lcom/tencent/qcloud/track/service/ClsTrackService;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hwd;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/hwd;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencentcloudapi/cls/android/producer/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hwd;->a:Lcom/tencent/qcloud/track/service/ClsTrackService;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hwd;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hwd;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/tencent/qcloud/track/service/ClsTrackService;->b(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/util/Map;Ljava/lang/String;Lcom/tencentcloudapi/cls/android/producer/Result;)V

    return-void
.end method
