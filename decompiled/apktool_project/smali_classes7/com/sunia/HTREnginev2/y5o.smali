.class public final synthetic Lcom/sunia/HTREnginev2/y5o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y5o;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y5o;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;->l(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavSearchFileListAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    return-void
.end method
