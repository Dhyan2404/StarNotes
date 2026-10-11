.class public final Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0011\u0010\u000f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "text",
        "Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;",
        "createFromFreeTextShape",
        "Lorg/w3c/dom/Document;",
        "doc",
        "Ljava/io/OutputStream;",
        "output",
        "",
        "a",
        "",
        "getOldRichTextDefaultStyle",
        "()Ljava/lang/String;",
        "oldRichTextDefaultStyle",
        "<init>",
        "()V",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$writeXml(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;->a(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
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

.method public final createFromFreeTextShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getFontSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->setFontSize(F)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getFontcolor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->setFontColor(I)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getTextAlign()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->setTextAlign(I)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->setText(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final getOldRichTextDefaultStyle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->setFontColor(I)Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->getDefaultStyle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
