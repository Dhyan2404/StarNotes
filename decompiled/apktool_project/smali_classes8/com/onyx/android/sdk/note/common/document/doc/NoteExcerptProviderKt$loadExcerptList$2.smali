.class final Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt$loadExcerptList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt;->loadExcerptList(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "kotlin.jvm.PlatformType",
        "r",
        "invoke",
        "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt$loadExcerptList$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt$loadExcerptList$2;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt$loadExcerptList$2;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt$loadExcerptList$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt$loadExcerptList$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result v0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result p0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getOrderIndex()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getCreatedAt()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getCreatedAt()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt$loadExcerptList$2;->invoke(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
