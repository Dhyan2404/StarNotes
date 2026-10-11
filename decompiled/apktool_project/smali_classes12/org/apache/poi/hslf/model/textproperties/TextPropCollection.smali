.class public Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;
.implements Lorg/apache/poi/common/Duplicatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final characterTextPropTypes:[Lorg/apache/poi/hslf/model/textproperties/TextProp;

.field private static final paragraphTextPropTypes:[Lorg/apache/poi/hslf/model/textproperties/TextProp;


# instance fields
.field private charactersCovered:I

.field private indentLevel:S

.field private maskSpecial:I

.field private final textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

.field private final textProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const-class v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->LOG:Lorg/apache/logging/log4j/Logger;

    const/16 v0, 0x13

    new-array v0, v0, [Lorg/apache/poi/hslf/model/textproperties/TextProp;

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;

    invoke-direct {v1}, Lorg/apache/poi/hslf/model/textproperties/ParagraphFlagsTextProp;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v3, 0x80

    const-string v4, "bullet.char"

    const/4 v5, 0x2

    invoke-direct {v1, v5, v3, v4}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v4, "bullet.font"

    const/16 v6, 0x10

    invoke-direct {v1, v5, v6, v4}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v4, 0x40

    const-string v7, "bullet.size"

    invoke-direct {v1, v5, v4, v7}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v7, 0x20

    const-string v8, "bullet.color"

    const/4 v9, 0x4

    invoke-direct {v1, v9, v7, v8}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;

    invoke-direct {v1}, Lorg/apache/poi/hslf/model/textproperties/TextAlignmentProp;-><init>()V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v8, 0x1000

    const-string v10, "linespacing"

    invoke-direct {v1, v5, v8, v10}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v10, 0x2000

    const-string v11, "spacebefore"

    invoke-direct {v1, v5, v10, v11}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/4 v10, 0x7

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v11, 0x4000

    const-string v12, "spaceafter"

    invoke-direct {v1, v5, v11, v12}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v11, 0x8

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v12, 0x100

    const-string v13, "text.offset"

    invoke-direct {v1, v5, v12, v13}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v12, 0x9

    aput-object v1, v0, v12

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/16 v13, 0x400

    const-string v14, "bullet.offset"

    invoke-direct {v1, v5, v13, v14}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v13, 0xa

    aput-object v1, v0, v13

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const v14, 0x8000

    const-string v15, "defaultTabSize"

    invoke-direct {v1, v5, v14, v15}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v14, 0xb

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    invoke-direct {v1}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;-><init>()V

    const/16 v15, 0xc

    aput-object v1, v0, v15

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;

    invoke-direct {v1}, Lorg/apache/poi/hslf/model/textproperties/FontAlignmentProp;-><init>()V

    const/16 v16, 0xd

    aput-object v1, v0, v16

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;

    invoke-direct {v1}, Lorg/apache/poi/hslf/model/textproperties/WrapFlagsTextProp;-><init>()V

    const/16 v16, 0xe

    aput-object v1, v0, v16

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v14, "textDirection"

    const/high16 v13, 0x200000

    invoke-direct {v1, v5, v13, v14}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v14, 0xf

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v14, "bullet.blip"

    const/high16 v12, 0x800000

    invoke-direct {v1, v2, v12, v14}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v6, "bullet.scheme"

    const/high16 v14, 0x1000000

    invoke-direct {v1, v2, v14, v6}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x11

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v6, "hasBulletScheme"

    const/high16 v11, 0x2000000

    invoke-direct {v1, v2, v11, v6}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x12

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->paragraphTextPropTypes:[Lorg/apache/poi/hslf/model/textproperties/TextProp;

    new-array v0, v15, [Lorg/apache/poi/hslf/model/textproperties/TextProp;

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/high16 v6, 0x100000

    const-string v15, "pp10ext"

    invoke-direct {v1, v2, v6, v15}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v6, "newAsian.font.index"

    invoke-direct {v1, v2, v14, v6}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v3, "cs.font.index"

    invoke-direct {v1, v2, v11, v3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/high16 v3, 0x4000000

    const-string v6, "pp11ext"

    invoke-direct {v1, v2, v3, v6}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;

    invoke-direct {v1}, Lorg/apache/poi/hslf/model/textproperties/CharFlagsTextProp;-><init>()V

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/high16 v2, 0x10000

    const-string v3, "font.index"

    invoke-direct {v1, v5, v2, v3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v2, "asian.font.index"

    invoke-direct {v1, v5, v13, v2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/high16 v2, 0x400000

    const-string v3, "ansi.font.index"

    invoke-direct {v1, v5, v2, v3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v2, "symbol.font.index"

    invoke-direct {v1, v5, v12, v2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/high16 v2, 0x20000

    const-string v3, "font.size"

    invoke-direct {v1, v5, v2, v3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/high16 v2, 0x40000

    const-string v3, "font.color"

    invoke-direct {v1, v9, v2, v3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const/high16 v2, 0x80000

    const-string v3, "superscript"

    invoke-direct {v1, v5, v2, v3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->characterTextPropTypes:[Lorg/apache/poi/hslf/model/textproperties/TextProp;

    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    .line 3
    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->charactersCovered:I

    .line 4
    iput-object p2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    .line 7
    iget v0, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->charactersCovered:I

    iput v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->charactersCovered:I

    .line 8
    iget-short v0, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    iput-short v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    .line 9
    iget v0, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    iput v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    .line 10
    iget-object v0, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    .line 11
    iget-object p1, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    new-instance v0, Lcom/sunia/HTREnginev2/ien;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ien;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->lambda$new$0(Ljava/lang/String;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->lambda$getGenericProperties$2(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/model/textproperties/TextProp;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->lambda$null$1(Lorg/apache/poi/hslf/model/textproperties/TextProp;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getPotentialProperties()[Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    sget-object v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->paragraph:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->paragraphTextPropTypes:[Lorg/apache/poi/hslf/model/textproperties/TextProp;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->characterTextPropTypes:[Lorg/apache/poi/hslf/model/textproperties/TextProp;

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$getGenericProperties$2(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jen;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/jen;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Supplier;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    return-void
.end method

.method private static synthetic lambda$null$1(Lorg/apache/poi/hslf/model/textproperties/TextProp;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method private validatePropName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getPotentialProperties()[Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No TextProp with name "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is defined to add from. Character and paragraphs have their own properties/names."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addProp(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->validatePropName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "TextProp must not be null"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addWithName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->findByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->validatePropName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public buildTextPropList(I[BI)I
    .locals 11

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getPotentialProperties()[Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getMask()I

    move-result v6

    and-int/2addr v6, p1

    if-eqz v6, :cond_7

    add-int v6, p3, v4

    array-length v7, p2

    if-lt v6, v7, :cond_0

    iget p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getMask()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    return v4

    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v7

    instance-of v8, v7, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    if-eqz v8, :cond_1

    move-object v5, v7

    check-cast v5, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    invoke-virtual {v5, p2, v6}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->parseProperty([BI)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    invoke-static {p2, v6}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    invoke-static {p2, v6}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getMask()I

    move-result v5

    or-int/2addr v5, v6

    iput v5, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    goto :goto_4

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    instance-of v6, v7, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    if-eqz v6, :cond_5

    move-object v6, v7

    check-cast v6, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    invoke-virtual {v6, v5, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->setValueWithMask(II)V

    goto :goto_3

    :cond_5
    if-nez v8, :cond_6

    invoke-virtual {v7, v5}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->setValue(I)V

    :cond_6
    :goto_3
    invoke-virtual {v7}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->addProp(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return v4
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    iget v1, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    iget v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    if-ne v1, v2, :cond_4

    iget-short v1, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    iget-short v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    iget-object p1, p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public final findByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    return-object p0
.end method

.method public getCharactersCovered()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->charactersCovered:I

    return p0
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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/den;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/den;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    const-string v2, "charactersCovered"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/een;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/een;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    const-string v2, "indentLevel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    new-instance v2, Lcom/sunia/HTREnginev2/fen;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/fen;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v1, Lcom/sunia/HTREnginev2/gen;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gen;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    const-string v2, "maskSpecial"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hen;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hen;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    const-string p0, "textPropType"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIndentLevel()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    return p0
.end method

.method public getSpecialMask()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    return p0
.end method

.method public getTextPropList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getPotentialProperties()[Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getTextPropType()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->charactersCovered:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-short v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final removeByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    return-object p0
.end method

.method public setIndentLevel(S)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    sget-object v1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->character:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    if-eq v0, v1, :cond_0

    iput-short p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "trying to set an indent on a character collection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  chars covered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  special mask flags: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getSpecialMask()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    sget-object v3, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->paragraph:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    if-ne v2, v3, :cond_0

    const-string v2, "  indent level: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getIndentLevel()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getTextPropList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v5, v3, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    if-eqz v5, :cond_1

    check-cast v3, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    invoke-virtual {v3}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->getSubPropNames()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v8, v5, v4

    invoke-virtual {v3}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->getSubPropMatches()[Z

    move-result-object v9

    aget-boolean v9, v9, v7

    if-eqz v9, :cond_2

    const-string v9, "          "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->getSubValue(I)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "  bytes that would be written: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->writeOut(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v4}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v1, "can\'t dump TextPropCollection"

    invoke-interface {p0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateTextSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->charactersCovered:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->writeOut(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    iget p2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->charactersCovered:I

    invoke-static {p2, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textPropType:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    sget-object v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->paragraph:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    if-ne p2, v0, :cond_1

    iget-short p2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->indentLevel:S

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    .line 4
    invoke-static {p2, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    .line 5
    :cond_1
    iget p2, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->maskSpecial:I

    .line 6
    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->textProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getWriteMask()I

    move-result v1

    or-int/2addr p2, v1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p2, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getTextPropList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    .line 10
    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v0

    .line 11
    instance-of v1, p2, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getWriteMask()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    int-to-short p2, v0

    .line 13
    invoke-static {p2, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 15
    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    goto :goto_1

    .line 16
    :cond_6
    instance-of v0, p2, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    if-eqz v0, :cond_3

    .line 17
    check-cast p2, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->writeProperty(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_7
    return-void
.end method
