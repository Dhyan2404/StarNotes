.class public final synthetic Lcom/sunia/HTREnginev2/szh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

.field public final synthetic f:Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;

.field public final synthetic g:Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/szh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/szh;->f:Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/szh;->g:Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/szh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/szh;->f:Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/szh;->g:Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;->G(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;Lcom/onyx/galaxy/note/ui/view/WebViewLoadingStatus;)V

    return-void
.end method
