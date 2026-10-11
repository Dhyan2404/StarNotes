.class public final Lcom/onyx/android/sdk/base/utils/ComparatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/utils/ComparatorUtils$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0006\u0010\u0003\u001a\u00020\u0002J\"\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0008\u001a\u00020\u0007J \u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J \u0010\u000c\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0016\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00102\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J$\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J \u0010\u0014\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J \u0010\u0016\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00152\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0018\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\tH\u0002J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\tH\u0002R\u001e\u0010 \u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/ComparatorUtils;",
        "",
        "",
        "updateCollator",
        "",
        "lhs",
        "rhs",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "ascOrder",
        "",
        "numberStrComparator",
        "stringComparator",
        "onyxStringComparator",
        "firstString",
        "secondString",
        "onyxStringComparatorAsc",
        "",
        "longComparator",
        "Ljava/util/Date;",
        "dateComparator",
        "integerComparator",
        "",
        "booleanComparator",
        "string",
        "start",
        "b",
        "end",
        "Ljava/math/BigDecimal;",
        "a",
        "Ljava/text/Collator;",
        "kotlin.jvm.PlatformType",
        "Ljava/text/Collator;",
        "collator",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Ljava/text/Collator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->a:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Ljava/math/BigDecimal;
    .locals 0

    new-instance p0, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p2, p0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public final booleanComparator(ZZLcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 2
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, -0x1

    if-nez p3, :cond_0

    move p3, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    goto :goto_2

    :cond_2
    if-ne p1, p2, :cond_3

    :goto_1
    move p0, v0

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    :goto_2
    move p0, v1

    :cond_4
    :goto_3
    return p0
.end method

.method public final dateComparator(Ljava/util/Date;Ljava/util/Date;Lcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 10
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide v5, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :cond_1
    move-wide v7, v0

    move-object v4, p0

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->longComparator(JJLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    return p0
.end method

.method public final integerComparator(IILcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 0
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    :goto_0
    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final longComparator(JJLcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 0
    .param p5    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p5, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p0, p0, p5

    :goto_0
    const/4 p5, 0x1

    if-ne p0, p5, :cond_1

    invoke-static {p3, p4, p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final numberStrComparator(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ascOrder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide v2, 0x7fffffffffffffffL

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v7, v4

    goto :goto_0

    :cond_0
    move-wide v7, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_1
    move-wide v9, v2

    move-object v6, p0

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->longComparator(JJLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    if-eqz p0, :cond_2

    return p0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    const/4 p3, 0x1

    if-ne p0, p3, :cond_4

    sget-object p0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_4
    sget-object p0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final onyxStringComparator(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    :goto_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->onyxStringComparatorAsc(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->onyxStringComparatorAsc(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    neg-int p0, p0

    :goto_1
    return p0
.end method

.method public final onyxStringComparatorAsc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "firstString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_6

    if-ge v4, v1, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v2

    :goto_1
    sget-object v11, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->a:Ljava/text/Collator;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v10, :cond_1

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    return v5

    :cond_2
    if-eq v7, v8, :cond_4

    if-eqz v7, :cond_3

    const/4 v9, -0x1

    :cond_3
    return v9

    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->b(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, p2, v4}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->b(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, p1, v3, v5}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->a(Ljava/lang/String;II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p0, p2, v4, v6}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->a(Ljava/lang/String;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-eqz v3, :cond_5

    return v3

    :cond_5
    move v3, v5

    move v4, v6

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v1

    return v0
.end method

.method public final stringComparator(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->onyxStringComparator(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    return p0
.end method

.method public final updateCollator()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    sput-object p0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->a:Ljava/text/Collator;

    return-void
.end method
