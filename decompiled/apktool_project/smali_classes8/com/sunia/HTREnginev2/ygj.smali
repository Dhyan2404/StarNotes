.class public final synthetic Lcom/sunia/HTREnginev2/ygj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

.field public final synthetic f:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ygj;->e:Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ygj;->f:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ygj;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ygj;->e:Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ygj;->f:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ygj;->g:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;->l(Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/util/List;)V

    return-void
.end method
