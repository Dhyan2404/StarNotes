.class public final Lorg/apache/poi/hslf/usermodel/HSLFTextRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextRun;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private _runText:Ljava/lang/String;

.field private cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

.field private characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

.field private link:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

.field private parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->_runText:Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->character:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/sl/usermodel/TextParagraph;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->lambda$getFieldType$1(Lorg/apache/poi/sl/usermodel/TextParagraph;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/sl/usermodel/TextShape;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->lambda$getFieldType$0(Lorg/apache/poi/sl/usermodel/TextShape;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private getMasterProp()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "Sheet is not available"

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "MasterSheet is not available"

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result p0

    const/4 v3, 0x1

    const-string v4, "char_flags"

    invoke-virtual {v1, v0, p0, v4, v3}, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;->getPropCollection(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->findByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private isCharFlagsTextPropVal(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getFieldType$0(Lorg/apache/poi/sl/usermodel/TextShape;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFieldType$1(Lorg/apache/poi/sl/usermodel/TextParagraph;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private safeFontGroup(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private setCharFlagsTextPropVal(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFlag(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setFlag(IZ)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    :cond_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v0, "char_flags"

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->addWithName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->setSubValue(ZI)V

    return-void
.end method


# virtual methods
.method public createHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->link:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->createHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->link:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    .line 4
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    .line 5
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->link:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    return-object p0
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->createHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getCharacterStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    return-object p0
.end method

.method public getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getParentShape()Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFTextRun$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->DATE_TIME:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/sl/usermodel/MasterSheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getMetroShape()Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    instance-of v0, p0, Lorg/apache/poi/sl/usermodel/TextShape;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextShape;

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/e8h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e8h;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/f8h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/f8h;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/g8h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g8h;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getFlag(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "char_flags"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->findByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->getSubPropMatches()[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getMasterProp()Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->getSubValue(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v2, "font.color"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getColorFromColorIndexStruct(ILorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/awt/Color;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFontIndex()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "font.index"

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->safeFontGroup(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_5

    if-nez v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const-string p1, "font.index,ansi.font.index"

    goto :goto_1

    :cond_2
    const-string p1, "symbol.font.index"

    goto :goto_1

    :cond_3
    const-string p1, "asian.font.index"

    .line 6
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    invoke-virtual {v2, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getFont(I)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object v1

    :cond_4
    return-object v1

    .line 8
    :cond_5
    :goto_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object v1, p0, p1

    :cond_6
    return-object v1
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "font.size"

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->link:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    return-object p0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->_runText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public getParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    return-object p0
.end method

.method public bridge synthetic getParagraph()Lorg/apache/poi/sl/usermodel/TextParagraph;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object p0

    return-object p0
.end method

.method public getPitchAndFamily()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->_runText:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperscript()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "superscript"

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->NONE:Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    return-object p0
.end method

.method public getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    return-object p0
.end method

.method public isBold()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->isCharFlagsTextPropVal(I)Z

    move-result p0

    return p0
.end method

.method public isEmbossed()Z
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->isCharFlagsTextPropVal(I)Z

    move-result p0

    return p0
.end method

.method public isItalic()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->isCharFlagsTextPropVal(I)Z

    move-result p0

    return p0
.end method

.method public isShadowed()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->isCharFlagsTextPropVal(I)Z

    move-result p0

    return p0
.end method

.method public isStrikethrough()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->isCharFlagsTextPropVal(I)Z

    move-result p0

    return p0
.end method

.method public isSubscript()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getSuperscript()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuperscript()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getSuperscript()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnderlined()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->isCharFlagsTextPropVal(I)Z

    move-result p0

    return p0
.end method

.method public setBold(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharFlagsTextPropVal(IZ)V

    return-void
.end method

.method public setCharTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setCharacterStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->characterStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->_runText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    return-void
.end method

.method public setEmbossed(Z)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharFlagsTextPropVal(IZ)V

    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    const-string v0, "font.color"

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setFontColor(Ljava/awt/Color;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 4

    .line 3
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result p1

    const/16 v3, 0xfe

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setFontColor(I)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HSLF only supports solid paint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setFontFamily(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontInfo;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    return-void
.end method

.method public setFontIndex(I)V
    .locals 1

    const-string v0, "font.index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontInfo;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->safeFontGroup(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_5

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const-string p2, "ansi.font.index"

    goto :goto_1

    :cond_2
    const-string p2, "symbol.font.index"

    goto :goto_1

    :cond_3
    const-string p2, "asian.font.index"

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {v2, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addFont(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getIndex()Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    const-string p1, "font.index"

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p2, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    if-nez v0, :cond_6

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->values()[Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    :cond_6
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p1, :cond_7

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    invoke-direct {v1, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V

    :cond_7
    aput-object v1, p0, p2

    return-void
.end method

.method public setFontSize(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const-string v0, "font.size"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->link:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    return-void
.end method

.method public setItalic(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharFlagsTextPropVal(IZ)V

    return-void
.end method

.method public setShadowed(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharFlagsTextPropVal(IZ)V

    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharFlagsTextPropVal(IZ)V

    return-void
.end method

.method public setSuperscript(I)V
    .locals 1

    const-string v0, "superscript"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toInternalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->_runText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->_runText:Ljava/lang/String;

    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getLoadSavePhase()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;->LOADED:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow$LoadSavePhase;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->parentParagraph:Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "text must not be null"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUnderlined(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharFlagsTextPropVal(IZ)V

    return-void
.end method

.method public updateSheet()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->values()[Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p0, v4, v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontInfo;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->cachedFontInfo:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    :cond_1
    return-void
.end method
