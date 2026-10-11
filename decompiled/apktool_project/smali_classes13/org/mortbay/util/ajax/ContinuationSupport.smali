.class public Lorg/mortbay/util/ajax/ContinuationSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuation(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/Object;)Lorg/mortbay/util/ajax/Continuation;
    .locals 1

    const-string v0, "org.mortbay.jetty.ajax.Continuation"

    invoke-interface {p0, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/util/ajax/Continuation;

    if-nez p0, :cond_0

    new-instance p0, Lorg/mortbay/util/ajax/WaitingContinuation;

    invoke-direct {p0, p1}, Lorg/mortbay/util/ajax/WaitingContinuation;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/mortbay/util/ajax/WaitingContinuation;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/mortbay/util/ajax/WaitingContinuation;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/ajax/WaitingContinuation;->setMutex(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p0
.end method
