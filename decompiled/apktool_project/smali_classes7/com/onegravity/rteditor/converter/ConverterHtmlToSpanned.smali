.class public Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$i;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$d;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$o;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$b;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$n;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$c;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$l;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$t;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$q;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$p;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$g;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$m;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$k;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;,
        Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$h;
    }
.end annotation


# static fields
.field public static final k:[F

.field public static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/String;

.field public f:Lcom/onegravity/rteditor/api/RTMediaFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/onegravity/rteditor/converter/tagsoup/Parser;

.field public h:Landroid/text/SpannableStringBuilder;

.field public i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->k:[F

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->l:Ljava/util/Set;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "hello"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "header"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "style"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "meta"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->m:Ljava/util/regex/Pattern;

    const-string v0, "#[a-f0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aqua"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const-string v1, "black"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "blue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0xff00ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fuchsia"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "green"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0x808080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0xff00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maroon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0x808000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "olive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0x800080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "purple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const/high16 v1, 0xff0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "red"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0xc0c0c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "silver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0x8080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "teal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0xffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    const v1, 0xffff00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yellow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    return-void
.end method

.method public static final b(Ljava/lang/CharSequence;I)I
    .locals 7

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ColorKt;->parseColorValueSafety(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x2d

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, -0x1

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    move v0, v3

    :goto_0
    const/16 v4, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    if-ne v4, v5, :cond_6

    sub-int/2addr p1, v3

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x78

    if-eq v3, v1, :cond_5

    const/16 v3, 0x58

    if-ne v3, v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    move v2, p1

    move v6, v1

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_6
    const/16 p1, 0x23

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/16 v6, 0xa

    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public static l(Ljava/lang/String;)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->b(Ljava/lang/CharSequence;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse color failed, color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v0, [Ljava/lang/Object;

    const-class v4, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;

    invoke-virtual {v2, v4, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public final A(Lorg/xml/sax/Attributes;)V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->s(Lorg/xml/sax/Attributes;)Z

    move-result p1

    invoke-virtual {v2}, Lcom/onegravity/rteditor/converter/ParagraphType;->isIndentation()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/onegravity/rteditor/converter/ParagraphType;->isNumbering()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$m;

    invoke-direct {p1, v0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$m;-><init>(IZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/onegravity/rteditor/converter/ParagraphType;->isBullet()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;

    invoke-direct {p1, v0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;-><init>(IZ)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;-><init>(IZ)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;

    invoke-direct {p1, v1, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;-><init>(IZ)V

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final B(ZLorg/xml/sax/Attributes;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->s(Lorg/xml/sax/Attributes;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_OL:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    sget-object p1, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/onegravity/rteditor/converter/ParagraphType;->NUMBERING:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/onegravity/rteditor/converter/ParagraphType;->BULLET:Lcom/onegravity/rteditor/converter/ParagraphType;

    :goto_0
    iget-object p2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    :goto_1
    const/4 v0, 0x1

    if-nez p2, :cond_4

    new-instance p2, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    invoke-direct {p2, p1, v0, v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;-><init>(Lcom/onegravity/rteditor/converter/ParagraphType;II)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {p0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v1

    if-ne v1, p1, :cond_5

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->setAbsoluteIndent(I)V

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getRelativeIndent()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->setRelativeIndent(I)V

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    invoke-virtual {p2}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result p2

    add-int/2addr p2, v0

    invoke-direct {v1, p1, p2, v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;-><init>(Lcom/onegravity/rteditor/converter/ParagraphType;II)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final C(Lorg/xml/sax/Attributes;)V
    .locals 5

    const-string v0, "style"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text-align"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "text-align:"

    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;

    invoke-direct {v1, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x11

    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->q()V

    return-void
.end method

.method public final D(Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/text/SpannableStringBuilder;ILjava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "I",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1, p2, p2, p3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    move v0, p3

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;

    invoke-direct {p1, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;-><init>(Ljava/lang/Object;)V

    const/16 p2, 0x21

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_6

    add-int v2, v1, p2

    aget-char v2, p1, v2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    :goto_2
    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public convert(Lcom/onegravity/rteditor/api/format/RTHtml;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTSpanned;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/format/RTHtml<",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "+",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;)",
            "Lcom/onegravity/rteditor/api/format/RTSpanned;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/format/RTHtml;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->f:Lcom/onegravity/rteditor/api/RTMediaFactory;

    new-instance p1, Lcom/onegravity/rteditor/converter/tagsoup/Parser;

    invoke-direct {p1}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->g:Lcom/onegravity/rteditor/converter/tagsoup/Parser;

    :try_start_0
    const-string p2, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$i;->a()Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->j:Z

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->clear()V

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->g:Lcom/onegravity/rteditor/converter/tagsoup/Parser;

    invoke-virtual {p2, p0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_1
    iget-object p2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->g:Lcom/onegravity/rteditor/converter/tagsoup/Parser;

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p2, v0}, Lcom/onegravity/rteditor/converter/tagsoup/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->t()V

    iget-object p2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;

    invoke-virtual {p2, p1, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;

    array-length v0, p2

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v1, p2, p1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;->a(Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onegravity/rteditor/api/format/RTSpanned;

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/api/format/RTSpanned;-><init>(Landroid/text/Spanned;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$h;

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_0

    check-cast v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$h;

    iget-object v3, v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$h;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance v3, Lcom/onegravity/rteditor/spans/LinkSpan;

    iget-object v1, v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$h;->a:Ljava/lang/String;

    invoke-direct {v3, v1}, Lcom/onegravity/rteditor/spans/LinkSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const-class v2, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;

    invoke-virtual {p0, v1, v2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->m(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    check-cast v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const-class v4, Lcom/onegravity/rteditor/spans/AlignmentSpan;

    invoke-virtual {p0, v3, v2, v4}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->a(Landroid/text/SpannableStringBuilder;ILjava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->k(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;)Landroid/text/Layout$Alignment;

    move-result-object v1

    const/16 v3, 0xa

    if-eq v2, v0, :cond_2

    iget-object v4, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_3
    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v2, v0}, Lcom/onegravity/rteditor/utils/Helper;->isRTL(Ljava/lang/CharSequence;II)Z

    move-result v3

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance v4, Lcom/onegravity/rteditor/spans/AlignmentSpan;

    invoke-direct {v4, v1, v3}, Lcom/onegravity/rteditor/spans/AlignmentSpan;-><init>(Landroid/text/Layout$Alignment;Z)V

    const/16 v1, 0x21

    invoke-virtual {p0, v4, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->p(Ljava/lang/String;)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_3

    check-cast v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->d()Z

    move-result v3

    const/16 v4, 0x21

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;

    new-instance v6, Lcom/onegravity/rteditor/spans/TypefaceSpan;

    invoke-direct {v6, v3}, Lcom/onegravity/rteditor/spans/TypefaceSpan;-><init>(Lcom/onegravity/rteditor/fonts/RTTypeface;)V

    invoke-direct {v5, v6}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v5, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;

    new-instance v5, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;

    iget v6, v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->a:I

    invoke-direct {v5, v6}, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v3, v5}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->l(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;

    new-instance v6, Lcom/onegravity/rteditor/spans/ForegroundColorSpan;

    invoke-direct {v6, v3}, Lcom/onegravity/rteditor/spans/ForegroundColorSpan;-><init>(I)V

    invoke-direct {v5, v6}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v5, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->l(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;

    new-instance v5, Lcom/onegravity/rteditor/spans/BackgroundColorSpan;

    invoke-direct {v5, v1}, Lcom/onegravity/rteditor/spans/BackgroundColorSpan;-><init>(I)V

    invoke-direct {v3, v5}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$r;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$g;

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :goto_0
    if-le v0, v2, :cond_0

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-eq v2, v0, :cond_1

    check-cast v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$g;

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    sget-object v5, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->k:[F

    iget v1, v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$g;->a:I

    aget v1, v5, v1

    invoke-direct {v4, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v1, 0x21

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance v3, Lcom/onegravity/rteditor/spans/BoldSpan;

    invoke-direct {v3}, Lcom/onegravity/rteditor/spans/BoldSpan;-><init>()V

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 14

    const-class v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$k;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$k;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v4, v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$k;->a:I

    iget-boolean v5, v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$k;->b:Z

    const/16 v6, 0x21

    const/4 v7, 0x0

    if-nez v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Lcom/onegravity/rteditor/utils/Helper;->getLeadingMarging()I

    move-result v10

    instance-of v5, v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$s;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/onegravity/rteditor/spans/BulletSpan;

    if-ne v1, v2, :cond_2

    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v7

    :goto_0
    invoke-direct {v5, v10, v8, v7, v7}, Lcom/onegravity/rteditor/spans/BulletSpan;-><init>(IZZZ)V

    goto :goto_2

    :cond_3
    new-instance v5, Lcom/onegravity/rteditor/spans/NumberSpan;

    const/4 v9, 0x1

    if-ne v1, v2, :cond_4

    move v11, v3

    goto :goto_1

    :cond_4
    move v11, v7

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/onegravity/rteditor/spans/NumberSpan;-><init>(IIZZZ)V

    :goto_2
    iget-object v8, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v5, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    if-lez v4, :cond_7

    invoke-static {}, Lcom/onegravity/rteditor/utils/Helper;->getLeadingMarging()I

    move-result v5

    mul-int/2addr v4, v5

    new-instance v5, Lcom/onegravity/rteditor/spans/IndentationSpan;

    if-ne v1, v2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v7

    :goto_3
    invoke-direct {v5, v4, v3, v7, v7}, Lcom/onegravity/rteditor/spans/IndentationSpan;-><init>(IZZZ)V

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v5, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final i(Z)V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/ParagraphType;->isNumbering()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_OL:Lcom/onegravity/rteditor/converter/ParagraphType;

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/onegravity/rteditor/converter/ParagraphType;->isBullet()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

    if-ne v1, v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getRelativeIndent()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->setRelativeIndent(I)V

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->setAbsoluteIndent(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->m(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->e()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->q()V

    :goto_0
    return-void
.end method

.method public final k(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;)Landroid/text/Layout$Alignment;
    .locals 2

    iget-object p0, p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x514d33ab

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x32a007

    if-eq p1, v0, :cond_1

    const v0, 0x677c21c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "right"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_1
    const-string p1, "left"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string p1, "center"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v1, :cond_4

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_4
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_5
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final m(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    array-length p1, p0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final n(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    array-length p1, p0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final o()V
    .locals 1

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 4

    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->o()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->j()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->e()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i(Z)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "ol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->i(Z)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-class v3, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$d;

    if-eqz v0, :cond_6

    new-instance p1, Lcom/onegravity/rteditor/spans/BoldSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/BoldSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/onegravity/rteditor/spans/BoldSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/BoldSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-class v3, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;

    if-eqz v0, :cond_8

    new-instance p1, Lcom/onegravity/rteditor/spans/ItalicSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/ItalicSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/onegravity/rteditor/spans/ItalicSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/ItalicSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/onegravity/rteditor/spans/ItalicSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/ItalicSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lcom/onegravity/rteditor/spans/ItalicSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/ItalicSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-class v3, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$o;

    if-eqz v0, :cond_c

    new-instance p1, Lcom/onegravity/rteditor/spans/StrikethroughSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lcom/onegravity/rteditor/spans/StrikethroughSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0x20

    invoke-static {p1}, Lcom/onegravity/rteditor/utils/Helper;->convertPxToSp(I)I

    move-result p1

    new-instance v0, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;-><init>(I)V

    const-class p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$b;

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0xe

    invoke-static {p1}, Lcom/onegravity/rteditor/utils/Helper;->convertPxToSp(I)I

    move-result p1

    new-instance v0, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;-><init>(I)V

    const-class p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$n;

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->f()V

    goto/16 :goto_0

    :cond_10
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->f()V

    goto/16 :goto_0

    :cond_11
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->q()V

    new-instance p1, Landroid/text/style/QuoteSpan;

    invoke-direct {p1}, Landroid/text/style/QuoteSpan;-><init>()V

    const-class v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$c;

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->d()V

    goto/16 :goto_0

    :cond_13
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p1, Lcom/onegravity/rteditor/spans/UnderlineSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/UnderlineSpan;-><init>()V

    const-class v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$t;

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_14
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p1, Lcom/onegravity/rteditor/spans/SuperscriptSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/SuperscriptSpan;-><init>()V

    const-class v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$q;

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_15
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance p1, Lcom/onegravity/rteditor/spans/SubscriptSpan;

    invoke-direct {p1}, Lcom/onegravity/rteditor/spans/SubscriptSpan;-><init>()V

    const-class v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$p;

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_17

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v3, 0x68

    if-ne v0, v3, :cond_17

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-lt v0, v3, :cond_17

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x36

    if-gt v0, v2, :cond_17

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->q()V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->g()V

    goto :goto_0

    :cond_17
    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->l:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iput-boolean v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->j:Z

    :cond_18
    :goto_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->C(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->x(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->B(ZLorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "ol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->B(ZLorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->A(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$d;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$d;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$d;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$d;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$j;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$o;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$o;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$o;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$o;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$b;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$b;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$n;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$n;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->y(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->y(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->q()V

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$c;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$c;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$l;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$l;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->v(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$t;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$t;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$q;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$q;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$p;

    invoke-direct {p1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$p;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto :goto_0

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_18

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_18

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x36

    if-gt v0, v3, :cond_18

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->q()V

    new-instance p2, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$g;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sub-int/2addr p1, v1

    invoke-direct {p2, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$g;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->u(Ljava/lang/Object;)V

    goto :goto_0

    :cond_18
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->z(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_19
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->D(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_1a
    const-string v0, "embed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->w(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_1b
    sget-object p2, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->l:Ljava/util/Set;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iput-boolean v2, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->j:Z

    :cond_1c
    :goto_0
    return-void
.end method

.method public final s(Lorg/xml/sax/Attributes;)Z
    .locals 0

    const-string p0, "style"

    invoke-interface {p1, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "list-style-type:none"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p2, p4}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->r(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    :cond_1
    return-void
.end method

.method public final u(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final v(Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, ""

    const-string v1, "href"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$h;

    invoke-direct {v1, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$h;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x11

    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final w(Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method public final x(Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "align"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;

    invoke-direct {v1, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x11

    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final y(Lorg/xml/sax/Attributes;)V
    .locals 13

    const-string v0, "style"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v10, v0, v6

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "font-size"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    :try_start_0
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    const-string v11, "color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    const-string v11, "background-color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const-string v11, "font-family"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v7, "font-family:"

    invoke-virtual {v10, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :catch_0
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "face"

    invoke-interface {p1, v1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    const-string v0, "data-size"

    invoke-interface {p1, v1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_8

    const-string v0, "px"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    :goto_2
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    new-instance v1, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    invoke-direct {v1, v3}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;-><init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V

    invoke-virtual {v1, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->i(I)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->g(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->f(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->a(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    move-result-object p1

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final z(Lorg/xml/sax/Attributes;)V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-string v1, ""

    const-string v2, "src"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->f:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {v1, p1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createImage(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTImage;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/onegravity/rteditor/api/media/RTMedia;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onegravity/rteditor/api/format/RTFormat;->SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    invoke-interface {p1, v1}, Lcom/onegravity/rteditor/api/media/RTMedia;->getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    const-string v2, "\ufffc"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/onegravity/rteditor/spans/ImageSpan;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/onegravity/rteditor/spans/ImageSpan;-><init>(Lcom/onegravity/rteditor/api/media/RTImage;Z)V

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;->h:Landroid/text/SpannableStringBuilder;

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x21

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method
