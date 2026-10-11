.class public Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;
.super Lorg/apache/poi/hslf/model/textproperties/TextProp;
.source "SourceFile"


# static fields
.field public static final BASELINE:I = 0x0

.field public static final BOTTOM:I = 0x3

.field public static final CENTER:I = 0x2

.field public static final NAME:Ljava/lang/String; = "fontAlign"

.field public static final TOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x10000

    const-string v1, "fontAlign"

    const/4 v2, 0x2

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;->copy()Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;->copy()Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;

    move-result-object p0

    return-object p0
.end method

.method public getFontAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->AUTO:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->BOTTOM:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->TOP:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->BASELINE:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/zog;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zog;-><init>(Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;)V

    new-instance v1, Lcom/sunia/HTREnginev2/apg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/apg;-><init>(Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;)V

    const-string p0, "base"

    const-string v2, "fontAlign"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
