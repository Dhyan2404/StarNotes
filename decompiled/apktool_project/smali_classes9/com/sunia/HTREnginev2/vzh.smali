.class public final synthetic Lcom/sunia/HTREnginev2/vzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vzh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vzh;->e:Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity$loadWebpage$callback$1;->d(Lcom/onyx/galaxy/note/usercenter/ui/HtmlWindowActivity;)V

    return-void
.end method
