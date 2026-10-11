.class public final synthetic Lcom/sunia/HTREnginev2/gwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/tencent/qcloud/track/service/ClsTrackService;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gwd;->e:Lcom/tencent/qcloud/track/service/ClsTrackService;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gwd;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/gwd;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gwd;->e:Lcom/tencent/qcloud/track/service/ClsTrackService;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gwd;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gwd;->g:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/tencent/qcloud/track/service/ClsTrackService;->a(Lcom/tencent/qcloud/track/service/ClsTrackService;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
