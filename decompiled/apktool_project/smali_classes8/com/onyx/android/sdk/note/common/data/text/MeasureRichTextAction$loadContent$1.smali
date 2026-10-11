.class public final Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->n(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;",
        "onComplete",
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


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

.field public final synthetic b:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;->a:Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;->a:Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->access$getTextShape$p(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/StringKt;->limitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction$loadContent$1;->a:Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method
