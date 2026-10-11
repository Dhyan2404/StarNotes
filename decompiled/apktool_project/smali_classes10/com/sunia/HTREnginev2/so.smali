.class public final synthetic Lcom/sunia/HTREnginev2/so;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/tencent/qcloud/track/service/BeaconTrackService;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/qcloud/track/service/BeaconTrackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/so;->e:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/so;->e:Lcom/tencent/qcloud/track/service/BeaconTrackService;

    invoke-static {p0}, Lcom/tencent/qcloud/track/service/BeaconTrackService;->b(Lcom/tencent/qcloud/track/service/BeaconTrackService;)V

    return-void
.end method
