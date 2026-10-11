.class public Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;
.source "SourceFile"


# static fields
.field public static final t:Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;->t:Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;->t:Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    return-object v0
.end method
