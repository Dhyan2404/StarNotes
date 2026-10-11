.class public Lorg/apache/xerces/dom/CommentImpl;
.super Lorg/apache/xerces/dom/CharacterDataImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/CharacterData;
.implements Lorg/w3c/dom/Comment;


# static fields
.field static final serialVersionUID:J = -0x2545a76b9b796b9cL


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/dom/CharacterDataImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

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
