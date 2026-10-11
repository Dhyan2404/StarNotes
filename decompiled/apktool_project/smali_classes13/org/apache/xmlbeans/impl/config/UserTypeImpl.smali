.class public Lorg/apache/xmlbeans/impl/config/UserTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/UserType;


# instance fields
.field private _javaName:Ljava/lang/String;

.field private _name:Ljavax/xml/namespace/QName;

.field private _staticHandler:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/apache/xmlbeans/impl/config/Parser;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)Lorg/apache/xmlbeans/impl/config/UserTypeImpl;
    .locals 1

    new-instance p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_name:Ljavax/xml/namespace/QName;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;->getJavaname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_javaName:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_staticHandler:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getJavaName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_javaName:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_name:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getStaticHandler()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_staticHandler:Ljava/lang/String;

    return-object p0
.end method
