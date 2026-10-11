.class public final Lcom/onyx/galaxy/note/utils/RichTextViewEx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRichTextViewEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RichTextViewEx.kt\ncom/onyx/galaxy/note/utils/RichTextViewEx\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,18:1\n117#2:19\n125#2,17:20\n*S KotlinDebug\n*F\n+ 1 RichTextViewEx.kt\ncom/onyx/galaxy/note/utils/RichTextViewEx\n*L\n14#1:19\n15#1:20,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/RichTextViewEx;",
        "",
        "()V",
        "setAdaptiveTextColor",
        "Lcom/onyx/galaxy/note/ui/view/RichTextView;",
        "colorResId",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRichTextViewEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RichTextViewEx.kt\ncom/onyx/galaxy/note/utils/RichTextViewEx\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,18:1\n117#2:19\n125#2,17:20\n*S KotlinDebug\n*F\n+ 1 RichTextViewEx.kt\ncom/onyx/galaxy/note/utils/RichTextViewEx\n*L\n14#1:19\n15#1:20,17\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/RichTextViewEx;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/RichTextViewEx;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/RichTextViewEx;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/RichTextViewEx;->INSTANCE:Lcom/onyx/galaxy/note/utils/RichTextViewEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILcom/onyx/galaxy/note/ui/view/RichTextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/utils/RichTextViewEx;->b(ILcom/onyx/galaxy/note/ui/view/RichTextView;)V

    return-void
.end method

.method public static final b(ILcom/onyx/galaxy/note/ui/view/RichTextView;)V
    .locals 9

    const-string v0, "$this_setAdaptiveTextColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    const/16 v1, 0xa

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rgba("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "window.setTextColor"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method


# virtual methods
.method public final setAdaptiveTextColor(Lcom/onyx/galaxy/note/ui/view/RichTextView;I)Lcom/onyx/galaxy/note/ui/view/RichTextView;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/ui/view/RichTextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/trl;

    invoke-direct {p0, p2, p1}, Lcom/sunia/HTREnginev2/trl;-><init>(ILcom/onyx/galaxy/note/ui/view/RichTextView;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/ui/view/RichTextView;->runAfterLoaded(Ljava/lang/Runnable;)Lcom/onyx/galaxy/note/ui/view/RichTextView;

    move-result-object p0

    return-object p0
.end method
