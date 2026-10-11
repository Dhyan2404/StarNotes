.class public final Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;,
        Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u000eB\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0006\u0010\r\u001a\u00020\nJ\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002R\u0014\u0010\u0010\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000fR\u0011\u0010\u0019\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;",
        "",
        "",
        "fontSize",
        "setFontSize",
        "",
        "fontColor",
        "setFontColor",
        "textAlign",
        "setTextAlign",
        "",
        "text",
        "setText",
        "build",
        "a",
        "Ljava/lang/String;",
        "fontName",
        "b",
        "F",
        "c",
        "I",
        "d",
        "e",
        "getDefaultStyle",
        "()Ljava/lang/String;",
        "defaultStyle",
        "<init>",
        "()V",
        "Companion",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:F

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->Companion:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Helv"

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->a:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->b:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getFontColor$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->c:I

    return p0
.end method

.method public static final synthetic access$getFontName$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFontSize$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->b:F

    return p0
.end method

.method public static final synthetic access$getTextAlign$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->d:I

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    const-string v2, "&#"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "createProcessingInstruction(...)"

    const-string v1, "&"

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v3, "body"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "xmlns"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string v4, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v5, "xfa:APIVersion"

    const-string v6, "Acrobat:11.0.0"

    invoke-interface {v3, v4, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "xfa:spec"

    const-string v6, "2.0.2"

    invoke-interface {v3, v4, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-interface {v2, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v4, "p"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v5, "dir"

    const-string v6, "ltr"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-interface {v3, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v3, "span"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v5, "style"

    new-instance v6, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;

    invoke-direct {v6, p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;-><init>(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->e:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    const-string p0, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v2, p0, v1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p0, "javax.xml.transform.enable-output-escaping"

    invoke-interface {v2, p0, v1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->Companion:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2, p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;->access$writeXml(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public final getDefaultStyle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;-><init>(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setFontColor(I)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->c:I

    return-object p0
.end method

.method public final setFontSize(F)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->b:F

    return-object p0
.end method

.method public final setText(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setTextAlign(I)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->d:I

    return-object p0
.end method
