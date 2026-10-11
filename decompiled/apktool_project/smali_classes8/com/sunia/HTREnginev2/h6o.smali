.class public final synthetic Lcom/sunia/HTREnginev2/h6o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h6o;->e:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h6o;->e:Lio/reactivex/rxjava3/subjects/PublishSubject;

    check-cast p1, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor$a;->a(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    return-void
.end method
