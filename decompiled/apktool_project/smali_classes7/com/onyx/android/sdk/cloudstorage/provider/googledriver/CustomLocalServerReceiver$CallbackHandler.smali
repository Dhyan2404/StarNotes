.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallbackHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;",
        "Lorg/mortbay/jetty/handler/AbstractHandler;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)V",
        "handle",
        "",
        "target",
        "",
        "request",
        "Ljavax/servlet/http/HttpServletRequest;",
        "response",
        "Ljavax/servlet/http/HttpServletResponse;",
        "dispatch",
        "",
        "writeLandingHtml",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method private final writeLandingHtml(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0xc8

    invoke-interface {p1, p0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string p0, "text/html;charset=UTF-8"

    invoke-interface {p1, p0}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><title>OAuth 2.0 Authentication Token Received</title></head><body>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/cloudstorage/R$string;->google_drive_account_bind_tip:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</body></html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/servlet/http/HttpServletRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljavax/servlet/http/HttpServletResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p4, "target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "request"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "response"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " handle(), CALLBACK_PATH : /Callback , target : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p4, v3, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "/Callback"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " request info : url = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p4, v3, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, p2

    check-cast p1, Lorg/mortbay/jetty/Request;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    const-string v0, "error"

    invoke-interface {p2, v0}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->setError(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    const-string v0, "code"

    invoke-interface {p2, v0}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->setCode(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " receiver_parameter :  error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->getError()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " code : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " successLandingPageUrl :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-static {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->access$getSuccessLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failureLandingPageUrl : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-static {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->access$getFailureLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p4, v3, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->getError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->access$getSuccessLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->access$getSuccessLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->getError()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->access$getFailureLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->access$getFailureLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->writeLandingHtml(Ljavax/servlet/http/HttpServletResponse;)V

    :goto_0
    invoke-interface {p3}, Ljavax/servlet/ServletResponse;->flushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->getWaitUnlessSignaled()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->getWaitUnlessSignaled()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p1
.end method
