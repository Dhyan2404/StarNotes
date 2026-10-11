.class public Lcom/sun/org/apache/xerces/internal/dom/CommentImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/CharacterData;
.implements Lorg/w3c/dom/Comment;


# static fields
.field static final serialVersionUID:J = -0x2545a76b9b796b9cL


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "#comment"

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/16 p0, 0x8

    return p0
.end method
