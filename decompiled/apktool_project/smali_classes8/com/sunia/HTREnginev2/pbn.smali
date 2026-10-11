.class public final synthetic Lcom/sunia/HTREnginev2/pbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

.field public final synthetic f:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field public final synthetic g:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pbn;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pbn;->f:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/pbn;->g:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pbn;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pbn;->f:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pbn;->g:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->c(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    return-void
.end method
