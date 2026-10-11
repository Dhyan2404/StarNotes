.class public Lcom/sunia/HTREnginev2/cci;
.super Ljavax/imageio/metadata/IIOMetadataNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field public e:Lorg/w3c/dom/Element;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cci;->e:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cci;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/cci;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Lorg/w3c/dom/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cci;->e:Lorg/w3c/dom/Element;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cci;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cci;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cci;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cci;->e:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cci;->g:Ljava/lang/String;

    return-object p0
.end method

.method public isId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cci;->g:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cci;->g:Ljava/lang/String;

    return-void
.end method
