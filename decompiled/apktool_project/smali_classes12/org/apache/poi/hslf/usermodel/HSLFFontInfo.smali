.class public Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FLAGS_EMBED_SUBSETTED:Lorg/apache/poi/util/BitField;

.field private static final FLAGS_NO_FONT_SUBSTITUTION:Lorg/apache/poi/util/BitField;

.field private static final FLAGS_RENDER_FONTTYPE:Lorg/apache/poi/util/BitField;


# instance fields
.field private charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field private final facets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/record/FontEmbeddedData;",
            ">;"
        }
    .end annotation
.end field

.field private family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field private fontEntityAtom:Lorg/apache/poi/hslf/record/FontEntityAtom;

.field private index:I

.field private isSubsetted:Z

.field private isSubstitutable:Z

.field private pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

.field private renderType:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

.field private typeface:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_EMBED_SUBSETTED:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_RENDER_FONTTYPE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_NO_FONT_SUBSTITUTION:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->index:I

    const-string v0, "undefined"

    .line 3
    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->typeface:Ljava/lang/String;

    .line 4
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 5
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->truetype:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->renderType:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    .line 6
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 7
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isSubstitutable:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->facets:Ljava/util/List;

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->index:I

    const-string v0, "undefined"

    .line 35
    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->typeface:Ljava/lang/String;

    .line 36
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 37
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->truetype:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->renderType:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    .line 38
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 39
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isSubstitutable:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->facets:Ljava/util/List;

    .line 42
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V

    .line 44
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    .line 45
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V

    .line 46
    instance-of v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getRenderType()Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setRenderType(Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;)V

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isEmbedSubsetted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setEmbedSubsetted(Z)V

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isFontSubstitutable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setFontSubstitutable(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->index:I

    const-string v0, "undefined"

    .line 13
    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->typeface:Ljava/lang/String;

    .line 14
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 15
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->truetype:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->renderType:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    .line 16
    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 17
    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isSubstitutable:Z

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->facets:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->fontEntityAtom:Lorg/apache/poi/hslf/record/FontEntityAtom;

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getFontIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setIndex(I)V

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getCharSet()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V

    .line 24
    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_RENDER_FONTTYPE:Lorg/apache/poi/util/BitField;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getFontType()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setRenderType(Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;)V

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->device:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setRenderType(Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;)V

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->raster:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setRenderType(Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;)V

    .line 28
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getPitchAndFamily()I

    move-result v0

    int-to-byte v0, v0

    .line 29
    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V

    .line 30
    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    .line 31
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_EMBED_SUBSETTED:Lorg/apache/poi/util/BitField;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getFontFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setEmbedSubsetted(Z)V

    .line 32
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_NO_FONT_SUBSTITUTION:Lorg/apache/poi/util/BitField;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getFontType()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->setFontSubstitutable(Z)V

    return-void
.end method


# virtual methods
.method public addFacet(Lorg/apache/poi/hslf/record/FontEmbeddedData;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->facets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createRecord()Lorg/apache/poi/hslf/record/FontEntityAtom;
    .locals 5

    new-instance v0, Lorg/apache/poi/hslf/record/FontEntityAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/FontEntityAtom;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->fontEntityAtom:Lorg/apache/poi/hslf/record/FontEntityAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setFontIndex(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setFontName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getNativeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setCharSet(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isEmbedSubsetted()Z

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setFontFlags(I)V

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFFontInfo$FontRenderType:[I

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->renderType:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_RENDER_FONTTYPE:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v4, v2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_RENDER_FONTTYPE:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_RENDER_FONTTYPE:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v1

    :goto_0
    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->FLAGS_NO_FONT_SUBSTITUTION:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isFontSubstitutable()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setFontType(I)V

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    invoke-static {v1, p0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hslf/record/FontEntityAtom;->setPitchAndFamily(I)V

    return-object v0
.end method

.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object p0
.end method

.method public getFacets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/record/FontEmbeddedData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->facets:Ljava/util/List;

    return-object p0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0
.end method

.method public getFontEntityAtom()Lorg/apache/poi/hslf/record/FontEntityAtom;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->fontEntityAtom:Lorg/apache/poi/hslf/record/FontEntityAtom;

    return-object p0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-object p0
.end method

.method public getRenderType()Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->renderType:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    return-object p0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->typeface:Ljava/lang/String;

    return-object p0
.end method

.method public isEmbedSubsetted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isSubsetted:Z

    return p0
.end method

.method public isFontSubstitutable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isSubstitutable:Z

    return p0
.end method

.method public setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-void
.end method

.method public setEmbedSubsetted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isSubsetted:Z

    return-void
.end method

.method public setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-void
.end method

.method public setFontSubstitutable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->isSubstitutable:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->index:I

    return-void
.end method

.method public setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-void
.end method

.method public setRenderType(Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->truetype:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->renderType:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->typeface:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "typeface can\'t be null nor empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
