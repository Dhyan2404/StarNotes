.class public Lcom/onyx/engine/sdk/ChapterScanOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapterMaxSize:I

.field private chapterMinSize:I

.field private chapterTitleMaxLength:I

.field private lang:Ljava/lang/String;

.field private sectionRecognizerConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/engine/sdk/SectionRecognizerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->sectionRecognizerConfigs:Ljava/util/HashMap;

    sget-object v0, Lcom/onyx/engine/sdk/Lang;->EN:Lcom/onyx/engine/sdk/Lang;

    iget-object v0, v0, Lcom/onyx/engine/sdk/Lang;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->lang:Ljava/lang/String;

    const v0, 0x19000

    iput v0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterMaxSize:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterMinSize:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterTitleMaxLength:I

    return-void
.end method


# virtual methods
.method public addSectionRecognizerConfig(Ljava/lang/String;Lcom/onyx/engine/sdk/SectionRecognizerConfig;)Lcom/onyx/engine/sdk/ChapterScanOption;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/ChapterScanOption;->getSectionRecognizerConfigs()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getChapterMaxSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterMaxSize:I

    return p0
.end method

.method public getChapterMinSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterMinSize:I

    return p0
.end method

.method public getChapterTitleMaxLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterTitleMaxLength:I

    return p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public getSectionRecognizerConfigs()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/engine/sdk/SectionRecognizerConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->sectionRecognizerConfigs:Ljava/util/HashMap;

    return-object p0
.end method

.method public setChapterMaxSize(I)Lcom/onyx/engine/sdk/ChapterScanOption;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterMaxSize:I

    return-object p0
.end method

.method public setChapterMinSize(I)Lcom/onyx/engine/sdk/ChapterScanOption;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterMinSize:I

    return-object p0
.end method

.method public setChapterTitleMaxLength(I)Lcom/onyx/engine/sdk/ChapterScanOption;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->chapterTitleMaxLength:I

    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/onyx/engine/sdk/ChapterScanOption;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public setSectionRecognizerConfigs(Ljava/util/HashMap;)Lcom/onyx/engine/sdk/ChapterScanOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/engine/sdk/SectionRecognizerConfig;",
            ">;)",
            "Lcom/onyx/engine/sdk/ChapterScanOption;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/ChapterScanOption;->sectionRecognizerConfigs:Ljava/util/HashMap;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
