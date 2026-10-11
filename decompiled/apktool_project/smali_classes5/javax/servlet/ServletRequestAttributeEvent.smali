.class public Ljavax/servlet/ServletRequestAttributeEvent;
.super Ljavax/servlet/ServletRequestEvent;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    iput-object p3, p0, Ljavax/servlet/ServletRequestAttributeEvent;->name:Ljava/lang/String;

    iput-object p4, p0, Ljavax/servlet/ServletRequestAttributeEvent;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestAttributeEvent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljavax/servlet/ServletRequestAttributeEvent;->value:Ljava/lang/Object;

    return-object p0
.end method
