.class public final synthetic Lcom/sunia/HTREnginev2/qtj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qtj;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qtj;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
