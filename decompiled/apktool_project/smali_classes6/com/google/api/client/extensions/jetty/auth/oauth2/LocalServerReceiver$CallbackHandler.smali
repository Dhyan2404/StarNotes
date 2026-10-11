.class Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;


# direct methods
.method public constructor <init>(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method private writeLandingHtml(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0xc8

    invoke-interface {p1, p0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string p0, "text/html"

    invoke-interface {p1, p0}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "<html>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "<head><title>OAuth 2.0 Authentication Token Received</title></head>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "<body>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Received verification code. You may now close this window."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "</body>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "</html>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p4, "/Callback"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    move-object p1, p2

    check-cast p1, Lorg/mortbay/jetty/Request;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    iget-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    const-string p4, "error"

    invoke-interface {p2, p4}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    const-string p4, "code"

    invoke-interface {p2, p4}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->code:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    iget-object p2, p1, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->access$000(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    invoke-static {p1}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->access$000(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    iget-object p2, p1, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->error:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->access$100(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    invoke-static {p1}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->access$100(Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->writeLandingHtml(Ljavax/servlet/http/HttpServletResponse;)V

    :goto_0
    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->flushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver$CallbackHandler;->this$0:Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;

    iget-object p0, p0, Lcom/google/api/client/extensions/jetty/auth/oauth2/LocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method
