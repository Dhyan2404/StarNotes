.class public final Lorg/apache/poi/hslf/usermodel/HSLFLine;
.super Lorg/apache/poi/hslf/usermodel/HSLFTextShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Line;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFTextShape;",
        "Lorg/apache/poi/sl/usermodel/Line<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFLine;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    instance-of p1, p1, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFLine;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    return-void
.end method


# virtual methods
.method public createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/sl/usermodel/ShapeType;->LINE:Lorg/apache/poi/sl/usermodel/ShapeType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V

    sget-short v1, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    iget v0, v0, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeId:I

    const/4 v2, 0x4

    shl-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__SHAPEPATH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__FILLOK:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v1, 0x10000

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v1, 0x100000

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v1, 0x8000001

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v1, 0xa0008

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v1, 0x8000002

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-object p1
.end method

.method public getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-ne p1, v0, :cond_0

    sget-object p0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    :goto_0
    return-object p0
.end method
