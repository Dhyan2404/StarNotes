.class public final Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getFontFamilyList(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOriginCssStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setFontEnhancement(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;I[I)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "colorTable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "style"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static setTextGamma(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;F)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
