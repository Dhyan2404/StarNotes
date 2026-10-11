.class public final Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontSpec"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B-\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001f\u0010 B%\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u001f\u0010!B\u0011\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\rJ\u0013\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\rR\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
        "",
        "other",
        "",
        "equals",
        "",
        "hashCode",
        "",
        "a",
        "Ljava/lang/String;",
        "getFamily",
        "()Ljava/lang/String;",
        "setFamily",
        "(Ljava/lang/String;)V",
        "family",
        "b",
        "getFontWeight",
        "setFontWeight",
        "fontWeight",
        "c",
        "getFontStyle",
        "setFontStyle",
        "fontStyle",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;",
        "d",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;",
        "getOrigin",
        "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;",
        "setOrigin",
        "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V",
        "origin",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "sdk-readercore_overseasRelease"
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

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "family"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 11
    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;->USER:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "family"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;->USER:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "family"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->c:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;->USER:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    .line 6
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->a:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    move-object p2, v0

    :cond_2
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->b:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 8
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    move p1, v1

    :cond_4
    if-eqz p1, :cond_5

    move-object p3, v0

    :cond_5
    iput-object p3, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.reader.api.ReaderTextStyle.FontSpec"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    iget-object p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public final getFamily()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontStyle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontWeight()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrigin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setFamily(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->a:Ljava/lang/String;

    return-void
.end method

.method public final setFontStyle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->c:Ljava/lang/String;

    return-void
.end method

.method public final setFontWeight(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->b:Ljava/lang/String;

    return-void
.end method

.method public final setOrigin(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;->d:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Origin;

    return-void
.end method
