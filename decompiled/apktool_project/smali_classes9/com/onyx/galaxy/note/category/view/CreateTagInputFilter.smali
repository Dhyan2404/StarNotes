.class public final Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateTagInputFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagInputFilter.kt\ncom/onyx/galaxy/note/category/view/CreateTagInputFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,48:1\n1174#2,2:49\n1174#2,2:51\n*S KotlinDebug\n*F\n+ 1 CreateTagInputFilter.kt\ncom/onyx/galaxy/note/category/view/CreateTagInputFilter\n*L\n31#1:49,2\n36#1:51,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J>\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;",
        "Landroid/text/InputFilter;",
        "()V",
        "filter",
        "",
        "source",
        "start",
        "",
        "end",
        "dest",
        "Landroid/text/Spanned;",
        "dstart",
        "dend",
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
        "SMAP\nCreateTagInputFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagInputFilter.kt\ncom/onyx/galaxy/note/category/view/CreateTagInputFilter\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,48:1\n1174#2,2:49\n1174#2,2:51\n*S KotlinDebug\n*F\n+ 1 CreateTagInputFilter.kt\ncom/onyx/galaxy/note/category/view/CreateTagInputFilter\n*L\n31#1:49,2\n36#1:51,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 p0, 0x2f

    const/4 p2, 0x0

    if-eqz p4, :cond_2

    move p3, p2

    move p5, p3

    :goto_0
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-ge p3, p6, :cond_3

    invoke-interface {p4, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    if-ne p6, p0, :cond_1

    add-int/lit8 p5, p5, 0x1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    move p5, p2

    :cond_3
    if-eqz p1, :cond_6

    move p3, p2

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ge p2, p4, :cond_5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-ne p4, p0, :cond_4

    add-int/lit8 p3, p3, 0x1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    move p2, p3

    :cond_6
    add-int/2addr p5, p2

    const/4 p0, 0x4

    if-le p5, p0, :cond_7

    const-string p0, ""

    return-object p0

    :cond_7
    return-object p1
.end method
