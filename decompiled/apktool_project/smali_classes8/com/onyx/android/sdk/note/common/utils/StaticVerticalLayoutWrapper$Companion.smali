.class public final Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;",
        "source",
        "",
        "paint",
        "Landroid/text/TextPaint;",
        "width",
        "",
        "align",
        "Landroid/text/Layout$Alignment;",
        "spacingmult",
        "spacingadd",
        "includepad",
        "",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/Layout$Alignment;FFZ)Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticVerticalLayoutWrapper;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->setSource(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->setPaint(Landroid/text/TextPaint;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->setWidth(F)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->setAlign(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->setSpacingmult(F)V

    invoke-virtual {p0, p6}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->setSpacingadd(F)V

    invoke-virtual {p0, p7}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->setIncludepad(Z)V

    return-object p0
.end method
