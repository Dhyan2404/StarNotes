.class public final Lorg/apache/poi/hslf/record/FontCollection;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _header:[B

.field private final fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/FontCollection;->_header:[B

    add-int/lit8 p3, p3, -0x8

    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v0, p1, p3

    instance-of v1, v0, Lorg/apache/poi/hslf/record/FontEntityAtom;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    check-cast v0, Lorg/apache/poi/hslf/record/FontEntityAtom;

    invoke-direct {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;-><init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/hslf/record/FontEmbeddedData;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hslf/record/FontEmbeddedData;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->getFontHeader()Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/FontCollection;->addFont(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->addFacet(Lorg/apache/poi/hslf/record/FontEmbeddedData;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FontCollection child wasn\'t a FontEntityAtom, was {}"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/record/FontCollection;->lambda$findFont$0(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;)Z

    move-result p0

    return p0
.end method

.method private static findFont(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/common/usermodel/fonts/FontCharset;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/gpg;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/gpg;-><init>(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V

    return-object v0
.end method

.method private static getFacetIndex(ZZ)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$findFont$0(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;)Z
    .locals 1

    invoke-virtual {p2}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addFont(Ljava/io/InputStream;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-direct {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;-><init>()V

    .line 8
    invoke-virtual {v0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->bufferInit(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/FontCollection;->addFont(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getFontEntityAtom()Lorg/apache/poi/hslf/record/FontEntityAtom;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getCharsetByte()B

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setCharSet(I)V

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setPitchAndFamily(I)V

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setFontFlags(I)V

    const/16 v3, 0xc

    .line 14
    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setFontType(I)V

    .line 15
    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->isItalic()Z

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->isBold()Z

    move-result v0

    invoke-static {v3, v0}, Lorg/apache/poi/hslf/record/FontCollection;->getFacetIndex(ZZ)I

    move-result v0

    .line 16
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getFacets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hslf/record/FontEmbeddedData;

    .line 17
    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->getFontHeader()Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    move-result-object v5

    .line 18
    invoke-virtual {v5}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->isItalic()Z

    move-result v6

    invoke-virtual {v5}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->isBold()Z

    move-result v5

    invoke-static {v6, v5}, Lorg/apache/poi/hslf/record/FontCollection;->getFacetIndex(ZZ)I

    move-result v5

    if-ne v5, v0, :cond_0

    goto :goto_2

    :cond_0
    if-le v5, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 19
    new-instance v4, Lorg/apache/poi/hslf/record/FontEmbeddedData;

    invoke-direct {v4}, Lorg/apache/poi/hslf/record/FontEmbeddedData;-><init>()V

    .line 20
    invoke-virtual {p0, v4, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    .line 21
    invoke-virtual {v1, v4}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->addFacet(Lorg/apache/poi/hslf/record/FontEmbeddedData;)V

    .line 22
    :cond_3
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->setFontData([B)V

    return-object v1
.end method

.method public addFont(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/FontCollection;->getFontInfo(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V

    .line 3
    iget-object p1, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setIndex(I)V

    .line 4
    iget-object p1, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->createRecord()Lorg/apache/poi/hslf/record/FontEntityAtom;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    return-object v0
.end method

.method public getFontInfo(I)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 2

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontInfo(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/record/FontCollection;->getFontInfo(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFontInfo(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/apache/poi/hslf/record/FontCollection;->findFont(Ljava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    return-object p0
.end method

.method public getFonts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumberOfFonts()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontCollection;->fonts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->FontCollection:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontCollection;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontCollection;->getRecordType()J

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
