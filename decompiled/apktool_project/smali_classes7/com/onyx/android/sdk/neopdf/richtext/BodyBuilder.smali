.class public final Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;",
        "",
        "Lcom/onyx/android/sdk/neopdf/richtext/Body;",
        "build",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "a",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "getStyle",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "setStyle",
        "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V",
        "style",
        "Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;",
        "b",
        "Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;",
        "getParagraph",
        "()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;",
        "setParagraph",
        "(Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;)V",
        "paragraph",
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


# instance fields
.field public a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/onyx/android/sdk/neopdf/richtext/Body;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/Body;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->b:Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/Body;-><init>(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;)V

    return-object v0
.end method

.method public final getParagraph()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->b:Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    return-object p0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    return-object p0
.end method

.method public final setParagraph(Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->b:Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    return-void
.end method
