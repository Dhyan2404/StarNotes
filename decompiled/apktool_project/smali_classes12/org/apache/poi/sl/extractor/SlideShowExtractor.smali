.class public Lorg/apache/poi/sl/extractor/SlideShowExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POITextExtractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;+",
        "Lorg/apache/poi/sl/usermodel/TextRun;",
        ">;>",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/extractor/POITextExtractor;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final SLIDE_NUMBER_PH:Ljava/lang/String; = "\u2039#\u203a"


# instance fields
.field private commentsByDefault:Z

.field private doCloseFilesystem:Z

.field private filter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private masterByDefault:Z

.field private notesByDefault:Z

.field private slidesByDefault:Z

.field protected final slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/SlideShow;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slidesByDefault:Z

    new-instance v1, Lcom/sunia/HTREnginev2/cum;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/cum;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    iput-boolean v0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->doCloseFilesystem:Z

    iput-object p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    return-void
.end method

.method public static synthetic H(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$getCodepointsInSparseBitSet$5(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Lcom/zaxxer/sparsebits/SparseBitSet;Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$getCodepointsInSparseBitSet$7(Lcom/zaxxer/sparsebits/SparseBitSet;Lorg/apache/poi/sl/usermodel/Slide;)V

    return-void
.end method

.method public static synthetic M(Lorg/apache/poi/sl/usermodel/Comment;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$printComments$1(Lorg/apache/poi/sl/usermodel/Comment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addOLEShapes(Ljava/util/List;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/usermodel/ObjectShape<",
            "TS;TP;>;>;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "TS;TP;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/ShapeContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/sl/usermodel/ShapeContainer;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->addOLEShapes(Ljava/util/List;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/ObjectShape;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sl/usermodel/ObjectShape;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addSheetPlaceholderDatails(Lorg/apache/poi/sl/usermodel/Sheet;Lorg/apache/poi/sl/usermodel/Placeholder;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "TS;TP;>;",
            "Lorg/apache/poi/sl/usermodel/Placeholder;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/apache/poi/sl/usermodel/Sheet;->getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/sl/usermodel/PlaceholderDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getText()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic e0(Ljava/util/BitSet;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$null$3(Ljava/util/BitSet;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/zaxxer/sparsebits/SparseBitSet;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$null$6(Lcom/zaxxer/sparsebits/SparseBitSet;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f0(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->replaceSlideNumber(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static filterFonts(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/sl/usermodel/TextRun;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/apache/poi/sl/usermodel/TextRun;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p1, p2, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static synthetic g0(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$new$0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getText(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slidesByDefault:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printShapeText(Lorg/apache/poi/sl/usermodel/Sheet;Ljava/util/function/Consumer;)V

    .line 10
    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->masterByDefault:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printSlideMaster(Lorg/apache/poi/sl/usermodel/MasterSheet;Ljava/util/function/Consumer;)V

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideLayout()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 14
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printSlideMaster(Lorg/apache/poi/sl/usermodel/MasterSheet;Ljava/util/function/Consumer;)V

    .line 15
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->commentsByDefault:Z

    if-eqz v0, :cond_2

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printComments(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V

    .line 17
    :cond_2
    iget-boolean v0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->notesByDefault:Z

    if-eqz v0, :cond_3

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printNotes(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public static synthetic h0(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$getCodepoints$2(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Ljava/util/BitSet;Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->lambda$getCodepoints$4(Ljava/util/BitSet;Lorg/apache/poi/sl/usermodel/Slide;)V

    return-void
.end method

.method private static synthetic lambda$getCodepoints$2(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p3, p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filterFonts(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getCodepoints$4(Ljava/util/BitSet;Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dum;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/dum;-><init>(Ljava/util/BitSet;)V

    invoke-direct {p0, p2, v0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->getText(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$getCodepointsInSparseBitSet$5(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p3, p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filterFonts(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getCodepointsInSparseBitSet$7(Lcom/zaxxer/sparsebits/SparseBitSet;Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xtm;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/xtm;-><init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    invoke-direct {p0, p2, v0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->getText(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$null$3(Ljava/util/BitSet;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/ytm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ytm;-><init>(Ljava/util/BitSet;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private static synthetic lambda$null$6(Lcom/zaxxer/sparsebits/SparseBitSet;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/ium;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ium;-><init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private static synthetic lambda$printComments$1(Lorg/apache/poi/sl/usermodel/Comment;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Comment;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Comment;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private printComments(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Slide;->getComments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/hum;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/hum;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private printHeaderFooter(Lorg/apache/poi/sl/usermodel/Sheet;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Slide;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, p1, v1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->addSheetPlaceholderDatails(Lorg/apache/poi/sl/usermodel/Sheet;Lorg/apache/poi/sl/usermodel/Placeholder;Ljava/util/function/Consumer;)V

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->addSheetPlaceholderDatails(Lorg/apache/poi/sl/usermodel/Sheet;Lorg/apache/poi/sl/usermodel/Placeholder;Ljava/util/function/Consumer;)V

    iget-boolean p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->masterByDefault:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/TextShape;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getPlaceholderDetails()Lorg/apache/poi/sl/usermodel/PlaceholderDetails;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lorg/apache/poi/sl/extractor/SlideShowExtractor$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/eum;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/eum;-><init>()V

    const-string v2, "\n"

    invoke-direct {p0, v0, p3, v2, v1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/util/function/Function;)V

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method private printNotes(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Slide;->getNotes()Lorg/apache/poi/sl/usermodel/Notes;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/kum;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/kum;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printHeaderFooter(Lorg/apache/poi/sl/usermodel/Sheet;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printShapeText(Lorg/apache/poi/sl/usermodel/Sheet;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private printShapeText(Lorg/apache/poi/sl/usermodel/ShapeContainer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Shape;

    .line 6
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/TextShape;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/TableShape;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lorg/apache/poi/sl/usermodel/TableShape;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printShapeText(Lorg/apache/poi/sl/usermodel/TableShape;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/ShapeContainer;

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lorg/apache/poi/sl/usermodel/ShapeContainer;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printShapeText(Lorg/apache/poi/sl/usermodel/ShapeContainer;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private printShapeText(Lorg/apache/poi/sl/usermodel/Sheet;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Lcom/sunia/HTREnginev2/kum;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/kum;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printHeaderFooter(Lorg/apache/poi/sl/usermodel/Sheet;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printShapeText(Lorg/apache/poi/sl/usermodel/ShapeContainer;Ljava/util/function/Consumer;)V

    .line 4
    invoke-interface {v0, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private printShapeText(Lorg/apache/poi/sl/usermodel/TableShape;Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result v0

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    const-string v4, ""

    move v5, v2

    :goto_1
    const-string v6, "\n"

    if-ge v5, v1, :cond_2

    .line 14
    invoke-interface {p1, v3, v5}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v7

    if-eqz v7, :cond_1

    add-int/lit8 v4, v1, -0x1

    if-ge v5, v4, :cond_0

    const-string v6, "\t"

    .line 15
    :cond_0
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, p2, v6}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;)V

    move-object v4, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    invoke-interface {v4, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    invoke-interface {p2, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private printSlideMaster(Lorg/apache/poi/sl/usermodel/MasterSheet;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "TS;TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/TextShape;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextShape;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->isPlaceholder()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v2, "Ignoring boiler plate (placeholder) text on slide master: {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\n"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method private printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/bum;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bum;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/util/function/Function;)V

    return-void
.end method

.method private printTextParagraphs(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TP;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/TextParagraph;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/TextRun;

    .line 5
    iget-object v2, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    invoke-interface {v2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    invoke-interface {v0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static replaceSlideNumber(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2039#\u203a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->getParagraph()Lorg/apache/poi/sl/usermodel/TextParagraph;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Shape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object v2

    :cond_2
    instance-of p0, v2, Lorg/apache/poi/sl/usermodel/Slide;

    if-eqz p0, :cond_3

    check-cast v2, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideNumber()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static replaceTextCap(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->getParagraph()Lorg/apache/poi/sl/usermodel/TextParagraph;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    const/16 v2, 0xa

    if-eq v1, v0, :cond_3

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    if-eq v1, v0, :cond_3

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->SUBTITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x20

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/extractor/SlideShowExtractor$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public static synthetic w(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->replaceTextCap(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCodepoints(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/BitSet;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    :try_start_0
    new-instance v2, Lcom/sunia/HTREnginev2/ztm;

    invoke-direct {v2, p1, p2, p3}, Lcom/sunia/HTREnginev2/ztm;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v2, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    iget-object p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/aum;

    invoke-direct {p2, p0, v0}, Lcom/sunia/HTREnginev2/aum;-><init>(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Ljava/util/BitSet;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    return-object v0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    throw p1
.end method

.method public getCodepointsInSparseBitSet(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    :try_start_0
    new-instance v2, Lcom/sunia/HTREnginev2/fum;

    invoke-direct {v2, p1, p2, p3}, Lcom/sunia/HTREnginev2/fum;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v2, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    iget-object p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/gum;

    invoke-direct {p2, p0, v0}, Lcom/sunia/HTREnginev2/gum;-><init>(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Lcom/zaxxer/sparsebits/SparseBitSet;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    return-object v0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->filter:Ljava/util/function/Predicate;

    throw p1
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->getDocument()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->getFilesystem()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->getDocument()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public getOLEShapes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/sl/usermodel/ObjectShape<",
            "TS;TP;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->addOLEShapes(Ljava/util/List;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/usermodel/Slide;

    .line 3
    new-instance v3, Lcom/sunia/HTREnginev2/jum;

    invoke-direct {v3, v0}, Lcom/sunia/HTREnginev2/jum;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->getText(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText(Lorg/apache/poi/sl/usermodel/Slide;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "TS;TP;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Lcom/sunia/HTREnginev2/jum;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/jum;-><init>(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->getText(Lorg/apache/poi/sl/usermodel/Slide;Ljava/util/function/Consumer;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->doCloseFilesystem:Z

    return-void
.end method

.method public setCommentsByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->commentsByDefault:Z

    return-void
.end method

.method public setMasterByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->masterByDefault:Z

    return-void
.end method

.method public setNotesByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->notesByDefault:Z

    return-void
.end method

.method public setSlidesByDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slidesByDefault:Z

    return-void
.end method
