.class public final Lcom/onyx/android/sdk/ui/CharFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharFilter.kt\ncom/onyx/android/sdk/ui/CharFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,21:1\n1174#2,2:22\n*S KotlinDebug\n*F\n+ 1 CharFilter.kt\ncom/onyx/android/sdk/ui/CharFilter\n*L\n15#1:22,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001e\u0010\u0008\u001a\u00020\u00072\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u0005R\'\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0012\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/CharFilter;",
        "",
        "Lkotlin/Function1;",
        "",
        "",
        "Lcom/onyx/android/sdk/ui/Filter;",
        "filter",
        "Landroid/text/InputFilter;",
        "toInputFilter",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getBLANK_SPACE_FILTER",
        "()Lkotlin/jvm/functions/Function1;",
        "BLANK_SPACE_FILTER",
        "b",
        "Landroid/text/InputFilter;",
        "getBLANK_SPACE_INPUT_FILTER",
        "()Landroid/text/InputFilter;",
        "BLANK_SPACE_INPUT_FILTER",
        "<init>",
        "()V",
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
        "SMAP\nCharFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharFilter.kt\ncom/onyx/android/sdk/ui/CharFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,21:1\n1174#2,2:22\n*S KotlinDebug\n*F\n+ 1 CharFilter.kt\ncom/onyx/android/sdk/ui/CharFilter\n*L\n15#1:22,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/ui/CharFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Landroid/text/InputFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/CharFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ui/CharFilter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/ui/CharFilter;->INSTANCE:Lcom/onyx/android/sdk/ui/CharFilter;

    sget-object v1, Lcom/onyx/android/sdk/ui/CharFilter$BLANK_SPACE_FILTER$1;->INSTANCE:Lcom/onyx/android/sdk/ui/CharFilter$BLANK_SPACE_FILTER$1;

    sput-object v1, Lcom/onyx/android/sdk/ui/CharFilter;->a:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CharFilter;->toInputFilter(Lkotlin/jvm/functions/Function1;)Landroid/text/InputFilter;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/ui/CharFilter;->b:Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/onyx/android/sdk/ui/CharFilter;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const-string p2, "$filter"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final getBLANK_SPACE_FILTER()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/ui/CharFilter;->a:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getBLANK_SPACE_INPUT_FILTER()Landroid/text/InputFilter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/ui/CharFilter;->b:Landroid/text/InputFilter;

    return-object p0
.end method

.method public final toInputFilter(Lkotlin/jvm/functions/Function1;)Landroid/text/InputFilter;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/text/InputFilter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "filter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/vqd;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/vqd;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method
