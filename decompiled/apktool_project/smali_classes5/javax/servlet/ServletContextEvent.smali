.class public Ljavax/servlet/ServletContextEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 0

    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/servlet/ServletContext;

    return-object p0
.end method
