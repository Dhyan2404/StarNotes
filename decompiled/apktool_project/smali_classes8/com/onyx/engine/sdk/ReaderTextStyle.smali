.class public Lcom/onyx/engine/sdk/ReaderTextStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;,
        Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;,
        Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;,
        Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;,
        Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;,
        Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;,
        Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR_TYPE_BLUE:I = 0x9

.field public static final BACKGROUND_COLOR_TYPE_BROWN:I = 0x3

.field public static final BACKGROUND_COLOR_TYPE_CUSTOM_DARK:I = 0x63

.field public static final BACKGROUND_COLOR_TYPE_CUSTOM_LIGHT:I = 0x62

.field public static final BACKGROUND_COLOR_TYPE_DARK_GREY:I = 0x8

.field public static final BACKGROUND_COLOR_TYPE_GREEN:I = 0x5

.field public static final BACKGROUND_COLOR_TYPE_LIGHT_GREY:I = 0x6

.field public static final BACKGROUND_COLOR_TYPE_MEDIUM_GREY:I = 0x7

.field public static final BACKGROUND_COLOR_TYPE_NIGHT_MODE:I = 0x2

.field public static final BACKGROUND_COLOR_TYPE_ORIGIN:I = 0x0

.field public static final BACKGROUND_COLOR_TYPE_WHITE:I = 0x1

.field public static final BACKGROUND_COLOR_TYPE_YELLOW:I = 0x4

.field public static final DEFAULT_INDENT:F = 3.4028235E38f

.field public static final DEFAULT_LETTER_SPACING:F = 3.4028235E38f

.field public static final DEFAULT_LINE_SPACING:F = 3.4028235E38f

.field public static final DEFAULT_PAGE_MARGIN:F = 3.4028235E38f

.field public static final DEFAULT_PARAGRAPH_SPACING:F = 3.4028235E38f

.field public static final DEFAULT_WORD_SPACING:F = 3.4028235E38f

.field public static final FOREGROUND_COLOR_TYPE_CUSTOM_DARK:I = 0x63

.field public static final FOREGROUND_COLOR_TYPE_CUSTOM_LIGHT:I = 0x62

.field public static final FOREGROUND_COLOR_TYPE_ORIGIN:I = 0x0

.field public static final INIT_ADJUST_PAGE_WHITESPACE:Z = true

.field public static final INIT_ANTI_ALIAS:Z = true

.field public static final INIT_CHANGE_WRITING_MODE:Z = false

.field public static final INIT_ENABLE_HYPHEN:Z = true

.field public static final INIT_FONT_DEF_STROKE_WIDTH:F = 0.0f

.field public static final INIT_FONT_EMBOLDEN_LEVEL:F = 0.0f

.field public static final INIT_FONT_SIZE:F = 20.0f

.field public static final INIT_IMAGE_CLOSE_DEF_SCALE:Z = false

.field public static final INIT_IMAGE_EM:F = 2.0f

.field public static final INIT_IMAGE_PERCENTAGE:F = 0.6f

.field public static final INIT_IMAGE_SCALING:F = 3.4028235E38f

.field public static final INIT_IMAGE_SIZE:F = 3.4028235E38f

.field public static final INIT_INCLUDE_FONT_PADDING:Z = false

.field public static final INIT_INDENT:F = 3.4028235E38f

.field public static final INIT_LETTER_SPACING:F = 3.4028235E38f

.field public static final INIT_LINE_SPACING:F = 3.4028235E38f

.field public static final INIT_PAGE_MARGIN:F = 3.4028235E38f

.field public static final INIT_PARAGRAPH_SPACING:F = 3.4028235E38f

.field public static final INIT_SCALE_TO_PAGE_LIMIT:F = 5.0f

.field public static final INIT_SHOW_FOOTNOTE:Z = true

.field public static final INIT_SINGLE_IMAGE_FULL_SCREEN:Z = true

.field public static final INIT_TEXT_GAMMA:F = -1.0f

.field public static final INIT_THRESHOLD:I = 0x0

.field public static final INIT_WORD_SPACING:F = 3.4028235E38f

.field public static final TEXT_COLOR_TYPE_CUSTOM_DARK:I = 0x63

.field public static final TEXT_COLOR_TYPE_CUSTOM_LIGHT:I = 0x62

.field public static final TEXT_COLOR_TYPE_RAW:I = 0x0

.field public static final TEXT_COLOR_TYPE_THRESH_BINARY:I = 0x1

.field public static final TEXT_COLOR_TYPE_THRESH_OCTAL:I = 0x3

.field public static final TEXT_COLOR_TYPE_THRESH_QUATERNARY:I = 0x2


# instance fields
.field private adjustPageWhiteSpace:Z

.field private alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

.field private antiAlias:Z

.field private backgroundColor:I

.field private backgroundColorType:I

.field private changeWritingMode:Z

.field private chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

.field private colorTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private enableHyphen:Z

.field private final externalFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fontDefStrokeWidth:F

.field private fontEmboldenLevel:F

.field private fontSize:F

.field private foregroundColor:I

.field private foregroundColorType:I

.field private format:Ljava/lang/String;

.field private imageHorPercentage:F

.field private imageMinEM:F

.field private imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

.field private imageVerPercentage:F

.field private includeFontPadding:Z

.field private indent:F

.field private language:Ljava/lang/String;

.field private letterSpacing:F

.field private ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

.field private lineSpacing:F

.field private pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

.field private pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

.field private paragraphSpacing:F

.field private showFootnote:Z

.field private final styleFontMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/engine/sdk/FontEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final tagFontMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private textColor:I

.field private textColorType:I

.field private textGamma:F

.field private textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

.field private threshold:I

.field private wordSpacing:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    sget-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->ALIGNMENT_JUSTIFY:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    sget-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;->PAGING_MODE_SINGLE_COLUMN:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    sget-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;->CCT_NONE:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    sget-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;->SPACE_ALL:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    sget-object v0, Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;->NORMAL:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    iput-boolean v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    iput-boolean v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    iput-boolean v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    iput v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->lambda$addTagFontMapping$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->lambda$addTagFontMapping$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/ReaderTextStyle;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/ReaderTextStyle;

    return-object p0
.end method

.method private static synthetic lambda$addTagFontMapping$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$addTagFontMapping$1(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addExternalFont(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStyleFontMapping(Lcom/onyx/engine/sdk/FontEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/FontEntry;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTagFontMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/gdl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gdl;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTagFontMapping(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/hdl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hdl;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public copy()Lcom/onyx/engine/sdk/ReaderTextStyle;
    .locals 1

    .line 40
    new-instance v0, Lcom/onyx/engine/sdk/ReaderTextStyle;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->copy(Lcom/onyx/engine/sdk/ReaderTextStyle;)V

    return-object v0
.end method

.method public copy(Lcom/onyx/engine/sdk/ReaderTextStyle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setStyleFontMapping(Ljava/util/Map;)V

    .line 2
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setTagFontMapping(Ljava/util/Map;)V

    .line 3
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/ReaderTextStyle;->setExternalFonts(Ljava/util/List;)V

    .line 4
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    .line 5
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    .line 6
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    .line 7
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    .line 8
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    .line 9
    iget-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    iget-object v1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->copy(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)V

    .line 10
    iget-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    iget-object v1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->copy(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)V

    .line 11
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    .line 13
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    .line 14
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    .line 15
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    .line 16
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    .line 17
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    .line 18
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    .line 19
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    .line 20
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    .line 21
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    .line 22
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    .line 23
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    .line 24
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    .line 25
    iget-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    iget-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    iget-object v1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    .line 28
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    .line 29
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    .line 30
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    .line 31
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    .line 32
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    .line 33
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    .line 34
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    .line 35
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    .line 36
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    .line 37
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    .line 38
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    .line 39
    iget p1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/ReaderTextStyle;

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    iget v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    iget v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    iget v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    iget v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    iget v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    iget v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    iget v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAlignment()Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    return p0
.end method

.method public getBackgroundColorType()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    return p0
.end method

.method public getChineseConvertType()Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    return-object p0
.end method

.method public getColorTable()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    return-object p0
.end method

.method public getExternalFonts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    return-object p0
.end method

.method public getFontDefStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    return p0
.end method

.method public getFontEmboldenLevel()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    return p0
.end method

.method public getFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    return p0
.end method

.method public getForegroundColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    return p0
.end method

.method public getForegroundColorType()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getImageHorPercentage()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    return p0
.end method

.method public getImageMinEM()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    return p0
.end method

.method public getImageStyle()Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    return-object p0
.end method

.method public getImageVerPercentage()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    return p0
.end method

.method public getIndent()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    return p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLayoutStyle()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->access$000(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->access$100(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->access$200(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->access$300(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->access$400(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->access$500(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->access$600(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    invoke-static {v2}, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->access$700(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/engine/sdk/GlobalInitializer;->isScaleImage()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/engine/sdk/GlobalInitializer;->isAbsoluteLineSpacing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/engine/sdk/GlobalInitializer;->isAbsoluteParagraphSpacing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLetterSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    return p0
.end method

.method public getLigaturesState()Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    return-object p0
.end method

.method public getLineSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    return p0
.end method

.method public getPageMargin()Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    return-object p0
.end method

.method public getPagingMode()Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    return-object p0
.end method

.method public getParagraphSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    return p0
.end method

.method public getStyleFontMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/engine/sdk/FontEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    return-object p0
.end method

.method public getTagFontMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    return-object p0
.end method

.method public getTextColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    return p0
.end method

.method public getTextColorType()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    return p0
.end method

.method public getTextGamma()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    return p0
.end method

.method public getTextSpacingTrim()Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    return-object p0
.end method

.method public getThreshold()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    return p0
.end method

.method public getWordSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    return p0
.end method

.method public hashCode()I
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    iget-object v2, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    iget-object v3, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    iget-object v4, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    iget-object v5, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    iget-object v6, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    iget-object v7, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    iget-object v8, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    iget-object v9, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    iget-object v10, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    iget-object v11, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    iget-object v12, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    iget v13, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget v14, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget v15, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v39, v1

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    iget-object v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    move-object/from16 v25, v1

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    iget-boolean v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    iget-boolean v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    iget-boolean v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    iget-boolean v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    iget-boolean v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    iget-boolean v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    iget v1, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    iget v0, v0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v1, v39

    filled-new-array/range {v1 .. v38}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAdjustPageWhiteSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    return p0
.end method

.method public isAntiAlias()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    return p0
.end method

.method public isChangeWritingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    return p0
.end method

.method public isEnableHyphen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    return p0
.end method

.method public isIncludeFontPadding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    return p0
.end method

.method public isShowFootnote()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    return p0
.end method

.method public setAdjustPageWhiteSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->adjustPageWhiteSpace:Z

    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;->valueOf(I)Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    return-void
.end method

.method public setAlignment(Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->alignment:Lcom/onyx/engine/sdk/ReaderTextStyle$Alignment;

    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->antiAlias:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColor:I

    return-void
.end method

.method public setBackgroundColorType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->backgroundColorType:I

    return-void
.end method

.method public setChangeWritingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->changeWritingMode:Z

    return-void
.end method

.method public setChineseConvertType(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;->valueOf(I)Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    return-void
.end method

.method public setChineseConvertType(Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->chineseConvertType:Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;

    return-void
.end method

.method public setColorTable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->colorTable:Ljava/util/List;

    return-void
.end method

.method public setEnableHyphen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->enableHyphen:Z

    return-void
.end method

.method public setExternalFonts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->externalFonts:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/onyx/engine/sdk/Utils;->safelyAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public setFontDefStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontDefStrokeWidth:F

    return-void
.end method

.method public setFontEmboldenLevel(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontEmboldenLevel:F

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->fontSize:F

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColor:I

    return-void
.end method

.method public setForegroundColorType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->foregroundColorType:I

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->format:Ljava/lang/String;

    return-void
.end method

.method public setImageHorPercentage(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageHorPercentage:F

    return-void
.end method

.method public setImageMinEM(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageMinEM:F

    return-void
.end method

.method public setImageStyle(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageStyle:Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    return-void
.end method

.method public setImageVerPercentage(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->imageVerPercentage:F

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->includeFontPadding:Z

    return-void
.end method

.method public setIndent(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->indent:F

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->language:Ljava/lang/String;

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->letterSpacing:F

    return-void
.end method

.method public setLigaturesState(I)Lcom/onyx/engine/sdk/ReaderTextStyle;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;->valueOf(I)Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    return-object p0
.end method

.method public setLigaturesState(Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;)Lcom/onyx/engine/sdk/ReaderTextStyle;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->ligaturesState:Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;

    return-object p0
.end method

.method public setLineSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->lineSpacing:F

    return-void
.end method

.method public setPageMargin(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pageMargin:Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    return-void
.end method

.method public setPagingMode(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;->valueOf(I)Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    return-void
.end method

.method public setPagingMode(Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->pagingMode:Lcom/onyx/engine/sdk/ReaderTextStyle$PagingMode;

    return-void
.end method

.method public setParagraphSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->paragraphSpacing:F

    return-void
.end method

.method public setShowFootnote(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->showFootnote:Z

    return-void
.end method

.method public setStyleFontMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/engine/sdk/FontEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->styleFontMapping:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setTagFontMapping(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public setTagFontMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->tagFontMapping:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColor:I

    return-void
.end method

.method public setTextColorType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textColorType:I

    return-void
.end method

.method public setTextGamma(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textGamma:F

    return-void
.end method

.method public setTextSpacingTrim(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;->valueOf(I)Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    return-void
.end method

.method public setTextSpacingTrim(Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->textSpacingTrim:Lcom/onyx/engine/sdk/ReaderTextStyle$TextSpacingTrim;

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->threshold:I

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle;->wordSpacing:F

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
