.class public Lorg/apache/html/dom/HTMLDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLDOMImplementation;


# static fields
.field public static final t:Lorg/w3c/dom/html/HTMLDOMImplementation;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/html/dom/HTMLDOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/html/dom/HTMLDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/html/dom/HTMLDOMImplementationImpl;->t:Lorg/w3c/dom/html/HTMLDOMImplementation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getHTMLDOMImplementation()Lorg/w3c/dom/html/HTMLDOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/html/dom/HTMLDOMImplementationImpl;->t:Lorg/w3c/dom/html/HTMLDOMImplementation;

    return-object v0
.end method


# virtual methods
.method public final createHTMLDocument(Ljava/lang/String;)Lorg/w3c/dom/html/HTMLDocument;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p0, Lorg/apache/html/dom/HTMLDocumentImpl;

    invoke-direct {p0}, Lorg/apache/html/dom/HTMLDocumentImpl;-><init>()V

    invoke-interface {p0, p1}, Lorg/w3c/dom/html/HTMLDocument;->setTitle(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "HTM014 Argument \'title\' is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
