.class public Ljavax/imageio/metadata/IIOInvalidTreeException;
.super Ljavax/imageio/IIOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x123c8faee0cfb6a9L


# instance fields
.field protected offendingNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/w3c/dom/Node;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p3, p0, Ljavax/imageio/metadata/IIOInvalidTreeException;->offendingNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Ljavax/imageio/metadata/IIOInvalidTreeException;->offendingNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public getOffendingNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOInvalidTreeException;->offendingNode:Lorg/w3c/dom/Node;

    return-object p0
.end method
