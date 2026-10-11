.class public final Lcom/onyx/android/sdk/ui/CustomLengthFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomLengthFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomLengthFilter.kt\ncom/onyx/android/sdk/ui/CustomLengthFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,50:1\n1183#2,3:51\n*S KotlinDebug\n*F\n+ 1 CustomLengthFilter.kt\ncom/onyx/android/sdk/ui/CustomLengthFilter\n*L\n38#1:51,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J>\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u001c\u0010\r\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\u0004H\u0002R\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/CustomLengthFilter;",
        "Landroid/text/InputFilter;",
        "",
        "source",
        "",
        "start",
        "end",
        "Landroid/text/Spanned;",
        "dest",
        "dstart",
        "dend",
        "filter",
        "keep",
        "a",
        "I",
        "getMax",
        "()I",
        "setMax",
        "(I)V",
        "max",
        "<init>",
        "sdk-uicommon_overseasRelease"
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
        "SMAP\nCustomLengthFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomLengthFilter.kt\ncom/onyx/android/sdk/ui/CustomLengthFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,50:1\n1183#2,3:51\n*S KotlinDebug\n*F\n+ 1 CustomLengthFilter.kt\ncom/onyx/android/sdk/ui/CustomLengthFilter\n*L\n38#1:51,3\n*E\n"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/ui/CustomLengthFilter;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->toRuleLength(Ljava/lang/CharSequence;)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->getRuleLength(C)I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p2, :cond_2

    if-nez v1, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/Spanned;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    :cond_0
    invoke-static {p4}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->toRuleLength(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-static {p1}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->toRuleLength(Ljava/lang/CharSequence;)I

    move-result p4

    iget p5, p0, Lcom/onyx/android/sdk/ui/CustomLengthFilter;->a:I

    sub-int/2addr p5, p2

    if-gtz p5, :cond_1

    const-string p3, ""

    goto :goto_0

    :cond_1
    if-lt p5, p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p5}, Lcom/onyx/android/sdk/ui/CustomLengthFilter;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method public final getMax()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/CustomLengthFilter;->a:I

    return p0
.end method

.method public final setMax(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/CustomLengthFilter;->a:I

    return-void
.end method
