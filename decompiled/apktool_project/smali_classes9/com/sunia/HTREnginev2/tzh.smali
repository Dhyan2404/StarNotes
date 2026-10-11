.class public final synthetic Lcom/sunia/HTREnginev2/tzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tzh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tzh;->f:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tzh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tzh;->f:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity$loadWebpage$callback$1;->b(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V

    return-void
.end method
