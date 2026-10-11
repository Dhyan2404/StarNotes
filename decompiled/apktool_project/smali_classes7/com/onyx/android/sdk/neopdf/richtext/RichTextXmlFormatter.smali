.class public final Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;",
        "",
        "Lcom/onyx/android/sdk/neopdf/richtext/Body;",
        "body",
        "",
        "formatRichTextString",
        "text",
        "a",
        "Lorg/w3c/dom/Document;",
        "doc",
        "Ljava/io/OutputStream;",
        "output",
        "",
        "b",
        "<init>",
        "()V",
        "StyleBuilder",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method public final b(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method public final formatRichTextString(Lcom/onyx/android/sdk/neopdf/richtext/Body;)Ljava/lang/String;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/neopdf/richtext/Body;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "style"

    const-string v1, "body"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v3, "xmlns"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    const-string v4, "http://www.w3.org/1999/xhtml"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string v3, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v4, "xfa:APIVersion"

    const-string v5, "Acrobat:11.0.0"

    invoke-interface {v1, v3, v4, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "xfa:spec"

    const-string v5, "2.0.2"

    invoke-interface {v1, v3, v4, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v3, "p"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "dir"

    const-string v5, "ltr"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-interface {v1, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/richtext/Body;->getParagraph()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;->getSpans()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/neopdf/richtext/Span;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neopdf/richtext/Span;->getStyle()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;-><init>(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v4, "createProcessingInstruction(...)"

    const-string v6, "&"

    if-ge v5, v1, :cond_1

    :try_start_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/neopdf/richtext/Span;

    const-string v8, "span"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    new-instance v9, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/neopdf/richtext/Span;->getStyle()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;-><init>(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter$StyleBuilder;->b()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/neopdf/richtext/Span;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    const-string v7, "javax.xml.transform.disable-output-escaping"

    invoke-interface {v2, v7, v6}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    check-cast v8, Lorg/w3c/dom/Node;

    invoke-interface {v3, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {v2, p1, v6}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;->b(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
