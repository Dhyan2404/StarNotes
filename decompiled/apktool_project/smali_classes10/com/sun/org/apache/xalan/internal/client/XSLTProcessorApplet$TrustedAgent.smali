.class Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustedAgent"
.end annotation


# instance fields
.field public m_getData:Z

.field public m_getSource:Z

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getData:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getSource:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$000(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getData:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getData:Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$102(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v1, v2}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$202(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getSource:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getSource:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$300(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$202(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$400(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$102(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$500(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$500(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$500(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$500(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$500(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$500(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->this$0:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->access$000(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method
