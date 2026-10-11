.class public Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewFragment"
.end annotation


# static fields
.field public static final g1:Ljava/lang/String; = "IntentKey"


# instance fields
.field public c1:Landroid/webkit/WebView;

.field public d1:Z

.field public e1:Ljava/lang/String;

.field public f1:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment$a;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment$a;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;)V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->f1:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public static createInstance()Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;
    .locals 2

    new-instance v0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;

    invoke-direct {v0}, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-object v0
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->d1:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final k0()V
    .locals 2

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p1, Lcom/evernote/client/android/EvernoteOAuthActivity;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authorization_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->e1:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->k0()V

    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->f1:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->e1:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :goto_0
    iput-boolean p2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->d1:Z

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->k0()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->d1:Z

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;->c1:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
