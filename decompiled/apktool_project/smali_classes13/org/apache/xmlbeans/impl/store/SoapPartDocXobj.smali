.class Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;
.super Lorg/apache/xmlbeans/impl/store/DocumentXobj;
.source "SourceFile"


# instance fields
.field _soapPartDom:Lorg/apache/xmlbeans/impl/store/SoapPartDom;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DocumentXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    new-instance p1, Lorg/apache/xmlbeans/impl/store/SoapPartDom;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/SoapPartDom;-><init>(Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;->_soapPartDom:Lorg/apache/xmlbeans/impl/store/SoapPartDom;

    return-void
.end method


# virtual methods
.method public getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;->_soapPartDom:Lorg/apache/xmlbeans/impl/store/SoapPartDom;

    return-object p0
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-object p0
.end method
