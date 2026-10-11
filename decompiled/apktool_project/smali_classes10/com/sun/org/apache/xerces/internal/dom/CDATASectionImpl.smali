.class public Lcom/sun/org/apache/xerces/internal/dom/CDATASectionImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/TextImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# static fields
.field static final serialVersionUID:J = 0x20eb4a4713edb7f4L


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "#cdata-section"

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x4

    return p0
.end method
