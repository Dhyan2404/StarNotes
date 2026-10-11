.class public final synthetic Lcom/sunia/HTREnginev2/tgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tgg;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tgg;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tgg;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tgg;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
