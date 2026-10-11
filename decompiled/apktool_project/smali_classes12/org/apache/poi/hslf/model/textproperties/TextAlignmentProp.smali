.class public Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;
.super Lorg/apache/poi/hslf/model/textproperties/TextProp;
.source "SourceFile"


# static fields
.field public static final CENTER:I = 0x1

.field public static final DISTRIBUTED:I = 0x4

.field public static final JUSTIFY:I = 0x3

.field public static final JUSTIFYLOW:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final THAIDISTRIBUTED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x800

    const-string v1, "alignment"

    const/4 v2, 0x2

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;->lambda$getGenericProperties$0()Ljava/lang/Object;

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
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;->copy()Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;->copy()Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;

    move-result-object p0

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

    new-instance v0, Lcom/sunia/HTREnginev2/lbn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lbn;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;)V

    new-instance v1, Lcom/sunia/HTREnginev2/mbn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mbn;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;)V

    const-string p0, "base"

    const-string v2, "textAlign"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->THAI_DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->RIGHT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0
.end method
