.class public Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;
.source "SourceFile"


# static fields
.field static singleton:Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;

    return-object v0
.end method
