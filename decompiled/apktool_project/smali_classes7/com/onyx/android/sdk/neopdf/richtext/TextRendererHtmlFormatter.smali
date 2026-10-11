.class public final Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextRendererHtmlFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRendererHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,415:1\n37#2,2:416\n37#2,2:419\n37#2,2:422\n13309#3:418\n13310#3:421\n*S KotlinDebug\n*F\n+ 1 TextRendererHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter\n*L\n209#1:416,2\n215#1:419,2\n398#1:422,2\n214#1:418\n214#1:421\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002J\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J&\u0010\u0014\u001a\u00020\u00132\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u0015\u001a\u00020\u00132\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u0018\u001a\u00020\u00132\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u0019\u001a\u00020\u00132\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u001a\u001a\u00020\u00132\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0002H\u0002J\u0018\u0010!\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010\"\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010#\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010$\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010%\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010\'\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002R\u001c\u0010*\u001a\n (*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010)R\u0016\u0010+\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010)R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010)\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;",
        "",
        "",
        "html",
        "Lcom/onyx/android/sdk/neopdf/richtext/Body;",
        "parseHtml",
        "color",
        "",
        "parseRGBColor",
        "red",
        "green",
        "blue",
        "",
        "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
        "spans",
        "Lorg/w3c/dom/Element;",
        "element",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "style",
        "",
        "j",
        "i",
        "Lorg/w3c/dom/Node;",
        "node",
        "m",
        "k",
        "l",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;",
        "builder",
        "styleAttribute",
        "a",
        "attribute",
        "",
        "e",
        "b",
        "g",
        "f",
        "h",
        "c",
        "d",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "TAG",
        "HEX_COLOR_START",
        "RGB_COLOR_START",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextRendererHtmlFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRendererHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,415:1\n37#2,2:416\n37#2,2:419\n37#2,2:422\n13309#3:418\n13310#3:421\n*S KotlinDebug\n*F\n+ 1 TextRendererHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter\n*L\n209#1:416,2\n215#1:419,2\n398#1:422,2\n214#1:418\n214#1:421\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    const-class v0, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    const-string v0, "#"

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->b:Ljava/lang/String;

    const-string v0, "RGB"

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 11

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p0, ";"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    array-length p2, p0

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_b

    aget-object v3, p0, v1

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, ":"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid style attribute: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    aget-object v3, v4, v0

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v4, v2

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "font-size"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->b(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    return v0

    :cond_3
    const-string v5, "color"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->g(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    :cond_4
    const-string v5, "text-align"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->f(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    return v0

    :cond_5
    const-string v5, "text-decoration-line"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->h(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    return v0

    :cond_6
    const-string v5, "text-decoration"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->h(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    return v0

    :cond_7
    const-string v5, "font-style"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->c(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    :cond_8
    const-string v5, "font-weight"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->d(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    return v0

    :cond_9
    const-string v5, "line-height"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;

    invoke-virtual {v3, p1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->e(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_b
    return v2
.end method

.method public final b(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 5

    const-string p0, "px"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    const-string v3, "pt"

    if-nez p0, :cond_0

    invoke-static {p2, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid font-size attribute value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p2, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontSize(F)V

    return v1

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2, p0}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p2, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public final c(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "italic"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;->ITALIC:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;)V

    return v0

    :cond_0
    const-string p0, "normal"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid font-style attribute value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final d(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "bold"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;->BOLD:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontWeight(Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;)V

    return v0

    :cond_0
    const-string p0, "normal"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid fontWeight attribute value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final e(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setLineHeight(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x514d33ab

    if-eq p0, v0, :cond_4

    const v0, 0x32a007

    if-eq p0, v0, :cond_2

    const v0, 0x677c21c

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "right"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;->RIGHT:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setTextAlign(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;)V

    goto :goto_1

    :cond_2
    const-string p0, "left"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;->LEFT:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setTextAlign(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;)V

    goto :goto_1

    :cond_4
    const-string p0, "center"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid text-align attribute value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;->CENTER:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setTextAlign(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "rgb("

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->b:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->parseRGBColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setColor(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid color attribute value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final h(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "underline"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->UNDERLINE:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setTextDecoration(Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;)V

    return v0

    :cond_0
    const-string p0, "normal"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid text-decoration-line attribute value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final i(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
            ">;",
            "Lorg/w3c/dom/Element;",
            "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
            ")Z"
        }
    .end annotation

    invoke-static {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleKt;->toBuilder(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    move-result-object p3

    const-string v0, "style"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAttribute(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object p3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    const-string v5, "item(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4, p3}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->m(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final j(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
            ">;",
            "Lorg/w3c/dom/Element;",
            "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.w3c.dom.Element"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "div"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    const-string p2, "editor div element not found!"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-static {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleKt;->toBuilder(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    move-result-object p3

    const-string v0, "style"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getAttribute(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object p2

    invoke-virtual {p0, p1, v4, p2}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->i(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result p0

    return p0
.end method

.method public final k(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
            ">;",
            "Lorg/w3c/dom/Node;",
            "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
            ")Z"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v11}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->copy$default(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;ILjava/lang/Object;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->setStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getTextContent(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/Span;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final l(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
            ">;",
            "Lorg/w3c/dom/Element;",
            "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    const-string p2, "Empty tag name!"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleKt;->toBuilder(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x352a8969    # -6994763.5f

    const/4 v4, 0x1

    if-eq v1, v3, :cond_c

    const/16 v3, 0x62

    if-eq v1, v3, :cond_b

    const/16 v3, 0x69

    if-eq v1, v3, :cond_9

    const/16 v3, 0x70

    if-eq v1, v3, :cond_7

    const/16 v3, 0x75

    if-eq v1, v3, :cond_5

    const/16 v3, 0xc50

    if-eq v1, v3, :cond_4

    const/16 v3, 0xca8

    if-eq v1, v3, :cond_3

    const v3, 0x18491

    if-eq v1, v3, :cond_2

    const v3, 0x35f74a

    if-eq v1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "span"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_2
    const-string v1, "div"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_3
    const-string v1, "em"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_4
    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_5
    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->UNDERLINE:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setTextDecoration(Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;)V

    goto :goto_1

    :cond_7
    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neopdf/richtext/Span;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/richtext/Span;->appendTextLineBreak()V

    goto :goto_1

    :cond_9
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;->ITALIC:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;)V

    goto :goto_1

    :cond_b
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_c
    const-string v1, "strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_d
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;->BOLD:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontWeight(Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;)V

    :cond_e
    :goto_1
    const-string v0, "style"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_f

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAttribute(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return v2

    :cond_f
    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object p3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_11

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v5, "item(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, p3}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->m(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v4
.end method

.method public final m(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
            ">;",
            "Lorg/w3c/dom/Node;",
            "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p0 .. p3}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->k(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "null cannot be cast to non-null type org.w3c.dom.Element"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/w3c/dom/Element;

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    invoke-virtual {v2, v0, v1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->l(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result v0

    return v0

    :cond_1
    move-object/from16 v4, p3

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_2

    const-string v2, "nbsp"

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;

    invoke-direct {v1}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1ff

    const/4 v15, 0x0

    move-object/from16 v4, p3

    invoke-static/range {v4 .. v15}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->copy$default(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;ILjava/lang/Object;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->setStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->setText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/richtext/SpanBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/Span;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid node type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public final parseHtml(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/richtext/Body;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v3, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    const-string v2, "parse html failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "body"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    const-string v2, "body element not found!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v2, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "div"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid main div element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance v1, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;

    invoke-direct {v1}, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;

    invoke-direct {v2}, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;-><init>()V

    new-instance v3, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    invoke-direct {v3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4, p1, v3}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->j(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;->setSpans(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->setParagraph(Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/Body;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->a:Ljava/lang/String;

    const-string v2, "main div element not found!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final parseRGBColor(III)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p1, 0x10

    const/high16 p1, -0x1000000

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public final parseRGBColor(Ljava/lang/String;)I
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "color"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    const/high16 v2, -0x1000000

    const-class v8, Landroidx/core/graphics/ColorUtils;

    if-eqz v1, :cond_1

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "empty color"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 4
    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x2

    if-eqz v1, :cond_3

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->c:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "rgb"

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 6
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    .line 7
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ")"

    const-string v12, ""

    .line 8
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v0, ","

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object v0, v10

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-array v1, v7, [Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, [Ljava/lang/String;

    .line 12
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 13
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_2
    aget-object v1, v0, v7

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 15
    aget-object v2, v0, v6

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 16
    aget-object v0, v0, v9

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v3, p0

    .line 17
    invoke-virtual {v3, v1, v2, v0}, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->parseRGBColor(III)I

    move-result v0

    return v0

    .line 18
    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v7, v9, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_4
    return v2
.end method
