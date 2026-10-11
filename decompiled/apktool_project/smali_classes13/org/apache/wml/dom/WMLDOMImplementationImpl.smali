.class public Lorg/apache/wml/dom/WMLDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/wml/WMLDOMImplementation;


# static fields
.field public static final t:Lorg/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/wml/dom/WMLDOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/wml/dom/WMLDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/wml/dom/WMLDOMImplementationImpl;->t:Lorg/apache/xerces/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/wml/dom/WMLDOMImplementationImpl;->t:Lorg/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 0

    new-instance p0, Lorg/apache/wml/dom/WMLDocumentImpl;

    invoke-direct {p0, p1}, Lorg/apache/wml/dom/WMLDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    return-object p0
.end method
