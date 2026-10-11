.class public final Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeEditorHtmlFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeEditorHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n766#2:214\n857#2,2:215\n1855#2:217\n1856#2:220\n37#3,2:218\n1#4:221\n*S KotlinDebug\n*F\n+ 1 NativeEditorHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter\n*L\n145#1:214\n145#1:215,2\n150#1:217\n150#1:220\n151#1:218,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0004H\u0002J&\u0010\u0014\u001a\u00020\u00132\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J&\u0010\u0015\u001a\u00020\u00132\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e2\u0006\u0010\t\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J&\u0010\u0016\u001a\u00020\u00132\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0002H\u0002J\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0002H\u0002R\u001c\u0010!\u001a\n \u001f*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010 R\u0014\u0010\"\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010 R\u0014\u0010#\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010 R\u0014\u0010$\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010 R\u0014\u0010%\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010 \u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;",
        "",
        "",
        "html",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "baseStyle",
        "Lcom/onyx/android/sdk/neopdf/richtext/Body;",
        "parseHtml",
        "Lorg/w3c/dom/Element;",
        "element",
        "currentStyle",
        "",
        "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
        "e",
        "",
        "spans",
        "Lorg/w3c/dom/Node;",
        "node",
        "style",
        "",
        "h",
        "f",
        "g",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;",
        "builder",
        "styleAttribute",
        "a",
        "attribute",
        "b",
        "d",
        "c",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "TAG",
        "STR_NBSP",
        "HEX_COLOR_START",
        "HTML_TAG_VERSION",
        "HTML_ATTR_ALIGN",
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
        "SMAP\nNativeEditorHtmlFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeEditorHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n766#2:214\n857#2,2:215\n1855#2:217\n1856#2:220\n37#3,2:218\n1#4:221\n*S KotlinDebug\n*F\n+ 1 NativeEditorHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter\n*L\n145#1:214\n145#1:215,2\n150#1:217\n150#1:220\n151#1:218,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "nbsp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "#"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "align"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;

    const-class v0, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 9

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

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style attributes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, ":"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style attribute: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    aget-object p2, v0, v1

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "font-size"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;

    invoke-virtual {v3, p1, v0}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->b(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    const-string v3, "color"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;

    invoke-virtual {v3, p1, v0}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->d(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    const-string v3, "align"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->INSTANCE:Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;

    invoke-virtual {p2, p1, v0}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->c(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_7
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

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

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

    sget-object p2, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public final c(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
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

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

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

.method public final d(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x2

    const/4 v0, 0x0

    const-string v1, "#"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, p0, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ColorKt;->parseColorSafety(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x1000000

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setColor(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid color attribute value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final e(Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/richtext/Span;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "item(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3, p2}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->h(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
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

.method public final g(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
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

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    const-string p2, "Empty tag name!"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleKt;->toBuilder(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object v1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "div"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "em"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->UNDERLINE:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setTextDecoration(Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;)V

    goto :goto_0

    :sswitch_6
    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neopdf/richtext/Span;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/richtext/Span;->appendTextLineBreak()V

    goto :goto_0

    :sswitch_7
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;->ITALIC:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontStyle(Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;)V

    goto :goto_0

    :sswitch_8
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :sswitch_9
    const-string v1, "strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;->BOLD:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->setFontWeight(Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;)V

    :cond_6
    :goto_0
    const-string v0, "align"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "getAttribute(...)"

    if-eqz v1, :cond_7

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->c(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    :cond_7
    const-string v0, "style"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_8

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object p3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_a

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    const-string v5, "item(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4, p3}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->h(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

    move-result v4

    if-nez v4, :cond_9

    return v2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v3

    :goto_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

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

    :sswitch_data_0
    .sparse-switch
        -0x352a8969 -> :sswitch_9
        0x62 -> :sswitch_8
        0x69 -> :sswitch_7
        0x70 -> :sswitch_6
        0x75 -> :sswitch_5
        0xc50 -> :sswitch_4
        0xca8 -> :sswitch_3
        0x18491 -> :sswitch_2
        0x300c4f -> :sswitch_1
        0x14f51cd8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z
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

    invoke-virtual/range {p0 .. p3}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->f(Ljava/util/List;Lorg/w3c/dom/Node;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

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

    invoke-virtual {v2, v0, v1, v4}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->g(Ljava/util/List;Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Z

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

    sget-object v2, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

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

.method public final parseHtml(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Lcom/onyx/android/sdk/neopdf/richtext/Body;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    const-string p2, "parse html failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "body"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    const-string p2, "body element not found!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "div"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p2, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid main div element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance v2, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;

    invoke-direct {v2}, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;-><init>()V

    new-instance v4, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;

    invoke-direct {v4}, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->e(Lorg/w3c/dom/Element;Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;->setSpans(Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neopdf/richtext/ParagraphBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->setParagraph(Lcom/onyx/android/sdk/neopdf/richtext/Paragraph;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/richtext/BodyBuilder;->build()Lcom/onyx/android/sdk/neopdf/richtext/Body;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;->a:Ljava/lang/String;

    const-string p2, "main div element not found!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
