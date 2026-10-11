.class public Lorg/apache/poi/hslf/usermodel/HSLFTextBox;
.super Lorg/apache/poi/hslf/usermodel/HSLFTextShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextBox;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFTextShape;",
        "Lorg/apache/poi/sl/usermodel/TextBox<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method


# virtual methods
.method public createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/sl/usermodel/ShapeType;->TEXT_BOX:Lorg/apache/poi/sl/usermodel/ShapeType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v1, 0x8000004

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLBACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v1, 0x8000000

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v1, 0x8000001

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v1, 0x80000

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v1, 0x8000002

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    return-object p1
.end method

.method public setDefaultTextProperties(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V
    .locals 1

    sget-object p1, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__SIZE_TEXT_TO_FIT_SHAPE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x20002

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method
