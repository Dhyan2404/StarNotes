.class public Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment$a;->a:Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "en-oauth"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment$a;->a:Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {p1, p2}, Lcom/evernote/client/android/EvernoteOAuthActivity;->z(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment$a;->a:Lcom/evernote/client/android/EvernoteOAuthActivity$WebViewFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
