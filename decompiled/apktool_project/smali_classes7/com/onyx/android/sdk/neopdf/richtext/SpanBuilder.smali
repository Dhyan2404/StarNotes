.class public final Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;",
        "",
        "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
        "build",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "style",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "getStyle",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "setStyle",
        "(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V",
        "",
        "a",
        "Ljava/lang/String;",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "text",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public style:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/onyx/android/sdk/neopdf/richtext/Span;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/Span;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->getStyle()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/Span;-><init>(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->style:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "style"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->style:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->a:Ljava/lang/String;

    return-void
.end method
