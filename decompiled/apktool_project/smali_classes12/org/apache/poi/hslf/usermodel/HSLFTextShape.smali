.class public abstract Lorg/apache/poi/hslf/usermodel/HSLFTextShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextShape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/TextShape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static final WrapByPoints:I = 0x1

.field public static final WrapNone:I = 0x2

.field public static final WrapSquare:I = 0x0

.field public static final WrapThrough:I = 0x4

.field public static final WrapTopBottom:I = 0x3


# instance fields
.field private _paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private _txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

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
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

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

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    .line 5
    instance-of p1, p1, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    return-void
.end method

.method private createEmptyParagraph()V
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    sget-wide v1, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_type:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/TextHeaderAtom;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->setParentRecord(Lorg/apache/poi/hslf/record/RecordContainer;)V

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    sget-wide v2, Lorg/apache/poi/hslf/record/TextBytesAtom;->_type:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/TextBytesAtom;

    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    sget-wide v3, Lorg/apache/poi/hslf/record/TextCharsAtom;->_type:J

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/record/TextCharsAtom;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/poi/hslf/record/TextBytesAtom;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/TextBytesAtom;-><init>()V

    new-array v4, v3, [B

    invoke-virtual {v1, v4}, Lorg/apache/poi/hslf/record/TextBytesAtom;->setText([B)V

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-virtual {v4, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/TextBytesAtom;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/TextCharsAtom;->getText()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    sget-wide v6, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->_type:J

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/record/StyleTextPropAtom;

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Lorg/apache/poi/hslf/record/StyleTextPropAtom;

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v6, v5}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;-><init>(I)V

    iget-object v7, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v5}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addParagraphTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v3

    invoke-virtual {v6, v5}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addCharacterTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v5

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move-object v8, v7

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v3

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v11

    invoke-virtual {v6, v11}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addCharacterTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharacterStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    move-object v8, v11

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v10}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addParagraphTextPropCollection(I)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    move-object v7, v9

    goto :goto_1

    :cond_5
    move-object v3, v7

    move-object v5, v8

    :goto_3
    iget-object v7, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-virtual {v7, v6}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getParagraphStyles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getCharacterStyles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-object v3, v6

    :goto_4
    iget-object v6, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v7, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-direct {v6, v0, v1, v2, v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;-><init>(Lorg/apache/poi/hslf/record/TextHeaderAtom;Lorg/apache/poi/hslf/record/TextBytesAtom;Lorg/apache/poi/hslf/record/TextCharsAtom;Ljava/util/List;)V

    invoke-virtual {v6, v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-virtual {v6, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParentShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {p0, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    invoke-virtual {p0, v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharacterStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-virtual {p0, v4}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->addTextRun(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)V

    :cond_7
    return-void
.end method

.method private getInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)D
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x4052000000000000L    # 72.0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr p0, p2

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    int-to-long p0, p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private setInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)V
    .locals 0

    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->storeText()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getEscherTextboxWrapper()Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;->getEscherRecord()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/record/PPDrawing;->addTextboxWrapper(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;->writeOut(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v1}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/geom/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->resizeToFitText()Ljava/awt/geom/Rectangle2D;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getShapeId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setShapeId(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->onAddTextShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V

    return-void
.end method

.method public appendText(Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->appendText(Ljava/util/List;Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRawText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setTextId(I)V

    return-object p1
.end method

.method public bridge synthetic appendText(Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/TextRun;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->appendText(Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    move-result-object p0

    return-object p0
.end method

.method public getAlignment()Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__ANCHORTEXT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRunType()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPlaceholderByTextType(I)Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p0, p0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-eq v0, p0, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getAlignment()Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->isTitle(I)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->MIDDLE:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->TOP:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->fromNativeId(I)Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_5

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->TOP:Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    :cond_5
    return-object p0
.end method

.method public getBottomInset()D
    .locals 3

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTBOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEscherTextboxWrapper()Lorg/apache/poi/hslf/record/EscherTextboxWrapper;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-short v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/PPDrawing;->getTextboxWrappers()[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;->getEscherRecord()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object v5

    if-ne v0, v5, :cond_2

    iput-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-direct {v1, v0}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;-><init>(Lorg/apache/poi/ddf/EscherTextboxRecord;)V

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-object v1
.end method

.method public getHFPlaceholderAtom()Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->RoundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    return-object p0
.end method

.method public getHyperlinks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->find(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 10

    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTopInset()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getLeftInset()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getBottomInset()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRightInset()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    return-object v9
.end method

.method public getLeftInset()D
    .locals 3

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTLEFT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMetroShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "TS;TP;>;P::",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "TS;TP;+",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            ">;>()",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "TS;TP;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hslf/model/HSLFMetroShape;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/HSLFMetroShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HSLFMetroShape;->getShape()Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderAtom()Lorg/apache/poi/hslf/record/OEPlaceholderAtom;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->OEPlaceholderAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    return-object p0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRawText(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRightInset()D
    .locals 3

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTRIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRunType()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getEscherTextboxWrapper()Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRunType()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toExternalString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTFLOW:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object p0
.end method

.method public getTextHeight()D
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTextHeight(Ljava/awt/Graphics2D;)D
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getTextId()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTID:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getEscherTextboxWrapper()Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->createEmptyParagraph()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->createEmptyParagraph()V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "TextRecord didn\'t contained any text lines"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParentShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    return-object p0
.end method

.method public getTextPlaceholder()Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRunType()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    move-result-object p0

    return-object p0
.end method

.method public getTextRotation()Ljava/lang/Double;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__FONTROTATION:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x4056800000000000L    # 90.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTopInset()D
    .locals 3

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTTOP:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getAlignment()Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->vAlign:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    return-object p0
.end method

.method public getWordWrap()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getWordWrapEx()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWordWrapEx()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__WRAPTEXT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isAlignToBaseline()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getAlignment()Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->baseline:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isHorizontalCentered()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getAlignment()Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object p0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->centered:Z

    return p0
.end method

.method public isPlaceholder()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getPlaceholderAtom()Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getHFPlaceholderAtom()Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public resizeToFitText()Ljava/awt/geom/Rectangle2D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->resizeToFitText(Ljava/awt/Graphics2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public resizeToFitText(Ljava/awt/Graphics2D;)Ljava/awt/geom/Rectangle2D;
    .locals 12

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    .line 3
    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Width of shape wasn\'t set. Defaulting to 200px"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    .line 6
    invoke-virtual {p0, v9}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextHeight(Ljava/awt/Graphics2D;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object p1

    .line 9
    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    iget-wide v10, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v0, v10

    iget-wide v10, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    add-double/2addr v10, v0

    move-object v0, v9

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    .line 10
    invoke-virtual {p0, v9}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object v9
.end method

.method public setAlignToBaseline(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->isHorizontalCentered()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setAlignment(Ljava/lang/Boolean;Lorg/apache/poi/sl/usermodel/VerticalAlignment;Z)V

    return-void
.end method

.method public setAlignment(Ljava/lang/Boolean;Lorg/apache/poi/sl/usermodel/VerticalAlignment;Z)V
    .locals 7

    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->values()[Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-boolean v5, v4, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->centered:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-ne v5, v6, :cond_2

    iget-object v5, v4, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->vAlign:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    if-ne v5, p2, :cond_2

    iget-object v5, v4, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->baseline:Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, p3, :cond_2

    :cond_1
    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__ANCHORTEXT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    iget p2, v4, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->nativeId:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public setBottomInset(D)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTBOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)V

    return-void
.end method

.method public setDefaultTextProperties(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V
    .locals 0

    return-void
.end method

.method public setHorizontalCentered(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getAlignment()Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->baseline:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setAlignment(Ljava/lang/Boolean;Lorg/apache/poi/sl/usermodel/VerticalAlignment;Z)V

    return-void
.end method

.method public setInsets(Lorg/apache/poi/sl/usermodel/Insets2D;)V
    .locals 2

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setTopInset(D)V

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setLeftInset(D)V

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setBottomInset(D)V

    iget-wide v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setRightInset(D)V

    return-void
.end method

.method public setLeftInset(D)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTLEFT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)V

    return-void
.end method

.method public setRightInset(D)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTRIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)V

    return-void
.end method

.method public setRunType(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getEscherTextboxWrapper()Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_txtbox:Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setRunType(I)V

    :cond_1
    return-void
.end method

.method public setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->supplySheet(Ljava/util/List;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setText(Ljava/util/List;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setTextId(I)V

    return-object p1
.end method

.method public bridge synthetic setText(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextRun;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setText(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    move-result-object p0

    return-object p0
.end method

.method public setTextDirection(Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTFLOW:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setTextId(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTID:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setTextPlaceholder(Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    goto :goto_0

    :pswitch_1
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->NOTES:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    goto :goto_0

    :pswitch_2
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->QUARTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->HALF_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setRunType(I)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTextRotation(Ljava/lang/Double;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__FONTROTATION:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v0, p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    rem-long/2addr v0, v2

    long-to-int p1, v0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__FONTROTATION:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    :goto_0
    return-void
.end method

.method public setTopInset(D)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTTOP:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setInset(Lorg/apache/poi/ddf/EscherPropertyTypes;D)V

    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->isHorizontalCentered()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getAlignment()Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextShape$HSLFTextAnchor;->baseline:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setAlignment(Ljava/lang/Boolean;Lorg/apache/poi/sl/usermodel/VerticalAlignment;Z)V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setWordWrapEx(I)V

    return-void
.end method

.method public setWordWrapEx(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__WRAPTEXT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->_paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public storeText()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->storeText(Ljava/util/List;)V

    return-void
.end method
