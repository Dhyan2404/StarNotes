.class public final Lcom/onyx/android/sdk/reader/api/ReaderView$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderView;
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
.method public static getPagination(Lcom/onyx/android/sdk/reader/api/ReaderView;)Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setupDisplayMetrics(Lcom/onyx/android/sdk/reader/api/ReaderView;Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "displayMetrics"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
