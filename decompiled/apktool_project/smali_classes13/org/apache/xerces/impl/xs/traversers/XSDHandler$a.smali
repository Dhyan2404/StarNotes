.class public final Lorg/apache/xerces/impl/xs/traversers/XSDHandler$a;
.super Lorg/apache/xerces/util/ErrorHandlerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>()V

    return-void
.end method

.method public static a(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;
    .locals 0

    invoke-static {p0}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/xml/sax/SAXException;)Lorg/apache/xerces/xni/XNIException;
    .locals 0

    invoke-static {p0}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lorg/apache/xerces/xni/XNIException;

    move-result-object p0

    return-object p0
.end method
