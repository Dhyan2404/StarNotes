.class Lcom/tencent/qcloud/core/http/ConnectionRepository$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qcloud/core/http/ConnectionRepository;->insertDnsRecordCache(Ljava/lang/String;Ljava/util/List;Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$inetAddresses:Ljava/util/List;

.field final synthetic val$listener:Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/ConnectionRepository;Ljava/lang/String;Ljava/util/List;Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    iput-object p2, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$inetAddresses:Ljava/util/List;

    iput-object p4, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$listener:Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$300(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$host:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$inetAddresses:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$400(Lcom/tencent/qcloud/core/http/ConnectionRepository;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$300(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$host:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$inetAddresses:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$000(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->this$0:Lcom/tencent/qcloud/core/http/ConnectionRepository;

    invoke-static {v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->access$300(Lcom/tencent/qcloud/core/http/ConnectionRepository;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/ConnectionRepository$LocalDnsCache;->save2Local(Ljava/util/Map;)V

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ConnectionRepository$2;->val$listener:Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/tencent/qcloud/core/http/ConnectionRepository$AsyncExecuteCompleteListener;->onComplete()V

    :cond_1
    return-void
.end method
