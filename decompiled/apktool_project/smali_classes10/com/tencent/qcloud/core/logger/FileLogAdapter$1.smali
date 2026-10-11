.class Lcom/tencent/qcloud/core/logger/FileLogAdapter$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qcloud/core/logger/FileLogAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qcloud/core/logger/FileLogAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/logger/FileLogAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter$1;->this$0:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter$1;->this$0:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    invoke-static {p0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->access$100(Lcom/tencent/qcloud/core/logger/FileLogAdapter;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter$1;->this$0:Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    invoke-static {p1}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->access$000(Lcom/tencent/qcloud/core/logger/FileLogAdapter;)V

    const/4 p1, 0x0

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
