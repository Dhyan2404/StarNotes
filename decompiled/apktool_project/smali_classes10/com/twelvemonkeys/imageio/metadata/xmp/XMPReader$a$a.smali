.class public Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;->f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;->f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;->e:Lorg/w3c/dom/NamedNodeMap;

    iget v1, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;->e:I

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;->f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;->e:Lorg/w3c/dom/NamedNodeMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    iget p0, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;->e:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;->a()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method remove not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
