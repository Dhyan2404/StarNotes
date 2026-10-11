.class public Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->list:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private findFirst(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;",
            "TR;>;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addFetcher(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addFetcher(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/evk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/evk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    return-object p0
.end method

.method public getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bvk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bvk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    return-object p0
.end method

.method public getCTSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/hvk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hvk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    return-object p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->list:Ljava/util/List;

    return-object p0
.end method

.method public getMarginBottom()Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ivk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ivk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getMarginLeft()Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/avk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/avk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getMarginRight()Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dvk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dvk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getMarginTop()Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gvk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gvk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getTextIndent()Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fvk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fvk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/TextAlignment;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cvk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cvk;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    return-object p0
.end method
