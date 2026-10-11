.class public final synthetic Lcom/sunia/HTREnginev2/xzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzh;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xzh;->f:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzh;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzh;->f:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity$loadWebpage$callback$1;->a(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;)V

    return-void
.end method
