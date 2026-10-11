.class public final Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toBuilder",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "sdk-neopdf_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toBuilder(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->fromRichTextStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    move-result-object p0

    return-object p0
.end method
