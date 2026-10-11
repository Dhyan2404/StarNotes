.class Lcom/tencent/qcloud/core/http/ConnectionRepository$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qcloud/core/http/ConnectionRepository;->init(Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

.field final synthetic val$listener:Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/ConnectionRepository;Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    iput-object p2, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;->val$listener:Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$000(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;->loadFromLocal()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$100(Lcom/tencent/qcloud/core/http/ConnectionRepository;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$200(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository$DnsFetcher;->fetchAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$100(Lcom/tencent/qcloud/core/http/ConnectionRepository;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$000(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$300(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;->save2Local(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$1;->val$listener:Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;->onComplete()V

    :cond_0
    return-void
.end method
