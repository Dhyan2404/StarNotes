.class public final synthetic Lcom/sunia/HTREnginev2/rgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rgk;->e:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rgk;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/rgk;->g:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/rgk;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rgk;->e:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rgk;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rgk;->g:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rgk;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->a(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
