.class public Ljava/awt/image/renderable/ParameterBlock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field protected parameters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected sources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    .line 7
    invoke-virtual {p0, p1}, Ljava/awt/image/renderable/ParameterBlock;->setSources(Ljava/util/Vector;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    .line 11
    invoke-virtual {p0, p1}, Ljava/awt/image/renderable/ParameterBlock;->setSources(Ljava/util/Vector;)V

    .line 12
    invoke-virtual {p0, p2}, Ljava/awt/image/renderable/ParameterBlock;->setParameters(Ljava/util/Vector;)V

    return-void
.end method


# virtual methods
.method public add(B)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/awt/image/renderable/ParameterBlock;->add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public add(C)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p0, v0}, Ljava/awt/image/renderable/ParameterBlock;->add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public add(D)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Ljava/awt/image/renderable/ParameterBlock;->add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public add(F)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, v0}, Ljava/awt/image/renderable/ParameterBlock;->add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public add(I)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/awt/image/renderable/ParameterBlock;->add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public add(J)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/awt/image/renderable/ParameterBlock;->add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public add(S)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, v0}, Ljava/awt/image/renderable/ParameterBlock;->add(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public addSource(Ljava/lang/Object;)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/renderable/ParameterBlock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/awt/image/renderable/ParameterBlock;->setSources(Ljava/util/Vector;)V

    :cond_0
    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/awt/image/renderable/ParameterBlock;->setParameters(Ljava/util/Vector;)V

    :cond_1
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getByteParameter(I)B
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getCharParameter(I)C
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method public getDoubleParameter(I)D
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloatParameter(I)F
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getIntParameter(I)I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLongParameter(I)J
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getNumParameters()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getNumSources()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getObjectParameter(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getParamClasses()[Ljava/lang/Class;
    .locals 5

    invoke-virtual {p0}, Ljava/awt/image/renderable/ParameterBlock;->getNumParameters()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Ljava/awt/image/renderable/ParameterBlock;->getObjectParameter(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_1

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_1
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_4
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_5

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_5
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_6

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public getParameters()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    return-object p0
.end method

.method public getRenderableSource(I)Ljava/awt/image/renderable/RenderableImage;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/renderable/RenderableImage;

    return-object p0
.end method

.method public getRenderedSource(I)Ljava/awt/image/RenderedImage;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/RenderedImage;

    return-object p0
.end method

.method public getShortParameter(I)S
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public getSource(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSources()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    return-object p0
.end method

.method public removeParameters()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    return-void
.end method

.method public removeSources()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    return-void
.end method

.method public set(BI)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, p2}, Ljava/awt/image/renderable/ParameterBlock;->set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public set(CI)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p0, v0, p2}, Ljava/awt/image/renderable/ParameterBlock;->set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public set(DI)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0, p3}, Ljava/awt/image/renderable/ParameterBlock;->set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public set(FI)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, v0, p2}, Ljava/awt/image/renderable/ParameterBlock;->set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public set(II)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Ljava/awt/image/renderable/ParameterBlock;->set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public set(JI)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Ljava/awt/image/renderable/ParameterBlock;->set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public set(SI)Ljava/awt/image/renderable/ParameterBlock;
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, v0, p2}, Ljava/awt/image/renderable/ParameterBlock;->set(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;

    move-result-object p0

    return-object p0
.end method

.method public setParameters(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/awt/image/renderable/ParameterBlock;->parameters:Ljava/util/Vector;

    return-void
.end method

.method public setSource(Ljava/lang/Object;I)Ljava/awt/image/renderable/ParameterBlock;
    .locals 2

    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    iget-object v0, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public setSources(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/awt/image/renderable/ParameterBlock;->sources:Ljava/util/Vector;

    return-void
.end method

.method public shallowClone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
