.class public final synthetic Lcom/sunia/HTREnginev2/i6j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;

.field public final synthetic f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i6j;->e:Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i6j;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i6j;->e:Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i6j;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->a(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method
