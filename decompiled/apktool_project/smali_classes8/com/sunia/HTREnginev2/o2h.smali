.class public final synthetic Lcom/sunia/HTREnginev2/o2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field public final synthetic b:Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o2h;->a:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/o2h;->b:Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o2h;->a:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o2h;->b:Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;->l(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/action/GetRichTextRunAction;Ljava/lang/String;)V

    return-void
.end method
