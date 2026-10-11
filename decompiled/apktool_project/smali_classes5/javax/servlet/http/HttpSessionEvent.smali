.class public Ljavax/servlet/http/HttpSessionEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpSession;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 0

    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/servlet/http/HttpSession;

    return-object p0
.end method
