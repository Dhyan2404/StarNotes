.class public final synthetic Lcom/sunia/HTREnginev2/kwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kwk;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kwk;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->l(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
