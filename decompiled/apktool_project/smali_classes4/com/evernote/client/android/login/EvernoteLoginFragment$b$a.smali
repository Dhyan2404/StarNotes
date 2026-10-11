.class public Lcom/evernote/client/android/login/EvernoteLoginFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/login/EvernoteLoginFragment$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/login/EvernoteLoginFragment$b;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/login/EvernoteLoginFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment$b$a;->e:Lcom/evernote/client/android/login/EvernoteLoginFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment$b$a;->e:Lcom/evernote/client/android/login/EvernoteLoginFragment$b;

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginFragment$b;->f:Lcom/evernote/client/android/login/EvernoteLoginFragment;

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginFragment;->switchBootstrapProfile()V

    return-void
.end method
