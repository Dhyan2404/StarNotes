.class public Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    return-void
.end method

.method private static update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getEffectContainer()Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetEffectDag()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectList()Lorg/apache/poi/xddf/usermodel/XDDFEffectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetEffectLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    return-object p0
.end method

.method public setAlternativeLanguage(Ljava/util/Locale;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/ago;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ago;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/lgo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/lgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/qgo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setBaseline(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/mfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/mfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/nfo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/nfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/ofo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ofo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setBold(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/feo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/feo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/geo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/geo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/heo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/heo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setBookmark(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/zdo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/aeo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/aeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/beo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/beo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setCapitals(Lorg/apache/poi/xddf/usermodel/text/CapsType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/cfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/cfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/dfo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/dfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/ffo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ffo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lorg/apache/poi/xddf/usermodel/text/CapsType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setCharacterKerning(Ljava/lang/Double;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const-wide v0, 0x40af400000000000L    # 4000.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive = 0. Maximum inclusive = 4000."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/rgo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/rgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/ndo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/ndo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/odo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/odo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr p0, v3

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setCharacterSpacing(Ljava/lang/Double;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3f50c00000000000L    # -4000.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const-wide v0, 0x40af400000000000L    # 4000.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive = -4000. Maximum inclusive = 4000."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/zfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/bgo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/bgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/cgo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr p0, v3

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setDirty(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/meo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/meo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/neo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/neo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/oeo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/oeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setEffectContainer(Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/jeo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/jeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/keo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/keo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/leo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/leo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setEffectList(Lorg/apache/poi/xddf/usermodel/XDDFEffectList;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/tfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/tfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/ufo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/ufo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/vfo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/peo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/peo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/qeo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/qeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/reo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/reo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBlipFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetBlipFill()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetGradFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetGradFill()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetGrpFill()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetGrpFill()V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetNoFill()V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetPattFill()V

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSolidFill()V

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public setFontSize(Ljava/lang/Double;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive = 1. Maximum inclusive = 400."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/jfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/jfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/kfo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/kfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/lfo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr p0, v3

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setFonts([Lorg/apache/poi/xddf/usermodel/text/XDDFFont;)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {v2}, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;->getGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/sunia/HTREnginev2/pgo;

    invoke-direct {v4, v2}, Lcom/sunia/HTREnginev2/pgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/sunia/HTREnginev2/ego;

    invoke-direct {v5, v2}, Lcom/sunia/HTREnginev2/ego;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/sunia/HTREnginev2/fgo;

    invoke-direct {v6, v2}, Lcom/sunia/HTREnginev2/fgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v4, v5, v6, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/sunia/HTREnginev2/mgo;

    invoke-direct {v4, v2}, Lcom/sunia/HTREnginev2/mgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/sunia/HTREnginev2/ngo;

    invoke-direct {v5, v2}, Lcom/sunia/HTREnginev2/ngo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/sunia/HTREnginev2/ogo;

    invoke-direct {v6, v2}, Lcom/sunia/HTREnginev2/ogo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v4, v5, v6, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/sunia/HTREnginev2/igo;

    invoke-direct {v4, v2}, Lcom/sunia/HTREnginev2/igo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/sunia/HTREnginev2/jgo;

    invoke-direct {v5, v2}, Lcom/sunia/HTREnginev2/jgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/sunia/HTREnginev2/kgo;

    invoke-direct {v6, v2}, Lcom/sunia/HTREnginev2/kgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v4, v5, v6, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/sunia/HTREnginev2/dgo;

    invoke-direct {v4, v2}, Lcom/sunia/HTREnginev2/dgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/sunia/HTREnginev2/ggo;

    invoke-direct {v5, v2}, Lcom/sunia/HTREnginev2/ggo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/sunia/HTREnginev2/hgo;

    invoke-direct {v6, v2}, Lcom/sunia/HTREnginev2/hgo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v4, v5, v6, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public setHighlight(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/mdo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/mdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/xdo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/xdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/ieo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ieo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getColorContainer()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/sdo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/sdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/tdo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/tdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/udo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/udo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setItalic(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/pdo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/pdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/qdo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/qdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/rdo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setKumimoji(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/seo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/seo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/ueo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/ueo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/veo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/veo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setLanguage(Ljava/util/Locale;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/teo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/teo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/efo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/efo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/pfo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/ceo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ceo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/deo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/deo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/eeo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/eeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setMouseOver(Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/qfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/qfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/rfo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/rfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/sfo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/sfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object p0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoProof(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/zeo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/afo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/afo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/bfo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/bfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setNormalizeHeights(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/gfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/gfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/hfo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/hfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/ifo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ifo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setSpellError(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/wfo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/wfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/xfo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/xfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/yfo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yfo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-static {v1, v2, v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrikeThrough(Lorg/apache/poi/xddf/usermodel/text/StrikeType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/vdo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/vdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/wdo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/wdo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/ydo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ydo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public setUnderline(Lorg/apache/poi/xddf/usermodel/text/UnderlineType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/weo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/weo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/xeo;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/xeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/yeo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yeo;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->update(Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
