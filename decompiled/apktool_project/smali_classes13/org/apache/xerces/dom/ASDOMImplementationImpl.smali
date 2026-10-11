.class public Lorg/apache/xerces/dom/ASDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom3/as/DOMImplementationAS;


# static fields
.field public static final t:Lorg/apache/xerces/dom/ASDOMImplementationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/dom/ASDOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/xerces/dom/ASDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/ASDOMImplementationImpl;->t:Lorg/apache/xerces/dom/ASDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/dom/ASDOMImplementationImpl;->t:Lorg/apache/xerces/dom/ASDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createAS(Z)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 0

    new-instance p0, Lorg/apache/xerces/dom/ASModelImpl;

    invoke-direct {p0, p1}, Lorg/apache/xerces/dom/ASModelImpl;-><init>(Z)V

    return-object p0
.end method

.method public createDOMASBuilder()Lorg/apache/xerces/dom3/as/DOMASBuilder;
    .locals 0

    new-instance p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;

    invoke-direct {p0}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;-><init>()V

    return-object p0
.end method

.method public createDOMASWriter()Lorg/apache/xerces/dom3/as/DOMASWriter;
    .locals 2

    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 v0, 0x0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p0, v0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
