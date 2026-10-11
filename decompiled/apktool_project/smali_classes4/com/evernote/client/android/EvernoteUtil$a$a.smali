.class public Lcom/evernote/client/android/EvernoteUtil$a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/EvernoteUtil$a;->a(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/EvernoteUtil$a;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/EvernoteUtil$a;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteUtil$a$a;->e:Lcom/evernote/client/android/EvernoteUtil$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteUtil$a$a;->e:Lcom/evernote/client/android/EvernoteUtil$a;

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteUtil$a;->a:Landroid/webkit/CookieManager;

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method
