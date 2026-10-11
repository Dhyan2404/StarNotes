.class public final synthetic Lcom/sunia/HTREnginev2/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zzh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/zzh;->f:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/zzh;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zzh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/zzh;->f:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zzh;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity$loadWebpage$callback$1;->g(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;ZLjava/lang/String;)V

    return-void
.end method
