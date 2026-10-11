.class public final Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010(\u001a\u00020\u0000H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000c\"\u0004\u0008\u001e\u0010\u000eR\u001a\u0010\u001f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;",
        "",
        "()V",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "endPosition",
        "",
        "getEndPosition",
        "()Ljava/lang/String;",
        "setEndPosition",
        "(Ljava/lang/String;)V",
        "note",
        "getNote",
        "setNote",
        "quote",
        "getQuote",
        "setQuote",
        "rectFList",
        "",
        "Landroid/graphics/RectF;",
        "getRectFList",
        "()Ljava/util/List;",
        "setRectFList",
        "(Ljava/util/List;)V",
        "startPosition",
        "getStartPosition",
        "setStartPosition",
        "style",
        "getStyle",
        "setStyle",
        "writingMode",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "getWritingMode",
        "()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "setWritingMode",
        "(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V",
        "clone",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HIGHLIGHT_STYLE_COVER:I = 0x4

.field public static final HIGHLIGHT_STYLE_DASH_UNDERLINE:I = 0x2

.field public static final HIGHLIGHT_STYLE_HIGHLIGHT:I = 0x0

.field public static final HIGHLIGHT_STYLE_NORMAL_DARKEN:I = 0x5

.field public static final HIGHLIGHT_STYLE_NOTHING:I = -0x1

.field public static final HIGHLIGHT_STYLE_STRIKE_OUT:I = 0x6

.field public static final HIGHLIGHT_STYLE_UNDERLINE:I = 0x1

.field public static final HIGHLIGHT_STYLE_WAVY_LINE:I = 0x3


# instance fields
.field private color:I

.field private endPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private note:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private quote:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rectFList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private style:I

.field private writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->rectFList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->quote:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->note:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->startPosition:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->endPosition:Ljava/lang/String;

    const/16 v0, -0x100

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->color:I

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->rectFList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean$clone$1$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean$clone$1$1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->rectFList:Ljava/util/List;

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    iput-object p0, v0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->clone()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->color:I

    return p0
.end method

.method public final getEndPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->endPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->note:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->quote:Ljava/lang/String;

    return-object p0
.end method

.method public final getRectFList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->rectFList:Ljava/util/List;

    return-object p0
.end method

.method public final getStartPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->startPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->style:I

    return p0
.end method

.method public final getWritingMode()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-object p0
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->color:I

    return-void
.end method

.method public final setEndPosition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->endPosition:Ljava/lang/String;

    return-void
.end method

.method public final setNote(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->note:Ljava/lang/String;

    return-void
.end method

.method public final setQuote(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->quote:Ljava/lang/String;

    return-void
.end method

.method public final setRectFList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->rectFList:Ljava/util/List;

    return-void
.end method

.method public final setStartPosition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->startPosition:Ljava/lang/String;

    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->style:I

    return-void
.end method

.method public final setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->writingMode:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-void
.end method
