.class public Lorg/apache/xerces/dom/CDATASectionImpl;
.super Lorg/apache/xerces/dom/TextImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# static fields
.field static final serialVersionUID:J = 0x20eb4a4713edb7f4L


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/dom/TextImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

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
