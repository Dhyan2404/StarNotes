.class public abstract Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;
.super Lorg/apache/poi/convert/AbstractWordConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;,
        Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEL_MARK:B = 0x7t

.field private static final FIELD_BEGIN_MARK:B = 0x13t

.field private static final FIELD_DROP_DOWN:I = 0x53

.field private static final FIELD_EMBEDDED_OBJECT:I = 0x3a

.field private static final FIELD_END_MARK:B = 0x15t

.field private static final FIELD_HYPERLINK:I = 0x58

.field private static final FIELD_PAGE_REFERENCE:I = 0x25

.field private static final FIELD_SEPARATOR_MARK:B = 0x14t

.field private static final PATTERN_HYPERLINK_EXTERNAL:Ljava/util/regex/Pattern;

.field private static final PATTERN_HYPERLINK_LOCAL:Ljava/util/regex/Pattern;

.field private static final PATTERN_PAGEREF:Ljava/util/regex/Pattern;

.field protected static final PATTERN_TOC:Ljava/util/regex/Pattern;

.field private static final SPECCHAR_AUTONUMBERED_FOOTNOTE_REFERENCE:B = 0x2t

.field private static final SPECCHAR_DRAWN_OBJECT:B = 0x8t

.field protected static final UNICODECHAR_NONBREAKING_HYPHEN:C = '\u2011'

.field protected static final UNICODECHAR_NO_BREAK_SPACE:C = '\u00a0'

.field protected static final UNICODECHAR_ZERO_WIDTH_SPACE:C = '\u200b'


# instance fields
.field protected final bookmarkStack:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/poi/hwpf/usermodel/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field protected documentCore:Lorg/apache/poi/hwpf/HWPFDocumentCore;

.field protected documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

.field protected fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

.field protected numberingState:Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;

.field protected tocIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[ \\t\\r\\n]*HYPERLINK \"(.*)\".*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_HYPERLINK_EXTERNAL:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*HYPERLINK \\\\l \"(.*)\"[ ](.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_HYPERLINK_LOCAL:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*PAGEREF ([^ ]*)[ \\t\\r\\n]*\\\\h.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_PAGEREF:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*TOC \\\\o \"(.*)\".*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_TOC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractWordConverter;-><init>()V

    new-instance v0, Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-direct {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance v0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;

    invoke-direct {v0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->numberingState:Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->bookmarkStack:Ljava/util/Set;

    new-instance v0, Lorg/apache/poi/hwpf/converter/DefaultFontReplacer;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/converter/DefaultFontReplacer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->setUpNewDocument()V

    iput-object p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentCore:Lorg/apache/poi/hwpf/HWPFDocumentCore;

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/MetaData;->readProperties(Lorg/apache/poi/POIDocument;)V

    return-void
.end method

.method private static addToStructures(Ljava/util/List;Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;",
            ">;",
            "Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;

    iget v2, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->start:I

    iget v3, p1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->start:I

    if-gt v2, v3, :cond_1

    iget v4, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    if-lt v4, v3, :cond_1

    return-void

    :cond_1
    if-ge v3, v2, :cond_2

    iget v4, p1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    if-lt v2, v4, :cond_4

    :cond_2
    if-ge v3, v2, :cond_3

    iget v4, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    iget v5, p1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    if-le v4, v5, :cond_4

    :cond_3
    if-gt v3, v2, :cond_0

    iget v1, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    iget v2, p1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    if-ge v1, v2, :cond_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private processOle2(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getObjectsPool()Lorg/apache/poi/hwpf/usermodel/ObjectsPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getPicOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hwpf/usermodel/ObjectsPool;->getObjectById(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getPicOffset()I

    move-result p1

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Referenced OLE2 object \'{}\' not found in ObjectPool"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processOle2(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/jsoup/nodes/Element;Lorg/apache/poi/poifs/filesystem/Entry;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 5
    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getPicOffset()I

    move-result p1

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Unable to convert internal OLE2 object \'{}\'"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method private tryDeadField_lookupFieldSeparatorEnd(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;I)[I
    .locals 6

    const/4 v0, 0x1

    add-int/2addr p3, v0

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result v3

    const/4 v4, 0x0

    if-ge p3, v3, :cond_5

    invoke-virtual {p2, p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x13

    if-ne v3, v5, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->tryDeadField_lookupFieldSeparatorEnd(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;I)[I

    move-result-object v3

    if-eqz v3, :cond_4

    aget p3, v3, v0

    goto :goto_1

    :cond_1
    const/16 v5, 0x14

    if-ne v3, v5, :cond_3

    if-eq v2, v1, :cond_2

    return-object v4

    :cond_2
    move v2, p3

    goto :goto_1

    :cond_3
    const/16 v5, 0x15

    if-ne v3, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/2addr p3, v0

    goto :goto_0

    :cond_5
    move p3, v1

    :goto_2
    if-eq v2, v1, :cond_7

    if-ne p3, v1, :cond_6

    goto :goto_3

    :cond_6
    filled-new-array {v2, p3}, [I

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    return-object v4
.end method


# virtual methods
.method public afterProcess(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V
    .locals 0

    return-void
.end method

.method public closeImpl()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentCore:Lorg/apache/poi/hwpf/HWPFDocumentCore;

    invoke-static {v0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentCore:Lorg/apache/poi/hwpf/HWPFDocumentCore;

    return-void
.end method

.method public convert()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentCore:Lorg/apache/poi/hwpf/HWPFDocumentCore;

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDocument(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V

    return-void
.end method

.method public createBlock(Lorg/apache/poi/hwpf/usermodel/Section;)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->pageSize:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->readSectionPageSize(Lorg/apache/poi/hwpf/usermodel/Section;Ljava/awt/geom/Rectangle2D;)V

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v2, "d"

    invoke-static {p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getSectionStyle(Lorg/apache/poi/hwpf/usermodel/Section;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public getCharacterRunTriplet(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;
    .locals 2

    new-instance v0, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isBold()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->bold:Z

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isItalic()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->italic:Z

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getFontName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->fontName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getFontReplacer()Lorg/apache/poi/hwpf/converter/FontReplacer;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/poi/hwpf/converter/FontReplacer;->update(Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;)Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;

    move-result-object p0

    return-object p0
.end method

.method public getFontReplacer()Lorg/apache/poi/hwpf/converter/FontReplacer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

    return-object p0
.end method

.method public getNumberColumnsSpanned([IILorg/apache/poi/hwpf/usermodel/TableCell;)I
    .locals 1

    invoke-virtual {p3}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getLeftEdge()I

    move-result p0

    invoke-virtual {p3}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getWidth()I

    move-result p3

    add-int/2addr p0, p3

    const/4 p3, 0x0

    :goto_0
    aget v0, p1, p2

    if-ge v0, p0, :cond_0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public getNumberRowsSpanned(Lorg/apache/poi/hwpf/usermodel/Table;[IIILorg/apache/poi/hwpf/usermodel/TableCell;)I
    .locals 8

    invoke-virtual {p5}, Lorg/apache/poi/hwpf/usermodel/TableCell;->isFirstVerticallyMerged()Z

    move-result p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/Table;->numRows()I

    move-result p5

    add-int/2addr p3, v0

    move v1, v0

    :goto_0
    if-ge p3, p5, :cond_9

    invoke-virtual {p1, p3}, Lorg/apache/poi/hwpf/usermodel/Table;->getRow(I)Lorg/apache/poi/hwpf/usermodel/TableRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/usermodel/TableRow;->numCells()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Error table num cells of row {}"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/usermodel/TableRow;->numCells()I

    move-result v3

    if-lt p4, v3, :cond_3

    goto :goto_6

    :cond_3
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/usermodel/TableRow;->numCells()I

    move-result v6

    if-ge v4, v6, :cond_7

    invoke-virtual {v2, v4}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getCell(I)Lorg/apache/poi/hwpf/usermodel/TableCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hwpf/usermodel/TableCell;->isVerticallyMerged()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/hwpf/usermodel/TableCell;->isFirstVerticallyMerged()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2, v5, v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getNumberColumnsSpanned([IILorg/apache/poi/hwpf/usermodel/TableCell;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p2, v5, v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getNumberColumnsSpanned([IILorg/apache/poi/hwpf/usermodel/TableCell;)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v6, :cond_6

    move v3, v0

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2, p4}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getCell(I)Lorg/apache/poi/hwpf/usermodel/TableCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/usermodel/TableCell;->isVerticallyMerged()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/usermodel/TableCell;->isFirstVerticallyMerged()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_6

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    :goto_6
    return v1
.end method

.method public abstract outputCharacters(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Ljava/lang/String;)V
.end method

.method public abstract processBookmarks(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hwpf/HWPFDocumentCore;",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/apache/poi/hwpf/usermodel/Range;",
            "I",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/usermodel/Bookmark;",
            ">;)V"
        }
    .end annotation
.end method

.method public processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v13, 0x0

    if-nez v11, :cond_0

    return v13

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    instance-of v14, v0, Lorg/apache/poi/hwpf/HWPFDocument;

    const/16 v15, 0x13

    const/4 v8, 0x1

    if-eqz v14, :cond_9

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/HWPFDocument;->getBookmarks()Lorg/apache/poi/hwpf/usermodel/Bookmarks;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/apache/poi/hwpf/usermodel/Bookmarks;->getBookmarksStartedBetween(II)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hwpf/usermodel/Bookmark;

    iget-object v6, v9, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->bookmarkStack:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;

    invoke-direct {v6, v5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;-><init>(Lorg/apache/poi/hwpf/usermodel/Bookmark;)V

    invoke-static {v1, v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->addToStructures(Ljava/util/List;Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;)V

    goto :goto_0

    :cond_3
    move v3, v13

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v11, v3}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v5

    const/4 v6, -0x1

    if-ge v5, v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v15, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/HWPFDocument;->getFields()Lorg/apache/poi/hwpf/usermodel/Fields;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/hwpf/model/FieldsDocumentPart;->MAIN:Lorg/apache/poi/hwpf/model/FieldsDocumentPart;

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lorg/apache/poi/hwpf/usermodel/Fields;->getFieldByStartOffset(Lorg/apache/poi/hwpf/model/FieldsDocumentPart;I)Lorg/apache/poi/hwpf/usermodel/Field;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v4, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;

    invoke-direct {v4, v5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;-><init>(Lorg/apache/poi/hwpf/usermodel/Field;)V

    invoke-static {v1, v4}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->addToStructures(Ljava/util/List;Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;)V

    goto :goto_2

    :cond_6
    invoke-direct {v9, v0, v11, v3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->tryDeadField_lookupFieldSeparatorEnd(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;I)[I

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;

    new-instance v7, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;

    aget v15, v5, v13

    aget v13, v5, v8

    invoke-direct {v7, v3, v15, v13}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;-><init>(III)V

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v3

    aget v4, v5, v8

    invoke-virtual {v11, v4}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v4

    invoke-direct {v6, v7, v3, v4}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;II)V

    invoke-static {v1, v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->addToStructures(Ljava/util/List;Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;)V

    aget v3, v5, v8

    :cond_7
    :goto_2
    add-int/2addr v3, v8

    const/4 v13, 0x0

    const/16 v15, 0x13

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;

    iget v2, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->start:I

    if-eq v2, v1, :cond_a

    new-instance v2, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$1;

    iget v3, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->start:I

    invoke-direct {v2, v9, v1, v3, v11}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$1;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V

    invoke-virtual {v9, v0, v10, v2, v12}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    :cond_a
    iget-object v1, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->structure:Ljava/lang/Object;

    instance-of v2, v1, Lorg/apache/poi/hwpf/usermodel/Bookmark;

    if-eqz v2, :cond_d

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/HWPFDocument;->getBookmarks()Lorg/apache/poi/hwpf/usermodel/Bookmarks;

    move-result-object v1

    iget v2, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->start:I

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v2, v3}, Lorg/apache/poi/hwpf/usermodel/Bookmarks;->getBookmarksStartedBetween(II)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/usermodel/Bookmark;

    invoke-interface {v2}, Lorg/apache/poi/hwpf/usermodel/Bookmark;->getStart()I

    move-result v3

    iget v4, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->start:I

    if-ne v3, v4, :cond_b

    invoke-interface {v2}, Lorg/apache/poi/hwpf/usermodel/Bookmark;->getEnd()I

    move-result v3

    iget v4, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    if-ne v3, v4, :cond_b

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object v1, v9, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->bookmarkStack:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v1

    iget v2, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v4, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$2;

    iget v2, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->start:I

    invoke-direct {v4, v9, v2, v1, v11}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$2;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v5, p2

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processBookmarks(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v9, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->bookmarkStack:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    iget-object v1, v9, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->bookmarkStack:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    throw v0

    :cond_d
    instance-of v2, v1, Lorg/apache/poi/hwpf/usermodel/Field;

    if-eqz v2, :cond_e

    move-object v5, v1

    check-cast v5, Lorg/apache/poi/hwpf/usermodel/Field;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processField(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/Range;ILorg/apache/poi/hwpf/usermodel/Field;Lorg/jsoup/nodes/Element;)V

    :goto_5
    move-object/from16 v18, v13

    move v13, v8

    goto :goto_6

    :cond_e
    instance-of v2, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;

    if-eqz v2, :cond_f

    check-cast v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;

    iget v6, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;->beginMark:I

    iget v7, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;->separatorMark:I

    iget v5, v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;->endMark:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move/from16 v17, v5

    move/from16 v5, p2

    move-object/from16 v18, v13

    move v13, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDeadField(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;IIII)V

    :goto_6
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v1

    iget v2, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->end:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v8, v13

    move-object/from16 v13, v18

    goto/16 :goto_3

    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NYI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$Structure;->structure:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v13, v8

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v2

    if-eq v1, v2, :cond_13

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v2

    if-le v1, v2, :cond_11

    iget-object v0, v9, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Latest structure in "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ended at #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " after range boundaries ["

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ")"

    move-object v1, v2

    move-object/from16 v2, p3

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v13

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v2

    if-ge v1, v2, :cond_12

    new-instance v2, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$3;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v3

    invoke-direct {v2, v9, v1, v3, v11}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$3;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V

    invoke-virtual {v9, v0, v10, v2, v12}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    :cond_12
    return v13

    :cond_13
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result v1

    if-ge v7, v1, :cond_30

    invoke-virtual {v11, v7}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v1

    if-eqz v1, :cond_2f

    if-eqz v14, :cond_15

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/HWPFDocument;->getPicturesTable()Lorg/apache/poi/hwpf/model/PicturesTable;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hwpf/model/PicturesTable;->hasPicture(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/HWPFDocument;->getPicturesTable()Lorg/apache/poi/hwpf/model/PicturesTable;

    move-result-object v2

    invoke-virtual {v2, v1, v13}, Lorg/apache/poi/hwpf/model/PicturesTable;->extractPicture(Lorg/apache/poi/hwpf/usermodel/CharacterRun;Z)Lorg/apache/poi/hwpf/usermodel/Picture;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_14

    move v1, v13

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v9, v12, v1, v2}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processImage(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;)V

    goto :goto_9

    :cond_15
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_17
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isSpecialCharacter()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    if-eqz v14, :cond_18

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v9, v2, v1, v12}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processNoteAnchor(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_c

    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x8

    if-ne v4, v3, :cond_19

    if-eqz v14, :cond_19

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v9, v2, v1, v12}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDrawnObject(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)V

    goto :goto_9

    :cond_19
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isOle2()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v14, :cond_1a

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v9, v2, v1, v12}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processOle2(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)Z

    goto :goto_9

    :cond_1a
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isSymbol()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v14, :cond_1b

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v9, v2, v1, v12}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processSymbol(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)V

    goto :goto_9

    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v15, 0x13

    if-ne v4, v15, :cond_1f

    if-eqz v14, :cond_1d

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/HWPFDocument;->getFields()Lorg/apache/poi/hwpf/usermodel/Fields;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/hwpf/model/FieldsDocumentPart;->MAIN:Lorg/apache/poi/hwpf/model/FieldsDocumentPart;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v1

    invoke-interface {v3, v4, v1}, Lorg/apache/poi/hwpf/usermodel/Fields;->getFieldByStartOffset(Lorg/apache/poi/hwpf/model/FieldsDocumentPart;I)Lorg/apache/poi/hwpf/usermodel/Field;

    move-result-object v16

    if-eqz v16, :cond_1d

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v5, v16

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processField(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/Range;ILorg/apache/poi/hwpf/usermodel/Field;Lorg/jsoup/nodes/Element;)V

    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/hwpf/usermodel/Field;->getFieldEndOffset()I

    move-result v1

    :goto_a
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result v2

    if-ge v7, v2, :cond_1c

    invoke-virtual {v11, v7}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v2

    if-gt v2, v1, :cond_1c

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_1c
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result v1

    if-ge v7, v1, :cond_1e

    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_1d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p2

    move v5, v7

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->tryDeadField(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;IILorg/jsoup/nodes/Element;)I

    move-result v1

    if-eq v1, v7, :cond_16

    move v7, v1

    :cond_1e
    :goto_b
    move v2, v13

    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_1f
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_20

    :goto_c
    move v1, v3

    goto/16 :goto_11

    :cond_20
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x15

    if-ne v4, v3, :cond_21

    goto/16 :goto_9

    :cond_21
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isSpecialCharacter()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isObj()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isOle2()Z

    move-result v3

    if-eqz v3, :cond_22

    goto/16 :goto_9

    :cond_22
    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_24

    const/high16 v3, -0x80000000

    if-eq v10, v3, :cond_24

    :cond_23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v13

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_2c

    aget-char v15, v4, v6

    const/16 v13, 0xb

    if-ne v15, v13, :cond_26

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_25

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v1, v13}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->outputCharacters(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_25
    invoke-virtual {v9, v12, v1}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processLineBreak(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;)V

    goto :goto_e

    :cond_26
    const/16 v13, 0x1e

    if-ne v15, v13, :cond_27

    const/16 v13, 0x2011

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_27
    const/16 v13, 0x1f

    if-ne v15, v13, :cond_28

    const/16 v13, 0x200b

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_28
    invoke-static {v15}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v13

    if-eqz v13, :cond_29

    const/16 v13, 0xa0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_29
    const/16 v13, 0x20

    if-ge v15, v13, :cond_2a

    const/16 v13, 0x9

    if-eq v15, v13, :cond_2a

    const/16 v13, 0xa

    if-eq v15, v13, :cond_2a

    const/16 v13, 0xd

    if-ne v15, v13, :cond_2b

    :cond_2a
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2b
    :goto_e
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x1

    const/16 v15, 0x13

    goto :goto_d

    :cond_2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v12, v1, v4}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->outputCharacters(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_f

    :cond_2d
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_10

    :cond_2e
    move v2, v1

    :goto_10
    or-int/2addr v8, v2

    :goto_11
    const/4 v2, 0x1

    :goto_12
    add-int/2addr v7, v2

    move v13, v2

    goto/16 :goto_7

    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_30
    return v8
.end method

.method public processDeadField(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;IIII)V
    .locals 9

    move-object v0, p0

    move-object v1, p3

    move v2, p6

    move/from16 v3, p7

    add-int/lit8 v4, p5, 0x1

    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v3, :cond_0

    new-instance v7, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$4;

    invoke-virtual {p3, v4}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v4

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p3, v8}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v8

    invoke-direct {v7, p0, v4, v8, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$4;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V

    new-instance v4, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$5;

    invoke-virtual {p3, v6}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v6

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p3, v8}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v8

    invoke-direct {v4, p0, v6, v8, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$5;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_HYPERLINK_LOCAL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processPageref(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported field type: \n"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, p5

    :goto_0
    if-gt v6, v3, :cond_1

    const-string v7, "\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$6;

    invoke-virtual {p3, p6}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p3, v3}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v7

    invoke-direct {v4, p0, v6, v7, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$6;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V

    add-int/lit8 v1, v2, 0x1

    if-ge v1, v3, :cond_2

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-virtual {p0, p1, p4, v4, p2}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    :cond_2
    return-void
.end method

.method public processDocument(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDocumentInformation(Lorg/apache/poi/hpsf/SummaryInformation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to process document summary information: "

    invoke-interface {v1, v2, v0, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocumentCore;->getRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->numSections()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwpf/usermodel/Range;->getSection(I)Lorg/apache/poi/hwpf/usermodel/Section;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processSingleSection(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Section;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->afterProcess(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->afterProcess(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V

    return-void
.end method

.method public abstract processDocumentInformation(Lorg/apache/poi/hpsf/SummaryInformation;)V
.end method

.method public processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->numSections()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/apache/poi/hwpf/usermodel/Range;->getSection(I)Lorg/apache/poi/hwpf/usermodel/Section;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processSection(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Section;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract processDrawnObject(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;Lorg/jsoup/nodes/Element;)V
.end method

.method public processDrawnObject(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractConverter;->getPicturesManager()Lorg/apache/poi/picture/PicturesManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocument;->getOfficeDrawingsMain()Lorg/apache/poi/hwpf/usermodel/OfficeDrawings;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawings;->getOfficeDrawingAt(I)Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Characters #{} references missing drawn object"

    invoke-interface {p0, p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDrawnObject(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method public processDropDownList(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;[Ljava/lang/String;I)V
    .locals 0

    aget-object p3, p3, p4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->outputCharacters(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Ljava/lang/String;)V

    return-void
.end method

.method public abstract processEndnoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V
.end method

.method public processField(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/Range;ILorg/apache/poi/hwpf/usermodel/Field;Lorg/jsoup/nodes/Element;)V
    .locals 10

    invoke-interface {p4}, Lorg/apache/poi/hwpf/usermodel/Field;->getType()I

    move-result v0

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->firstSubrange(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_HYPERLINK_EXTERNAL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->secondSubrange(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p5

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processHyperlink(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V

    return-void

    :cond_1
    sget-object v3, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_HYPERLINK_LOCAL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$7;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v2

    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v3

    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->end(I)I

    move-result p2

    add-int/2addr v3, p2

    invoke-direct {p4, p0, v2, v3, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$7;-><init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V

    move-object v7, p4

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    move-object v7, p2

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move-object v6, p5

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processPageref(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->firstSubrange(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getDropDownListValues()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getDropDownListDefaultItemIndex()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_9

    array-length v3, v1

    if-lez v3, :cond_9

    if-nez v2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p5, v0, v1, p1}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDropDownList(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;[Ljava/lang/String;I)V

    return-void

    :cond_5
    invoke-interface {p4}, Lorg/apache/poi/hwpf/usermodel/Field;->hasSeparator()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "{} contains {} with \'Embedded Object\' but without separator mark"

    invoke-interface {p0, p1, p2, p4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->getMarkSeparatorCharacterRun(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isOle2()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p1, v0, p5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processOle2(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->secondSubrange(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2, p5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    :cond_7
    return-void

    :cond_8
    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->firstSubrange(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_PAGEREF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->secondSubrange(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p5

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processPageref(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V

    return-void

    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "{} contains {} with unsupported type or format"

    invoke-interface {v0, v1, p2, p4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Field;->secondSubrange(Lorg/apache/poi/hwpf/usermodel/Range;)Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2, p5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    return-void
.end method

.method public abstract processFootnoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V
.end method

.method public abstract processHyperlink(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V
.end method

.method public processImage(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;

    invoke-direct {v1, p3}, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;-><init>(Lorg/apache/poi/hwpf/usermodel/Picture;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/picture/PicturesManager;->processPicture(Lorg/apache/poi/wp/usermodel/IPicture;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processImage(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processImageWithoutPicturesManager(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;)V

    return-void
.end method

.method public abstract processImage(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;Ljava/lang/String;)V
.end method

.method public abstract processImageWithoutPicturesManager(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;)V
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public abstract processLineBreak(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;)V
.end method

.method public processNoteAnchor(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocument;->getFootnotes()Lorg/apache/poi/hwpf/usermodel/Notes;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hwpf/usermodel/Notes;->getNoteIndexByAnchorPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocument;->getFootnoteRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result p2

    invoke-interface {v0, v1}, Lorg/apache/poi/hwpf/usermodel/Notes;->getNoteTextStartOffset(I)I

    move-result v2

    invoke-interface {v0, v1}, Lorg/apache/poi/hwpf/usermodel/Notes;->getNoteTextEndOffset(I)I

    move-result v0

    new-instance v3, Lorg/apache/poi/hwpf/usermodel/Range;

    add-int/2addr v2, p2

    add-int/2addr p2, v0

    invoke-direct {v3, v2, p2, p1}, Lorg/apache/poi/hwpf/usermodel/Range;-><init>(IILorg/apache/poi/hwpf/HWPFDocumentCore;)V

    invoke-virtual {p0, p1, v1, p3, v3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processFootnoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocument;->getEndnotes()Lorg/apache/poi/hwpf/usermodel/Notes;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result p2

    invoke-interface {v0, p2}, Lorg/apache/poi/hwpf/usermodel/Notes;->getNoteIndexByAnchorPosition(I)I

    move-result p2

    if-eq p2, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/HWPFDocument;->getEndnoteRange()Lorg/apache/poi/hwpf/usermodel/Range;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v1

    invoke-interface {v0, p2}, Lorg/apache/poi/hwpf/usermodel/Notes;->getNoteTextStartOffset(I)I

    move-result v2

    invoke-interface {v0, p2}, Lorg/apache/poi/hwpf/usermodel/Notes;->getNoteTextEndOffset(I)I

    move-result v0

    new-instance v3, Lorg/apache/poi/hwpf/usermodel/Range;

    add-int/2addr v2, v1

    add-int/2addr v1, v0

    invoke-direct {v3, v2, v1, p1}, Lorg/apache/poi/hwpf/usermodel/Range;-><init>(IILorg/apache/poi/hwpf/HWPFDocumentCore;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processEndnoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V

    :cond_1
    return-void
.end method

.method public processOle2(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/jsoup/nodes/Element;Lorg/apache/poi/poifs/filesystem/Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract processPageBreak(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;)V
.end method

.method public abstract processPageref(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V
.end method

.method public abstract processParagraph(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;ILorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/String;Lorg/apache/poi/convert/BodyElementType;)V
.end method

.method public processParagraphes(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILorg/apache/poi/convert/BodyElementType;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->numParagraphs()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v14, p2

    move v15, v13

    :goto_0
    if-ge v15, v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/convert/AbstractWordConverter;->checkAbortConvert()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/convert/AbstractWordConverter;->incrementParaSize()V

    invoke-virtual {v10, v15}, Lorg/apache/poi/hwpf/usermodel/Range;->getParagraph(I)Lorg/apache/poi/hwpf/usermodel/Paragraph;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->isInTable()Z

    move-result v0

    const/16 v16, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getTableLevel()I

    move-result v0

    if-eq v0, v11, :cond_1

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getTableLevel()I

    move-result v0

    if-lt v0, v11, :cond_0

    invoke-virtual {v10, v7}, Lorg/apache/poi/hwpf/usermodel/Range;->getTable(Lorg/apache/poi/hwpf/usermodel/Paragraph;)Lorg/apache/poi/hwpf/usermodel/Table;

    move-result-object v0

    invoke-virtual {v8, v9, v14, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processTable(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Table;)V

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/Range;->numParagraphs()I

    move-result v0

    add-int/2addr v15, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v1, p5

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to process table cell with higher level ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getTableLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") than current table level ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") as inner table part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Range;->text()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u000c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8, v9, v14}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processPageBreak(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;)V

    :cond_2
    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->isInList()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getList()Lorg/apache/poi/hwpf/usermodel/HWPFList;

    move-result-object v0

    iget-object v1, v8, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->numberingState:Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;

    invoke-virtual {v7}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getIlvl()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v1, v0, v2}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getBulletText(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;Lorg/apache/poi/hwpf/usermodel/HWPFList;C)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v4, p4

    move-object v5, v7

    move-object/from16 v17, v7

    move-object/from16 v7, p5

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processParagraph(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;ILorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/String;Lorg/apache/poi/convert/BodyElementType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v16

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v7

    :goto_1
    iget-object v1, v8, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Can\'t process paragraph as list entry, will be processed without list information"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 v17, v7

    :goto_2
    move v0, v13

    :goto_3
    if-nez v0, :cond_4

    const-string v6, ""

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v4, p4

    move-object/from16 v5, v17

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processParagraph(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;ILorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/String;Lorg/apache/poi/convert/BodyElementType;)V

    :cond_4
    sget-object v0, Lorg/apache/poi/convert/BodyElementType;->BODY:Lorg/apache/poi/convert/BodyElementType;

    move-object/from16 v1, p5

    if-ne v1, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/convert/AbstractWordConverter;->checkSplitDocument()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v10

    check-cast v0, Lorg/apache/poi/hwpf/usermodel/Section;

    invoke-virtual {v8, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->createBlock(Lorg/apache/poi/hwpf/usermodel/Section;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    move-object v14, v0

    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public abstract processSection(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Section;I)V
.end method

.method public processSingleSection(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Section;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processSection(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Section;I)V

    return-void
.end method

.method public processSymbol(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/jsoup/nodes/Element;)V
    .locals 0

    return-void
.end method

.method public abstract processTable(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Table;)V
.end method

.method public setFontReplacer(Lorg/apache/poi/hwpf/converter/FontReplacer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->fontReplacer:Lorg/apache/poi/hwpf/converter/FontReplacer;

    return-void
.end method

.method public tryDeadField(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;IILorg/jsoup/nodes/Element;)I
    .locals 10

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->tryDeadField_lookupFieldSeparatorEnd(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;I)[I

    move-result-object v0

    if-nez v0, :cond_0

    return p4

    :cond_0
    const/4 v1, 0x0

    aget v8, v0, v1

    const/4 v1, 0x1

    aget v9, v0, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v9}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDeadField(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;IIII)V

    aget p0, v0, v1

    return p0
.end method
